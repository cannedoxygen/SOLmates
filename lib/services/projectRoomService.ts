import { supabase } from '../supabase/client';
import { AnalyticsService } from './analyticsService';

export interface Project {
  id: string;
  match_id: string;
  name: string;
  description?: string;
  status: 'planning' | 'active' | 'completed' | 'on-hold';
  project_type: 'hackathon' | 'side-project' | 'startup' | 'open-source' | 'learning' | 'other';
  tech_stack: string[];
  github_url?: string;
  demo_url?: string;
  figma_url?: string;
  deadline?: string;
  created_by: string;
  created_at: string;
  updated_at: string;
  members?: ProjectMember[];
  tasks?: ProjectTask[];
}

export interface ProjectMember {
  id: string;
  project_id: string;
  user_id: string;
  role: 'owner' | 'collaborator' | 'viewer';
  joined_at: string;
  user?: {
    id: string;
    username: string;
    avatar_url?: string;
    twitter_avatar_url?: string;
  };
}

export interface ProjectTask {
  id: string;
  project_id: string;
  title: string;
  description?: string;
  status: 'todo' | 'in-progress' | 'review' | 'done';
  priority: 'low' | 'medium' | 'high' | 'urgent';
  assigned_to?: string;
  created_by: string;
  due_date?: string;
  completed_at?: string;
  created_at: string;
  updated_at: string;
  assigned_user?: {
    id: string;
    username: string;
    avatar_url?: string;
  };
}

export interface ProjectUpdate {
  id: string;
  project_id: string;
  user_id: string;
  update_type: 'task_created' | 'task_completed' | 'member_joined' | 'status_changed' | 'comment' | 'file_shared';
  title: string;
  description?: string;
  metadata?: Record<string, any>;
  created_at: string;
  user?: {
    username: string;
    avatar_url?: string;
  };
}

export class ProjectRoomService {
  /**
   * Get or create a project for a match
   */
  static async getOrCreateProjectForMatch(matchId: string, currentUserId: string): Promise<Project | null> {
    try {
      console.log('🚀 Getting or creating project for match:', matchId);

      // First check if a project already exists for this match
      const { data: existingProjects, error: fetchError } = await supabase
        .from('projects')
        .select(`
          *,
          members:project_members(
            *,
            user:user_id(id, username, avatar_url, twitter_avatar_url)
          )
        `)
        .eq('match_id', matchId);

      if (!fetchError && existingProjects && existingProjects.length > 0) {
        console.log('📁 Found existing project:', existingProjects[0].id);
        return existingProjects[0];
      }

      // No existing project, return null - user needs to create one
      console.log('📁 No existing project found for match');
      return null;
    } catch (error) {
      console.error('❌ Failed to get project for match:', error);
      return null;
    }
  }

  /**
   * Create a new project
   */
  static async createProject(
    matchId: string,
    name: string,
    description: string,
    projectType: Project['project_type'],
    techStack: string[],
    createdBy: string
  ): Promise<Project | null> {
    try {
      console.log('🆕 Creating new project:', name);

      // Create the project
      const { data: project, error: projectError } = await supabase
        .from('projects')
        .insert([{
          match_id: matchId,
          name,
          description,
          project_type: projectType,
          tech_stack: techStack,
          created_by: createdBy,
          status: 'planning'
        }])
        .select()
        .single();

      if (projectError) throw projectError;

      const projectData = Array.isArray(project) ? project[0] : project;

      // Add creator as owner
      await this.addProjectMember(projectData.id, createdBy, 'owner');

      // Get match details to add the other user
      const { data: matchData } = await supabase
        .from('matches')
        .select('user1_id, user2_id')
        .eq('id', matchId)
        .single();

      if (matchData) {
        const matchDataObj = Array.isArray(matchData) ? matchData[0] : matchData;
        const otherUserId = matchDataObj.user1_id === createdBy ? matchDataObj.user2_id : matchDataObj.user1_id;
        
        // Add the other user as collaborator
        await this.addProjectMember(projectData.id, otherUserId, 'collaborator');
      }

      // Track analytics
      AnalyticsService.trackEvent(createdBy, 'project_created', {
        project_id: projectData.id,
        project_type: projectType,
        match_id: matchId
      });

      console.log('✅ Project created successfully:', projectData.id);
      return projectData;
    } catch (error) {
      console.error('❌ Failed to create project:', error);
      return null;
    }
  }

  /**
   * Add a member to a project
   */
  static async addProjectMember(
    projectId: string,
    userId: string,
    role: ProjectMember['role'] = 'collaborator'
  ): Promise<boolean> {
    try {
      const { error } = await supabase
        .from('project_members')
        .insert([{
          project_id: projectId,
          user_id: userId,
          role
        }]);

      if (error) throw error;

      // Create update
      await this.createProjectUpdate(
        projectId,
        userId,
        'member_joined',
        `New ${role} joined the project`,
        null,
        { role }
      );

      return true;
    } catch (error) {
      console.error('❌ Failed to add project member:', error);
      return false;
    }
  }

