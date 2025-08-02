import { useState, useEffect } from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  ScrollView,
  Pressable,
  TextInput,
  Alert,
  ActivityIndicator,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter, useLocalSearchParams } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { supabase } from '../lib/supabase/client';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInUp } from 'react-native-reanimated';

interface ProjectIdea {
  id: string;
  title: string;
  description: string;
  skills_needed: string[];
  created_by: string;
  created_at: string;
}

interface Project {
  id: string;
  match_id: string;
  name: string;
  description: string;
  status: string;
  project_type: string;
  tech_stack: string[];
  created_at: string;
}

interface ProjectTask {
  id: string;
  project_id: string;
  title: string;
  description?: string;
  status: string;
  priority: string;
  assigned_to?: string;
  created_at: string;
}

export default function ProjectRoom() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { matchId } = useLocalSearchParams();
  const { user } = usePrivy();
  
  const [loading, setLoading] = useState(true);
  const [matchData, setMatchData] = useState<any>(null);
  const [currentUserId, setCurrentUserId] = useState<string | null>(null);
  const [projectIdeas, setProjectIdeas] = useState<ProjectIdea[]>([]);
  const [activeProjects, setActiveProjects] = useState<Project[]>([]);
  const [selectedProject, setSelectedProject] = useState<Project | null>(null);
  const [projectTasks, setProjectTasks] = useState<ProjectTask[]>([]);
  const [showCreateForm, setShowCreateForm] = useState(false);
  const [activeTab, setActiveTab] = useState<'ideas' | 'projects'>('ideas');
  const [newProject, setNewProject] = useState({
    title: '',
    description: '',
    skills_needed: '',
  });

  useEffect(() => {
    if (matchId && user) {
      loadProjectRoom();
    }
  }, [matchId, user?.id]);

  const loadProjectRoom = async () => {
    if (!matchId || !user) return;

    try {
      console.log('🔄 Loading project room for match:', matchId);
      
      // Get match data with both users
      const { data: match, error: matchError } = await supabase
        .from('matches')
        .select(`
          *,
          user1:user1_id(*),
          user2:user2_id(*)
        `)
        .eq('id', matchId)
        .single();

      if (matchError) throw matchError;

      setMatchData(match);
      console.log('✅ Match data loaded:', match);

      // Get current user's Supabase ID
      const { data: currentUser } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();

      if (currentUser) {
        setCurrentUserId(currentUser.id);
      }

      // Load existing project ideas for this match (table may not exist yet)
      try {
        const { data: projects, error: projectError } = await supabase
          .from('project_ideas')
          .select('*')
          .eq('match_id', matchId)
          .order('created_at', { ascending: false });

        if (projectError && projectError.code !== 'PGRST116') {
          console.error('Project ideas error:', projectError);
        } else {
          setProjectIdeas(projects || []);
        }
      } catch (projectErr) {
        console.log('⚠️ Project ideas table may not exist yet:', projectErr);
        setProjectIdeas([]);
      }

      // Load active projects for this match
      try {
        const { data: projects, error: projectsError } = await supabase
          .from('projects')
          .select('*')
          .eq('match_id', matchId)
          .order('created_at', { ascending: false });

        if (!projectsError && projects) {
          setActiveProjects(projects);
          console.log('✅ Active projects loaded:', projects.length);
        }
      } catch (projectsErr) {
        console.log('⚠️ Projects table may not exist yet:', projectsErr);
        setActiveProjects([]);
      }
    } catch (error) {
      console.error('Failed to load project room:', error);
      Alert.alert('Error', 'Failed to load project room');
    } finally {
      setLoading(false);
    }
  };

  const createProjectIdea = async () => {
    if (!matchId || !user || !newProject.title || !newProject.description) return;

    try {
      console.log('🚀 Creating project idea:', newProject);

      // Get current user's Supabase ID
      const { data: currentUser } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();

      if (!currentUser) throw new Error('Current user not found');

      // Prepare skills array
      const skillsArray = newProject.skills_needed
        ? newProject.skills_needed.split(',').map(skill => skill.trim()).filter(skill => skill)
        : [];

      // Create project idea
      const { data: idea, error } = await supabase
        .from('project_ideas')
        .insert([{
          title: newProject.title,
          description: newProject.description,
          skills_needed: skillsArray,
          match_id: matchId,
          created_by: currentUser.id,
          created_at: new Date().toISOString()
        }])
        .select('*')
        .single();

      if (error) throw error;

      console.log('✅ Project idea created:', idea);

      // Add to local state
      setProjectIdeas(prev => [idea, ...prev]);

      // Reset form
      setNewProject({
        title: '',
        description: '',
        skills_needed: '',
      });
      setShowCreateForm(false);

      Alert.alert('Success', 'Project idea shared successfully!');

    } catch (error) {
      console.error('❌ Failed to create project idea:', error);
      Alert.alert('Error', 'Failed to create project idea. Please try again.');
    }
  };

  const startProjectFromIdea = async (idea: ProjectIdea) => {
    try {
      console.log('🚀 Starting project from idea:', idea);
      
      // Create project from idea
      const { data: project, error } = await supabase
        .from('projects')
        .insert([{
          match_id: matchId,
          name: idea.title,
          description: idea.description,
          tech_stack: idea.skills_needed,
          status: 'planning',
          project_type: 'side-project',
          created_by: currentUserId
        }])
        .select('*')
        .single();

      if (error) throw error;

      // Add both users as project members
      const members = [
        { project_id: project.id, user_id: matchData.user1_id, role: 'collaborator' },
        { project_id: project.id, user_id: matchData.user2_id, role: 'collaborator' }
      ];

      await supabase
        .from('project_members')
        .insert(members);

      // Add project to local state and switch to projects tab
      setActiveProjects(prev => [project, ...prev]);
      setActiveTab('projects');
      setSelectedProject(project);

      Alert.alert(
        'Project Started! 🚀',
        `"${idea.title}" has been created as an active project. You can now collaborate on tasks and track progress.`,
        [{ text: 'Great!', style: 'default' }]
      );

    } catch (error) {
      console.error('Failed to start project:', error);
      Alert.alert('Error', 'Failed to start project. Please try again.');
    }
  };

  const deleteProjectIdea = async (ideaId: string) => {
    try {
      const { error } = await supabase
        .from('project_ideas')
        .delete()
        .eq('id', ideaId);

      if (error) throw error;

      setProjectIdeas(prev => prev.filter(idea => idea.id !== ideaId));
      Alert.alert('Success', 'Project idea deleted successfully!');
    } catch (error) {
      console.error('❌ Failed to delete project idea:', error);
      Alert.alert('Error', 'Failed to delete project idea. Please try again.');
    }
  };

  const deleteProject = async (projectId: string) => {
    try {
      const { error } = await supabase
        .from('projects')
        .delete()
        .eq('id', projectId);

      if (error) throw error;

      setActiveProjects(prev => prev.filter(project => project.id !== projectId));
      setSelectedProject(null);
      Alert.alert('Success', 'Project deleted successfully!');
    } catch (error) {
      console.error('❌ Failed to delete project:', error);
      Alert.alert('Error', 'Failed to delete project. Please try again.');
    }
  };

  const updateProjectStatus = async (projectId: string, status: string) => {
    try {
      const { error } = await supabase
        .from('projects')
        .update({ status })
        .eq('id', projectId);

      if (error) throw error;

      // Update local state
      setActiveProjects(prev => 
        prev.map(project => 
          project.id === projectId ? { ...project, status } : project
        )
      );
      
      if (selectedProject?.id === projectId) {
        setSelectedProject(prev => prev ? { ...prev, status } : null);
      }

      Alert.alert('Success', `Project status updated to ${status}!`);
    } catch (error) {
      console.error('❌ Failed to update project status:', error);
      Alert.alert('Error', 'Failed to update project status. Please try again.');
    }
  };

  const getOtherUser = () => {
    if (!matchData || !user) return null;
    
    const otherUser = matchData.user1.privy_user_id === user.id ? matchData.user2 : matchData.user1;
    return otherUser;
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'planning': return '#FFA500';
      case 'active': return '#4CAF50';
      case 'completed': return '#9945FF';
      case 'on-hold': return '#666666';
      default: return '#666666';
    }
  };

  const renderSkillMatching = () => {
    if (!matchData || !matchData.user1 || !matchData.user2) return null;

    const currentUser = matchData.user1.privy_user_id === user?.id ? matchData.user1 : matchData.user2;
    const otherUser = matchData.user1.privy_user_id === user?.id ? matchData.user2 : matchData.user1;

    const yourSkills = currentUser.skills || [];
    const theirSkills = otherUser.skills || [];
    
    // Find complementary skills (skills only one person has)
    const complementarySkills = [
      ...yourSkills.filter(skill => !theirSkills.includes(skill)).map(skill => ({ skill, owner: 'you' })),
      ...theirSkills.filter(skill => !yourSkills.includes(skill)).map(skill => ({ skill, owner: 'them' }))
    ];
    
    // Find shared skills
    const sharedSkills = yourSkills.filter(skill => theirSkills.includes(skill));

    // Generate project suggestions based on skills
    const projectSuggestions = generateProjectSuggestions(yourSkills, theirSkills);

    return (
      <View style={styles.skillMatchContent}>
        {/* Complementary Skills */}
        {complementarySkills.length > 0 && (
          <View style={styles.skillSection}>
            <Text style={styles.skillSectionTitle}>Complementary Skills</Text>
            <Text style={styles.skillSectionSubtext}>
              You each bring unique skills to the table
            </Text>
            <View style={styles.complementarySkills}>
              {complementarySkills.map((item, index) => (
                <View key={index} style={[styles.skillChip, item.owner === 'you' ? styles.yourSkillChip : styles.theirSkillChip]}>
                  <Text style={styles.skillChipText}>{item.skill}</Text>
                  <Text style={styles.skillOwner}>{item.owner === 'you' ? 'You' : otherUser.username}</Text>
                </View>
              ))}
            </View>
          </View>
        )}

        {/* Shared Skills */}
        {sharedSkills.length > 0 && (
          <View style={styles.skillSection}>
            <Text style={styles.skillSectionTitle}>Shared Expertise</Text>
            <Text style={styles.skillSectionSubtext}>
              Skills you both have - perfect for collaboration
            </Text>
            <View style={styles.sharedSkills}>
              {sharedSkills.map((skill, index) => (
                <View key={index} style={styles.sharedSkillChip}>
                  <Ionicons name="checkmark-circle" size={16} color="#4CAF50" />
                  <Text style={styles.sharedSkillText}>{skill}</Text>
                </View>
              ))}
            </View>
          </View>
        )}

        {/* Project Suggestions */}
        {projectSuggestions.length > 0 && (
          <View style={styles.skillSection}>
            <Text style={styles.skillSectionTitle}>Project Ideas Based on Your Skills</Text>
            <View style={styles.projectSuggestions}>
              {projectSuggestions.map((suggestion, index) => (
                <Pressable
                  key={index}
                  style={styles.suggestionCard}
                  onPress={() => {
                    setNewProject({
                      title: suggestion.title,
                      description: suggestion.description,
                      skills_needed: suggestion.skills.join(', ')
                    });
                    setShowCreateForm(true);
                    setActiveTab('ideas');
                  }}
                >
                  <Text style={styles.suggestionTitle}>{suggestion.title}</Text>
                  <Text style={styles.suggestionDescription}>{suggestion.description}</Text>
                  <View style={styles.suggestionSkills}>
                    {suggestion.skills.slice(0, 3).map((skill, idx) => (
                      <Text key={idx} style={styles.suggestionSkill}>{skill}</Text>
                    ))}
                  </View>
                </Pressable>
              ))}
            </View>
          </View>
        )}
      </View>
    );
  };

  const generateProjectSuggestions = (yourSkills: string[], theirSkills: string[]) => {
    const allSkills = [...new Set([...yourSkills, ...theirSkills])];
    const suggestions = [];

    // Check for web development skills
    if (allSkills.some(s => ['React', 'Vue', 'Angular', 'Frontend'].includes(s)) &&
        allSkills.some(s => ['Node.js', 'Python', 'Backend', 'Ruby'].includes(s))) {
      suggestions.push({
        title: 'Full-Stack Web Application',
        description: 'Build a complete web app combining frontend and backend expertise',
        skills: ['React/Vue', 'Node.js/Python', 'Database', 'API Design']
      });
    }

    // Check for mobile development
    if (allSkills.some(s => ['React Native', 'Flutter', 'iOS', 'Android', 'Mobile'].includes(s))) {
      suggestions.push({
        title: 'Mobile App Project',
        description: 'Create a cross-platform mobile application',
        skills: ['Mobile Development', 'API Integration', 'UI/UX']
      });
    }

    // Check for blockchain/Web3
    if (allSkills.some(s => ['Solidity', 'Web3', 'Blockchain', 'Smart Contracts'].includes(s))) {
      suggestions.push({
        title: 'Web3 DApp',
        description: 'Build a decentralized application on blockchain',
        skills: ['Smart Contracts', 'Web3.js', 'Frontend', 'Solidity']
      });
    }

    // Check for AI/ML
    if (allSkills.some(s => ['Machine Learning', 'AI', 'Data Science', 'Python'].includes(s))) {
      suggestions.push({
        title: 'AI-Powered Application',
        description: 'Create an app that leverages machine learning',
        skills: ['Machine Learning', 'Python', 'API Development', 'Frontend']
      });
    }

    // Check for design + development
    if (allSkills.some(s => ['Design', 'UI/UX', 'Figma', 'Adobe'].includes(s)) &&
        allSkills.some(s => ['Frontend', 'React', 'CSS', 'JavaScript'].includes(s))) {
      suggestions.push({
        title: 'Design System & Component Library',
        description: 'Create a reusable design system and React components',
        skills: ['UI/UX Design', 'React', 'Storybook', 'Documentation']
      });
    }

    // Default suggestion if no specific match
    if (suggestions.length === 0) {
      suggestions.push({
        title: 'Collaborative Project',
        description: 'Combine your unique skills to build something innovative',
        skills: allSkills.slice(0, 4)
      });
    }

    return suggestions.slice(0, 3); // Return top 3 suggestions
  };

  if (loading) {
    return (
      <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading project room...</Text>
        </View>
      </LinearGradient>
    );
  }

  const otherUser = getOtherUser();

  return (
    <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
      <ScrollView 
        style={styles.scrollView}
        contentContainerStyle={[styles.content, { paddingTop: insets.top + 20 }]}
      >
        <View style={styles.header}>
          <Pressable style={styles.backButton} onPress={() => router.back()}>
            <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
          </Pressable>
          <View style={styles.headerCenter}>
            <Text style={styles.title}>Project Room</Text>
            <Text style={styles.subtitle}>
              Collaborate with {otherUser?.username || 'your match'}
            </Text>
          </View>
          <View style={styles.backButton} />
        </View>

        <View style={styles.collaborationInfo}>
          <Text style={styles.sectionTitle}>🚀 Start Your Collaboration</Text>
          <Text style={styles.sectionText}>
            Share project ideas, combine skills, and build something amazing together!
          </Text>
        </View>

        {/* Skill Matching Section */}
        {matchData && (
          <View style={styles.skillMatchSection}>
            <Text style={styles.skillMatchTitle}>🤝 Skill Synergy</Text>
            {renderSkillMatching()}
          </View>
        )}

        {/* Tab Navigation */}
        <View style={styles.tabContainer}>
          <Pressable
            style={[styles.tab, activeTab === 'ideas' && styles.activeTab]}
            onPress={() => setActiveTab('ideas')}
          >
            <Ionicons 
              name="bulb-outline" 
              size={20} 
              color={activeTab === 'ideas' ? '#9945FF' : '#666666'} 
            />
            <Text style={[styles.tabText, activeTab === 'ideas' && styles.activeTabText]}>
              Ideas ({projectIdeas.length})
            </Text>
          </Pressable>
          
          <Pressable
            style={[styles.tab, activeTab === 'projects' && styles.activeTab]}
            onPress={() => setActiveTab('projects')}
          >
            <Ionicons 
              name="rocket-outline" 
              size={20} 
              color={activeTab === 'projects' ? '#9945FF' : '#666666'} 
            />
            <Text style={[styles.tabText, activeTab === 'projects' && styles.activeTabText]}>
              Projects ({activeProjects.length})
            </Text>
          </Pressable>
        </View>

        {/* Ideas Tab Content */}
        {activeTab === 'ideas' && (
        <View style={styles.section}>
          <View style={styles.sectionHeader}>
            <Text style={styles.sectionTitle}>Project Ideas</Text>
            <Pressable
              style={styles.addButton}
              onPress={() => setShowCreateForm(!showCreateForm)}
            >
              <Ionicons name={showCreateForm ? "close" : "add"} size={20} color="#9945FF" />
              <Text style={styles.addButtonText}>
                {showCreateForm ? "Cancel" : "New Idea"}
              </Text>
            </Pressable>
          </View>

          {showCreateForm && (
            <Animated.View 
              entering={FadeInUp.duration(300)}
              style={styles.createForm}
            >
              <Text style={styles.formTitle}>Share Your Project Idea</Text>
              
              <View style={styles.formField}>
                <Text style={styles.fieldLabel}>Project Title</Text>
                <TextInput
                  style={styles.textInput}
                  placeholder="What's your project idea called?"
                  placeholderTextColor="#666666"
                  value={newProject.title}
                  onChangeText={(text) => setNewProject({...newProject, title: text})}
                />
              </View>

              <View style={styles.formField}>
                <Text style={styles.fieldLabel}>Description</Text>
                <TextInput
                  style={[styles.textInput, styles.textArea]}
                  placeholder="Describe your project idea, goals, and what you want to build..."
                  placeholderTextColor="#666666"
                  multiline
                  numberOfLines={4}
                  value={newProject.description}
                  onChangeText={(text) => setNewProject({...newProject, description: text})}
                />
              </View>

              <View style={styles.formField}>
                <Text style={styles.fieldLabel}>Skills Needed</Text>
                <TextInput
                  style={styles.textInput}
                  placeholder="React, Node.js, Design, Marketing... (comma separated)"
                  placeholderTextColor="#666666"
                  value={newProject.skills_needed}
                  onChangeText={(text) => setNewProject({...newProject, skills_needed: text})}
                />
              </View>

              <Pressable
                style={[styles.submitButton, (!newProject.title || !newProject.description) && styles.submitButtonDisabled]}
                onPress={createProjectIdea}
                disabled={!newProject.title || !newProject.description}
              >
                <Text style={styles.submitButtonText}>Share Idea</Text>
              </Pressable>
            </Animated.View>
          )}

          {projectIdeas.length > 0 ? (
            <View style={styles.ideasList}>
              {projectIdeas.map((idea) => (
                <View key={idea.id} style={styles.ideaCard}>
                  <Text style={styles.ideaTitle}>{idea.title}</Text>
                  <Text style={styles.ideaDescription}>{idea.description}</Text>
                  {idea.skills_needed && idea.skills_needed.length > 0 && (
                    <View style={styles.skillsContainer}>
                      {idea.skills_needed.map((skill, index) => (
                        <View key={index} style={styles.skillTag}>
                          <Text style={styles.skillTagText}>{skill.trim()}</Text>
                        </View>
                      ))}
                    </View>
                  )}
                  <View style={styles.ideaFooter}>
                    <Text style={styles.ideaAuthor}>
                      By {idea.created_by === currentUserId ? 'You' : otherUser?.username}
                    </Text>
                    <View style={styles.ideaActions}>
                      <Pressable
                        style={styles.startProjectButton}
                        onPress={() => startProjectFromIdea(idea)}
                      >
                        <Ionicons name="rocket-outline" size={16} color="#9945FF" />
                        <Text style={styles.startProjectText}>Start Project</Text>
                      </Pressable>
                      {idea.created_by === currentUserId && (
                        <Pressable
                          style={styles.deleteButton}
                          onPress={() => Alert.alert(
                            'Delete Idea',
                            'Are you sure you want to delete this project idea?',
                            [
                              { text: 'Cancel', style: 'cancel' },
                              { text: 'Delete', style: 'destructive', onPress: () => deleteProjectIdea(idea.id) }
                            ]
                          )}
                        >
                          <Ionicons name="trash-outline" size={16} color="#FF5252" />
                        </Pressable>
                      )}
                    </View>
                  </View>
                </View>
              ))}
            </View>
          ) : (
            <View style={styles.emptyState}>
              <Ionicons name="bulb-outline" size={48} color="#666666" />
              <Text style={styles.emptyStateText}>No project ideas yet</Text>
              <Text style={styles.emptyStateSubtext}>
                Start by sharing your first project idea!
              </Text>
            </View>
          )}
        </View>
        )}

        {/* Projects Tab Content */}
        {activeTab === 'projects' && (
        <View style={styles.section}>
          <View style={styles.sectionHeader}>
            <Text style={styles.sectionTitle}>Active Projects</Text>
          </View>

          {activeProjects.length > 0 ? (
            <View style={styles.projectsList}>
              {activeProjects.map((project) => (
                <Pressable
                  key={project.id}
                  style={[
                    styles.projectCard,
                    selectedProject?.id === project.id && styles.selectedProjectCard
                  ]}
                  onPress={() => setSelectedProject(project)}
                >
                  <View style={styles.projectHeader}>
                    <View style={styles.projectInfo}>
                      <Text style={styles.projectTitle}>{project.name}</Text>
                      <View style={styles.projectStatus}>
                        <View style={[styles.statusDot, { backgroundColor: getStatusColor(project.status) }]} />
                        <Text style={styles.statusText}>{project.status}</Text>
                      </View>
                    </View>
                    <View style={styles.projectActions}>
                      <Pressable
                        style={styles.deleteProjectButton}
                        onPress={() => Alert.alert(
                          'Delete Project',
                          'Are you sure you want to delete this project? This action cannot be undone.',
                          [
                            { text: 'Cancel', style: 'cancel' },
                            { text: 'Delete', style: 'destructive', onPress: () => deleteProject(project.id) }
                          ]
                        )}
                      >
                        <Ionicons name="trash-outline" size={16} color="#FF5252" />
                      </Pressable>
                      <Ionicons 
                        name="chevron-forward" 
                        size={20} 
                        color="#666666" 
                      />
                    </View>
                  </View>
                  
                  <Text style={styles.projectDescription} numberOfLines={2}>
                    {project.description}
                  </Text>
                  
                  {project.tech_stack && project.tech_stack.length > 0 && (
                    <View style={styles.skillsContainer}>
                      {project.tech_stack.slice(0, 3).map((tech, index) => (
                        <View key={index} style={styles.skillTag}>
                          <Text style={styles.skillTagText}>{tech}</Text>
                        </View>
                      ))}
                      {project.tech_stack.length > 3 && (
                        <Text style={styles.moreSkills}>+{project.tech_stack.length - 3} more</Text>
                      )}
                    </View>
                  )}
                </Pressable>
              ))}
            </View>
          ) : (
            <View style={styles.emptyState}>
              <Ionicons name="rocket-outline" size={48} color="#666666" />
              <Text style={styles.emptyStateText}>No active projects yet</Text>
              <Text style={styles.emptyStateSubtext}>
                Start a project from one of your ideas!
              </Text>
            </View>
          )}
        </View>
        )}

        {/* Selected Project Detail View */}
        {selectedProject && (
          <View style={styles.section}>
            <View style={styles.projectDetailHeader}>
              <View>
                <Text style={styles.projectDetailTitle}>{selectedProject.name}</Text>
                <View style={styles.projectStatus}>
                  <View style={[styles.statusDot, { backgroundColor: getStatusColor(selectedProject.status) }]} />
                  <Text style={styles.statusText}>{selectedProject.status}</Text>
                </View>
              </View>
              <Pressable
                style={styles.closeDetailButton}
                onPress={() => setSelectedProject(null)}
              >
                <Ionicons name="close" size={20} color="#666666" />
              </Pressable>
            </View>
            
            <Text style={styles.projectDetailDescription}>
              {selectedProject.description}
            </Text>
            
            {selectedProject.tech_stack && selectedProject.tech_stack.length > 0 && (
              <View style={styles.techStackSection}>
                <Text style={styles.techStackTitle}>Tech Stack</Text>
                <View style={styles.skillsContainer}>
                  {selectedProject.tech_stack.map((tech, index) => (
                    <View key={index} style={styles.skillTag}>
                      <Text style={styles.skillTagText}>{tech}</Text>
                    </View>
                  ))}
                </View>
              </View>
            )}
            
            <View style={styles.projectActionsSection}>
              <Text style={styles.sectionSubtitle}>Project Actions</Text>
              <View style={styles.actionButtons}>
                <Pressable style={styles.actionButton}>
                  <Ionicons name="list-outline" size={20} color="#9945FF" />
                  <Text style={styles.actionButtonText}>Tasks</Text>
                </Pressable>
                <Pressable style={styles.actionButton}>
                  <Ionicons name="git-branch-outline" size={20} color="#9945FF" />
                  <Text style={styles.actionButtonText}>GitHub</Text>
                </Pressable>
                <Pressable style={styles.actionButton}>
                  <Ionicons name="desktop-outline" size={20} color="#9945FF" />
                  <Text style={styles.actionButtonText}>Demo</Text>
                </Pressable>
              </View>
            </View>
            
            <View style={styles.statusUpdateSection}>
              <Text style={styles.sectionSubtitle}>Update Status</Text>
              <View style={styles.statusButtons}>
                {['planning', 'active', 'completed', 'on-hold'].map((status) => (
                  <Pressable
                    key={status}
                    style={[
                      styles.statusButton,
                      selectedProject.status === status && styles.activeStatusButton
                    ]}
                    onPress={() => updateProjectStatus(selectedProject.id, status)}
                  >
                    <View style={[styles.statusDot, { backgroundColor: getStatusColor(status) }]} />
                    <Text style={[
                      styles.statusButtonText,
                      selectedProject.status === status && styles.activeStatusButtonText
                    ]}>
                      {status}
                    </Text>
                  </Pressable>
                ))}
              </View>
            </View>
          </View>
        )}

        <Pressable
          style={styles.chatButton}
          onPress={async () => {
            try {
              // Get current user's Supabase ID
              const { data: currentUser } = await supabase
                .from('users')
                .select('id')
                .eq('privy_user_id', user!.id)
                .single();
                
              if (!currentUser) throw new Error('Current user not found');
              
              // Check if chat room already exists for this match
              let { data: existingChat } = await supabase
                .from('chats')
                .select('id')
                .or(`and(user1_id.eq.${matchData?.user1_id},user2_id.eq.${matchData?.user2_id}),and(user1_id.eq.${matchData?.user2_id},user2_id.eq.${matchData?.user1_id})`)
                .single();
              
              let chatId = existingChat?.id;
              
              if (!chatId) {
                // Create new chat room for this match
                const { data: newChat, error: chatError } = await supabase
                  .from('chats')
                  .insert([{
                    user1_id: matchData?.user1_id,
                    user2_id: matchData?.user2_id,
                    created_at: new Date().toISOString(),
                    last_message_at: new Date().toISOString(),
                  }])
                  .select('id')
                  .single();
                  
                if (chatError) throw chatError;
                chatId = newChat.id;
                console.log('✅ Created new chat room from project room:', chatId);
              }
              
              router.push(`/chat/${chatId}`);
            } catch (error) {
              console.error('Failed to create/find chat:', error);
              Alert.alert('Error', 'Failed to start chat');
            }
          }}
        >
          <Ionicons name="chatbubble" size={20} color="#FFFFFF" />
          <Text style={styles.chatButtonText}>Start Chatting</Text>
        </Pressable>

      </ScrollView>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  scrollView: {
    flex: 1,
  },
  content: {
    paddingHorizontal: 24,
    paddingBottom: 40,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginTop: 16,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 24,
  },
  backButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  headerCenter: {
    flex: 1,
    alignItems: 'center',
  },
  title: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  subtitle: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
  },
  collaborationInfo: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 24,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  section: {
    marginBottom: 24,
  },
  sectionHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  addButton: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  addButtonText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginLeft: 6,
  },
  createForm: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 20,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  formTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  formField: {
    marginBottom: 16,
  },
  fieldLabel: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  textInput: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    paddingHorizontal: 16,
    paddingVertical: 12,
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  textArea: {
    height: 80,
    textAlignVertical: 'top',
  },
  submitButton: {
    backgroundColor: '#9945FF',
    borderRadius: 12,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 8,
  },
  submitButtonDisabled: {
    backgroundColor: 'rgba(153, 69, 255, 0.3)',
  },
  submitButtonText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  ideasList: {
    gap: 16,
  },
  ideaCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  ideaTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  ideaDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 20,
    marginBottom: 12,
  },
  skillsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
    marginBottom: 12,
  },
  skillTag: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    borderRadius: 8,
    paddingHorizontal: 10,
    paddingVertical: 4,
  },
  skillTagText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  ideaFooter: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  ideaAuthor: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  startProjectButton: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 8,
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  startProjectText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginLeft: 4,
  },
  emptyState: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  emptyStateText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 4,
  },
  emptyStateSubtext: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
  },
  tabContainer: {
    flexDirection: 'row',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 4,
    marginBottom: 24,
  },
  tab: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 12,
    borderRadius: 8,
    gap: 6,
  },
  activeTab: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
  },
  tabText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#666666',
  },
  activeTabText: {
    color: '#9945FF',
  },
  projectsList: {
    gap: 16,
  },
  projectCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  selectedProjectCard: {
    borderColor: '#9945FF',
  },
  projectHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  projectInfo: {
    flex: 1,
  },
  projectTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  projectStatus: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 6,
  },
  statusDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
  },
  statusText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textTransform: 'capitalize',
  },
  projectDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 20,
    marginBottom: 12,
  },
  moreSkills: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginLeft: 4,
  },
  skillMatchSection: {
    backgroundColor: 'rgba(153, 69, 255, 0.05)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 24,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.1)',
  },
  skillMatchTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  skillMatchContent: {
    gap: 20,
  },
  skillSection: {
    marginBottom: 16,
  },
  skillSectionTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  skillSectionSubtext: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 12,
  },
  complementarySkills: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  skillChip: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 12,
    borderWidth: 1,
  },
  yourSkillChip: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  theirSkillChip: {
    backgroundColor: 'rgba(76, 175, 80, 0.1)',
    borderColor: 'rgba(76, 175, 80, 0.3)',
  },
  skillChipText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
  },
  skillOwner: {
    fontSize: 10,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginTop: 2,
  },
  sharedSkills: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  sharedSkillChip: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(76, 175, 80, 0.1)',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 12,
    gap: 4,
  },
  sharedSkillText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#4CAF50',
  },
  projectSuggestions: {
    gap: 12,
  },
  suggestionCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  suggestionTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  suggestionDescription: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 8,
  },
  suggestionSkills: {
    flexDirection: 'row',
    gap: 6,
  },
  suggestionSkill: {
    fontSize: 11,
    fontFamily: 'Inter-Regular',
    color: '#9945FF',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    paddingHorizontal: 8,
    paddingVertical: 2,
    borderRadius: 6,
  },
  sectionText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 20,
    marginTop: 8,
  },
  chatButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#9945FF',
    borderRadius: 16,
    paddingVertical: 16,
    paddingHorizontal: 24,
    marginBottom: 32,
  },
  chatButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginLeft: 8,
  },
  comingSoon: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  comingSoonTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 12,
  },
  comingSoonText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
    lineHeight: 24,
  },
  ideaActions: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  deleteButton: {
    padding: 8,
    borderRadius: 8,
    backgroundColor: 'rgba(255, 82, 82, 0.1)',
    borderWidth: 1,
    borderColor: 'rgba(255, 82, 82, 0.2)',
  },
  projectActions: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  deleteProjectButton: {
    padding: 6,
    borderRadius: 6,
    backgroundColor: 'rgba(255, 82, 82, 0.1)',
    borderWidth: 1,
    borderColor: 'rgba(255, 82, 82, 0.2)',
  },
  projectDetailHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    marginBottom: 16,
  },
  projectDetailTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  projectDetailDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    lineHeight: 20,
    marginBottom: 20,
  },
  closeDetailButton: {
    padding: 8,
    borderRadius: 8,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
  },
  techStackSection: {
    marginBottom: 24,
  },
  techStackTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  projectActionsSection: {
    marginBottom: 24,
  },
  sectionSubtitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  actionButtons: {
    flexDirection: 'row',
    gap: 12,
  },
  actionButton: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    paddingVertical: 12,
    paddingHorizontal: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
    gap: 8,
  },
  actionButtonText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#9945FF',
  },
  statusUpdateSection: {
    marginBottom: 24,
  },
  statusButtons: {
    flexDirection: 'row',
    gap: 8,
    flexWrap: 'wrap',
  },
  statusButton: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 8,
    paddingVertical: 8,
    paddingHorizontal: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    gap: 6,
  },
  activeStatusButton: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    borderColor: '#9945FF',
  },
  statusButtonText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#B8B8B8',
    textTransform: 'capitalize',
  },
  activeStatusButtonText: {
    color: '#FFFFFF',
  },
});