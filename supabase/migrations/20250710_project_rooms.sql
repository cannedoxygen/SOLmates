-- Project Rooms System
-- Enables matched users to collaborate on projects together

-- Projects table - stores collaborative projects
CREATE TABLE IF NOT EXISTS projects (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  match_id UUID REFERENCES matches(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  description TEXT,
  status TEXT CHECK (status IN ('planning', 'active', 'completed', 'on-hold')) DEFAULT 'planning',
  project_type TEXT CHECK (project_type IN ('hackathon', 'side-project', 'startup', 'open-source', 'learning', 'other')) DEFAULT 'side-project',
  tech_stack TEXT[],
  github_url TEXT,
  demo_url TEXT,
  figma_url TEXT,
  deadline TIMESTAMP WITH TIME ZONE,
  created_by UUID REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Project members table - tracks who's working on each project
CREATE TABLE IF NOT EXISTS project_members (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  role TEXT CHECK (role IN ('owner', 'collaborator', 'viewer')) DEFAULT 'collaborator',
  joined_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE(project_id, user_id)
);

-- Project tasks table - task management within projects
CREATE TABLE IF NOT EXISTS project_tasks (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  status TEXT CHECK (status IN ('todo', 'in-progress', 'review', 'done')) DEFAULT 'todo',
  priority TEXT CHECK (priority IN ('low', 'medium', 'high', 'urgent')) DEFAULT 'medium',
  assigned_to UUID REFERENCES users(id) ON DELETE SET NULL,
  created_by UUID REFERENCES users(id) ON DELETE CASCADE,
  due_date TIMESTAMP WITH TIME ZONE,
  completed_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Project updates table - activity feed for projects
CREATE TABLE IF NOT EXISTS project_updates (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  update_type TEXT CHECK (update_type IN ('task_created', 'task_completed', 'member_joined', 'status_changed', 'comment', 'file_shared')) NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  metadata JSONB,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_projects_match ON projects(match_id);
CREATE INDEX IF NOT EXISTS idx_projects_created_by ON projects(created_by);
CREATE INDEX IF NOT EXISTS idx_project_members_project ON project_members(project_id);
CREATE INDEX IF NOT EXISTS idx_project_members_user ON project_members(user_id);
CREATE INDEX IF NOT EXISTS idx_project_tasks_project ON project_tasks(project_id);
CREATE INDEX IF NOT EXISTS idx_project_tasks_assigned ON project_tasks(assigned_to);
CREATE INDEX IF NOT EXISTS idx_project_updates_project ON project_updates(project_id);
CREATE INDEX IF NOT EXISTS idx_project_updates_created ON project_updates(created_at DESC);

-- Create updated_at triggers
CREATE TRIGGER update_projects_updated_at BEFORE UPDATE ON projects
FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_project_tasks_updated_at BEFORE UPDATE ON project_tasks
FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- RLS Policies
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_members ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_tasks ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_updates ENABLE ROW LEVEL SECURITY;

-- Projects: Users can see projects they're members of
CREATE POLICY "Users can view projects they're members of" ON projects
FOR SELECT USING (
  id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid
  )
);

CREATE POLICY "Project members can update projects" ON projects
FOR UPDATE USING (
  id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid 
    AND role IN ('owner', 'collaborator')
  )
);

CREATE POLICY "Users can create projects" ON projects
FOR INSERT WITH CHECK (created_by = auth.uid()::text::uuid);

-- Project members: Users can see members of projects they're part of
CREATE POLICY "Users can view project members" ON project_members
FOR SELECT USING (
  project_id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid
  )
);

CREATE POLICY "Project owners can manage members" ON project_members
FOR ALL USING (
  project_id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid 
    AND role = 'owner'
  )
);

-- Project tasks: Users can see tasks in projects they're members of
CREATE POLICY "Users can view project tasks" ON project_tasks
FOR SELECT USING (
  project_id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid
  )
);

CREATE POLICY "Project members can manage tasks" ON project_tasks
FOR ALL USING (
  project_id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid 
    AND role IN ('owner', 'collaborator')
  )
);

-- Project updates: Users can see updates in projects they're members of
CREATE POLICY "Users can view project updates" ON project_updates
FOR SELECT USING (
  project_id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid
  )
);

CREATE POLICY "Project members can create updates" ON project_updates
FOR INSERT WITH CHECK (
  user_id = auth.uid()::text::uuid
  AND project_id IN (
    SELECT project_id FROM project_members 
    WHERE user_id = auth.uid()::text::uuid
  )
);