  /**
   * Get project details with members and recent tasks
   */
  static async getProjectDetails(projectId: string): Promise<Project | null> {
    try {
      const { data: project, error } = await supabase
        .from('projects')
        .select(`
          *,
          members:project_members(
            *,
            user:user_id(id, username, avatar_url, twitter_avatar_url)
          ),
          tasks:project_tasks(
            *,
            assigned_user:assigned_to(id, username, avatar_url)
          )
        `)
        .eq('id', projectId)
        .single();

      if (error) throw error;

      const projectData = Array.isArray(project) ? project[0] : project;
      return projectData;
    } catch (error) {
      console.error('❌ Failed to get project details:', error);
      return null;
    }
  }

  /**
   * Create a new task
   */
  static async createTask(
    projectId: string,
    title: string,
    description: string,
    assignedTo: string | null,
    priority: ProjectTask['priority'],
    createdBy: string,
    dueDate?: string
  ): Promise<ProjectTask | null> {
    try {
      const { data: task, error } = await supabase
        .from('project_tasks')
        .insert([{
          project_id: projectId,
          title,
          description,
          assigned_to: assignedTo,
          priority,
          created_by: createdBy,
          due_date: dueDate,
          status: 'todo'
        }])
        .select(`
          *,
          assigned_user:assigned_to(id, username, avatar_url)
        `)
        .single();

      if (error) throw error;

      const taskData = Array.isArray(task) ? task[0] : task;

      // Create update
      await this.createProjectUpdate(
        projectId,
        createdBy,
        'task_created',
        `Created task: ${title}`,
        description,
        { task_id: taskData.id, priority }
      );

      // Track analytics
      AnalyticsService.trackEvent(createdBy, 'task_created', {
        project_id: projectId,
        task_id: taskData.id,
        priority
      });

      return taskData;
    } catch (error) {
      console.error('❌ Failed to create task:', error);
      return null;
    }
  }

  /**
   * Update task status
   */
  static async updateTaskStatus(
    taskId: string,
    status: ProjectTask['status'],
    userId: string
  ): Promise<boolean> {
    try {
      const updateData: any = { status, updated_at: new Date().toISOString() };
      
      if (status === 'done') {
        updateData.completed_at = new Date().toISOString();
      }

      const { data: task, error } = await supabase
        .from('project_tasks')
        .update(updateData)
        .eq('id', taskId)
        .select('project_id, title')
        .single();

      if (error) throw error;

      const taskData = Array.isArray(task) ? task[0] : task;

      // Create update if task completed
      if (status === 'done') {
        await this.createProjectUpdate(
          taskData.project_id,
          userId,
          'task_completed',
          `Completed task: ${taskData.title}`,
          null,
          { task_id: taskId }
        );
      }

      return true;
    } catch (error) {
      console.error('❌ Failed to update task status:', error);
      return false;
    }
  }

  /**
   * Get project updates (activity feed)
   */
  static async getProjectUpdates(projectId: string, limit = 20): Promise<ProjectUpdate[]> {
    try {
      const { data: updates, error } = await supabase
        .from('project_updates')
        .select(`
          *,
          user:user_id(username, avatar_url)
        `)
        .eq('project_id', projectId)
        .order('created_at', { ascending: false })
        .limit(limit);

      if (error) throw error;

      return updates || [];
    } catch (error) {
      console.error('❌ Failed to get project updates:', error);
      return [];
    }
  }

  /**
   * Create a project update
   */
  static async createProjectUpdate(
    projectId: string,
    userId: string,
    updateType: ProjectUpdate['update_type'],
    title: string,
    description?: string | null,
    metadata?: Record<string, any>
  ): Promise<boolean> {
    try {
      const { error } = await supabase
        .from('project_updates')
        .insert([{
          project_id: projectId,
          user_id: userId,
          update_type: updateType,
          title,
          description,
          metadata
        }]);

      if (error) throw error;
      return true;
    } catch (error) {
      console.error('❌ Failed to create project update:', error);
      return false;
    }
  }

  /**
   * Update project details
   */
  static async updateProject(
    projectId: string,
    updates: Partial<Pick<Project, 'name' | 'description' | 'status' | 'tech_stack' | 'github_url' | 'demo_url' | 'figma_url' | 'deadline'>>,
    userId: string
  ): Promise<boolean> {
    try {
      const { error } = await supabase
        .from('projects')
        .update({
          ...updates,
          updated_at: new Date().toISOString()
        })
        .eq('id', projectId);

      if (error) throw error;

      // Create update for status changes
      if (updates.status) {
        await this.createProjectUpdate(
          projectId,
          userId,
          'status_changed',
          `Project status changed to ${updates.status}`,
          null,
          { new_status: updates.status }
        );
      }

      return true;
    } catch (error) {
      console.error('❌ Failed to update project:', error);
      return false;
    }
  }

  /**
   * Subscribe to project updates for real-time collaboration
   */
  static subscribeToProjectUpdates(
    projectId: string,
    onUpdate: (update: ProjectUpdate) => void
  ) {
    const subscription = supabase
      .channel(`project:${projectId}`)
      .on(
        'postgres_changes',
        {
          event: 'INSERT',
          schema: 'public',
          table: 'project_updates',
          filter: `project_id=eq.${projectId}`,
        },
        (payload) => {
          console.log('📡 New project update:', payload.new);
          onUpdate(payload.new as ProjectUpdate);
        }
      )
      .subscribe();

    return subscription;
  }
}