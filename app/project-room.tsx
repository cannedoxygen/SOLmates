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

export default function ProjectRoom() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { matchId } = useLocalSearchParams();
  const { user } = usePrivy();
  
  const [loading, setLoading] = useState(true);
  const [matchData, setMatchData] = useState<any>(null);
  const [projectIdeas, setProjectIdeas] = useState<ProjectIdea[]>([]);
  const [showCreateForm, setShowCreateForm] = useState(false);
  const [newProject, setNewProject] = useState({
    title: '',
    description: '',
    skills_needed: '',
  });

  useEffect(() => {
    if (matchId && user) {
      loadProjectRoom();
    }
  }, [matchId, user]);

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
    } catch (error) {
      console.error('Failed to load project room:', error);
      Alert.alert('Error', 'Failed to load project room');
    } finally {
      setLoading(false);
    }
  };

  const getOtherUser = () => {
    if (!matchData || !user) return null;
    
    const otherUser = matchData.user1.privy_user_id === user.id ? matchData.user2 : matchData.user1;
    return otherUser;
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

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Project Brainstorming</Text>
          <Text style={styles.sectionText}>
            This is where you and {otherUser?.username || 'your match'} can brainstorm project ideas, 
            share what you're working on, and plan your collaboration.
          </Text>
        </View>

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

        <View style={styles.comingSoon}>
          <Ionicons name="construct-outline" size={48} color="#666666" />
          <Text style={styles.comingSoonTitle}>More Features Coming Soon!</Text>
          <Text style={styles.comingSoonText}>
            • Project idea sharing{'\n'}
            • Collaborative workspace{'\n'}
            • Skill matching suggestions{'\n'}
            • Progress tracking
          </Text>
        </View>
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
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
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
});