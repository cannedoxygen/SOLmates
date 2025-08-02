import { useState, useEffect, useCallback } from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  FlatList, 
  Pressable,
  ActivityIndicator,
  Image,
  Alert,
  ScrollView,
  RefreshControl,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { supabase } from '../../lib/supabase/client';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInDown } from 'react-native-reanimated';
import { ProfileCardViewer } from '../../components/profile/ProfileCardViewer';
import { UserProfile } from '../../lib/matching/matchEngine';
import { getBestAvatarUrl } from '../../lib/utils/imageUtils';

interface Match {
  id: string;
  user1_id: string;
  user2_id: string;
  created_at: string;
  other_user: {
    id: string;
    username: string;
    display_name?: string;
    bio: string;
    avatar_url?: string;
    twitter_avatar_url?: string;
    twitter_username?: string;
    twitter_name?: string;
    skills: string[];
    looking_for: string[];
    experience_level?: string;
    interests?: string[];
    location?: string;
    timezone?: string;
    availability?: string;
    github_url?: string;
    website_url?: string;
    twitter_url?: string;
    reputation_score?: number;
    wallet_address?: string;
  };
}

interface SuperLike {
  id: string;
  swiper_id: string;
  swiped_id: string;
  created_at: string;
  other_user: {
    id: string;
    username: string;
    display_name?: string;
    bio: string;
    avatar_url?: string;
    twitter_avatar_url?: string;
    twitter_username?: string;
    twitter_name?: string;
    skills: string[];
    looking_for: string[];
    experience_level?: string;
    interests?: string[];
    location?: string;
    timezone?: string;
    availability?: string;
    github_url?: string;
    website_url?: string;
    twitter_url?: string;
    reputation_score?: number;
    wallet_address?: string;
  };
}

export default function Matches() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const [matches, setMatches] = useState<Match[]>([]);
  const [superLikes, setSuperLikes] = useState<SuperLike[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [showProfileViewer, setShowProfileViewer] = useState(false);
  const [selectedMatch, setSelectedMatch] = useState<Match | null>(null);
  const [selectedSuperLike, setSelectedSuperLike] = useState<SuperLike | null>(null);

  useEffect(() => {
    if (user) {
      loadMatches();
      loadSuperLikes();
    }
  }, [user?.id]);

  const onRefresh = useCallback(async () => {
    console.log('🔄 Pull to refresh matches');
    setRefreshing(true);
    try {
      await Promise.all([
        loadMatches(true),
        loadSuperLikes(true)
      ]);
    } finally {
      setRefreshing(false);
    }
  }, [user]);

  const loadMatches = async (isRefreshing = false) => {
    if (!user) return;

    try {
      if (!isRefreshing) setLoading(true);
      // First get the Supabase user ID for this Privy user
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();

      if (userError || !currentUser) {
        console.error('❌ Could not find Supabase user for Privy ID:', user.id);
        setLoading(false);
        return;
      }

      // Get matches where current user is involved
      const { data: matchData, error: matchError } = await supabase
        .from('matches')
        .select('*')
        .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`)
        .order('created_at', { ascending: false });

      if (matchError) throw matchError;

      // Get other user details for each match
      const matchesWithUsers = await Promise.all(
        (matchData || []).map(async (match) => {
          const otherUserId = match.user1_id === currentUser.id ? match.user2_id : match.user1_id;
          
          const { data: userData, error: userError } = await supabase
            .from('users')
            .select(`
              *,
              twitter_avatar_url,
              twitter_username,
              twitter_name,
              github_url,
              website_url,
              twitter_url,
              experience_level,
              interests,
              location,
              timezone,
              availability,
              reputation_score,
              wallet_address
            `)
            .eq('id', otherUserId)
            .single();

          if (userError) throw userError;

          return {
            ...match,
            other_user: userData,
          };
        })
      );

      setMatches(matchesWithUsers);
    } catch (error) {
      console.error('Failed to load matches:', error);
    } finally {
      if (!isRefreshing) setLoading(false);
    }
  };

  const loadSuperLikes = async (isRefreshing = false) => {
    if (!user) return;

    try {
      // First get the Supabase user ID for this Privy user
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();

      if (userError || !currentUser) {
        console.error('❌ Could not find Supabase user for Privy ID:', user.id);
        return;
      }

      // Get super likes received by current user (where someone super liked us)
      const { data: superLikeData, error: superLikeError } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiped_id', currentUser.id)
        .eq('direction', 'super')
        .order('created_at', { ascending: false });

      if (superLikeError) throw superLikeError;

      // Get other user details for each super like
      const superLikesWithUsers = await Promise.all(
        (superLikeData || []).map(async (superLike) => {
          const { data: userData, error: userError } = await supabase
            .from('users')
            .select(`
              *,
              twitter_avatar_url,
              twitter_username,
              twitter_name,
              github_url,
              website_url,
              twitter_url,
              experience_level,
              interests,
              location,
              timezone,
              availability,
              reputation_score,
              wallet_address
            `)
            .eq('id', superLike.swiper_id)
            .single();

          if (userError) throw userError;

          return {
            id: superLike.id,
            swiper_id: superLike.swiper_id,
            swiped_id: superLike.swiped_id,
            created_at: superLike.created_at,
            other_user: userData,
          };
        })
      );

      setSuperLikes(superLikesWithUsers);
      console.log(`✅ Loaded ${superLikesWithUsers.length} super likes`);
    } catch (error) {
      console.error('Failed to load super likes:', error);
    }
  };

  const formatMatchDate = (dateString: string) => {
    const date = new Date(dateString);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffDays = Math.floor(diffMs / 86400000);

    if (diffDays === 0) return 'Today';
    if (diffDays === 1) return 'Yesterday';
    if (diffDays < 7) return `${diffDays} days ago`;
    
    return date.toLocaleDateString();
  };

  const handleCardPress = (match: Match) => {
    console.log('🃏 Opening profile card for:', match.other_user.username);
    setSelectedMatch(match);
    setShowProfileViewer(true);
  };

  const handleSuperLikePress = (superLike: SuperLike) => {
    console.log('⭐ Opening super like profile for:', superLike.other_user.username);
    setSelectedSuperLike(superLike);
    setShowProfileViewer(true);
  };

  const handleSuperLikeAction = async (superLike: SuperLike, action: 'like' | 'pass') => {
    if (!user) return;

    try {
      // Get current user's Supabase ID
      const { data: currentUser } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();
        
      if (!currentUser) throw new Error('Current user not found');

      if (action === 'like') {
        // Create a match if user likes back
        const { data: match } = await supabase
          .from('matches')
          .insert([{
            user1_id: superLike.swiper_id,
            user2_id: currentUser.id,
            user1_liked: true,
            user2_liked: true,
            matched_at: new Date().toISOString(),
          }])
          .select();

        // Remove from super likes list
        setSuperLikes(prev => prev.filter(sl => sl.id !== superLike.id));

        Alert.alert(
          "It's a Match! ⭐",
          `You matched with ${superLike.other_user.username} who super liked you!`,
          [
            { text: 'Keep Looking', style: 'cancel' },
            { text: 'Send Message', onPress: () => {
              // Navigate to chat if match was created
              if (match?.[0]) {
                // TODO: Navigate to chat
                console.log('💬 Opening chat with super match:', superLike.other_user.username);
              }
            }},
          ]
        );
      } else {
        // Just remove from super likes list for now (user passed)
        setSuperLikes(prev => prev.filter(sl => sl.id !== superLike.id));
      }
    } catch (error) {
      console.error('Failed to handle super like action:', error);
      Alert.alert('Error', 'Failed to process super like');
    }
  };

  const handleChatPress = async (match: Match, event: any) => {
    event.stopPropagation();
    console.log('💬 Starting chat with:', match.other_user.username);
    
    try {
      // Get current user's Supabase ID
      const { data: currentUser } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user!.id)
        .single();
        
      if (!currentUser) throw new Error('Current user not found');
      
      // Check if chat room already exists for this match (try match_id first, then users)
      let { data: existingChat } = await supabase
        .from('chats')
        .select('id')
        .or(`match_id.eq.${match.id},and(user1_id.eq.${match.user1_id},user2_id.eq.${match.user2_id}),and(user1_id.eq.${match.user2_id},user2_id.eq.${match.user1_id})`)
        .single();
      
      let chatId = existingChat?.id;
      
      if (!chatId) {
        // Create new chat room for this match
        const chatData: any = {
          user1_id: match.user1_id,
          user2_id: match.user2_id,
          created_at: new Date().toISOString(),
          last_message_at: new Date().toISOString(),
        };
        
        // Try to add match_id if the column exists
        try {
          chatData.match_id = match.id;
        } catch (e) {
          console.log('match_id column not available, creating chat without it');
        }
        
        const { data: newChat, error: chatError } = await supabase
          .from('chats')
          .insert([chatData])
          .select('id')
          .single();
          
        if (chatError) {
          // If match_id column doesn't exist, try without it
          if (chatError.code === 'PGRST204') {
            const { data: newChatFallback, error: fallbackError } = await supabase
              .from('chats')
              .insert([{
                user1_id: match.user1_id,
                user2_id: match.user2_id,
                created_at: new Date().toISOString(),
                last_message_at: new Date().toISOString(),
              }])
              .select('id')
              .single();
              
            if (fallbackError) throw fallbackError;
            chatId = newChatFallback.id;
          } else {
            throw chatError;
          }
        } else {
          chatId = newChat.id;
        }
        console.log('✅ Created new chat room:', chatId);
      }
      
      router.push(`/chat/${chatId}`);
    } catch (error) {
      console.error('Failed to create/find chat:', error);
      Alert.alert('Error', 'Failed to start chat');
    }
  };

  const handleProjectPress = (match: Match, event: any) => {
    event.stopPropagation();
    console.log('🚀 Opening project room with:', match.other_user.username);
    router.push(`/project-room?matchId=${match.id}`);
  };

  const convertToUserProfile = (match: Match): UserProfile => {
    return {
      id: match.other_user.id,
      username: match.other_user.display_name || match.other_user.username,
      bio: match.other_user.bio,
      avatar_url: getBestAvatarUrl(match.other_user.twitter_avatar_url, match.other_user.avatar_url),
      twitter_avatar_url: match.other_user.twitter_avatar_url,
      skills: match.other_user.skills || [],
      looking_for: match.other_user.looking_for || [],
      experience_level: match.other_user.experience_level,
      interests: match.other_user.interests || [],
      location: match.other_user.location,
      timezone: match.other_user.timezone,
      github_url: match.other_user.github_url,
      website_url: match.other_user.website_url,
      twitter_url: match.other_user.twitter_url,
      reputation_score: match.other_user.reputation_score || 0,
      wallet_address: match.other_user.wallet_address || '',
    };
  };

  const convertSuperLikeToUserProfile = (superLike: SuperLike): UserProfile => {
    return {
      id: superLike.other_user.id,
      username: superLike.other_user.display_name || superLike.other_user.username,
      bio: superLike.other_user.bio,
      avatar_url: getBestAvatarUrl(superLike.other_user.twitter_avatar_url, superLike.other_user.avatar_url),
      twitter_avatar_url: superLike.other_user.twitter_avatar_url,
      skills: superLike.other_user.skills || [],
      looking_for: superLike.other_user.looking_for || [],
      experience_level: superLike.other_user.experience_level,
      interests: superLike.other_user.interests || [],
      location: superLike.other_user.location,
      timezone: superLike.other_user.timezone,
      github_url: superLike.other_user.github_url,
      website_url: superLike.other_user.website_url,
      twitter_url: superLike.other_user.twitter_url,
      reputation_score: superLike.other_user.reputation_score || 0,
      wallet_address: superLike.other_user.wallet_address || '',
    };
  };

  const renderSuperLikeItem = ({ item }: { item: SuperLike }) => (
    <Pressable
      style={styles.superLikeCard}
      onPress={() => handleSuperLikePress(item)}
    >
      <View style={styles.superLikeAvatarContainer}>
        {getBestAvatarUrl(item.other_user.twitter_avatar_url, item.other_user.avatar_url) ? (
          <Image
            source={{ 
              uri: getBestAvatarUrl(item.other_user.twitter_avatar_url, item.other_user.avatar_url) 
            }}
            style={styles.superLikeAvatar}
          />
        ) : (
          <LinearGradient
            colors={['#9945FF', '#7B3FF2']}
            style={styles.superLikeAvatarPlaceholder}
          >
            <Text style={styles.superLikeAvatarText}>
              {item.other_user.username.charAt(0).toUpperCase()}
            </Text>
          </LinearGradient>
        )}
        <View style={styles.superLikeBadge}>
          <Ionicons name="star" size={12} color="#FFFFFF" />
        </View>
      </View>
      
      <Text style={styles.superLikeName} numberOfLines={1}>
        {item.other_user.username}
      </Text>
      
      <View style={styles.superLikeActions}>
        <Pressable
          style={[styles.superLikeActionButton, styles.passButton]}
          onPress={(e) => {
            e.stopPropagation();
            handleSuperLikeAction(item, 'pass');
          }}
        >
          <Ionicons name="close" size={16} color="#FF5252" />
        </Pressable>
        
        <Pressable
          style={[styles.superLikeActionButton, styles.likeButton]}
          onPress={(e) => {
            e.stopPropagation();
            handleSuperLikeAction(item, 'like');
          }}
        >
          <Ionicons name="heart" size={16} color="#4CAF50" />
        </Pressable>
      </View>
    </Pressable>
  );

  const renderMatchItem = ({ item, index }: { item: Match; index: number }) => (
    <Animated.View
      entering={FadeInDown.delay(index * 100).duration(600)}
    >
      <Pressable
        style={({ pressed }) => [
          styles.matchItem,
          pressed && styles.matchItemPressed,
        ]}
        onPress={() => handleCardPress(item)}
      >
        <View style={styles.matchCard}>
          <View style={styles.avatarContainer}>
            {getBestAvatarUrl(item.other_user.twitter_avatar_url, item.other_user.avatar_url) ? (
              <Image
                source={{ 
                  uri: getBestAvatarUrl(item.other_user.twitter_avatar_url, item.other_user.avatar_url) 
                }}
                style={styles.avatar}
                onLoad={() => console.log('✅ Match avatar loaded for:', item.other_user.username)}
                onError={() => console.log('⚠️ Avatar failed for:', item.other_user.username)}
              />
            ) : (
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.avatarPlaceholder}
              >
                <Text style={styles.avatarText}>
                  {item.other_user.username.charAt(0).toUpperCase()}
                </Text>
              </LinearGradient>
            )}
          </View>

          <View style={styles.matchInfo}>
            <Text style={styles.matchName}>{item.other_user.username}</Text>
            <Text style={styles.matchBio} numberOfLines={2}>
              {item.other_user.bio}
            </Text>
            
            <View style={styles.skillsContainer}>
              {item.other_user.skills.slice(0, 2).map((skill, idx) => (
                <View key={idx} style={styles.skillTag}>
                  <Text style={styles.skillText}>{skill}</Text>
                </View>
              ))}
              {item.other_user.skills.length > 2 && (
                <Text style={styles.moreSkills}>+{item.other_user.skills.length - 2}</Text>
              )}
            </View>

            <Text style={styles.matchDate}>
              Matched {formatMatchDate(item.created_at)}
            </Text>
          </View>

          <View style={styles.matchActions}>
            <Pressable
              style={styles.actionButton}
              onPress={(event) => handleChatPress(item, event)}
            >
              <Ionicons name="chatbubble" size={20} color="#9945FF" />
            </Pressable>
            
            <Pressable
              style={styles.actionButton}
              onPress={(event) => handleProjectPress(item, event)}
            >
              <Ionicons name="rocket" size={20} color="#9945FF" />
            </Pressable>
          </View>
        </View>
      </Pressable>
    </Animated.View>
  );

  if (loading) {
    return (
      <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading your matches...</Text>
        </View>
      </LinearGradient>
    );
  }

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <View style={[styles.content, { paddingTop: insets.top + 20 }]}>
        <View style={styles.header}>
          <Text style={styles.title}>Matches</Text>
          <Text style={styles.subtitle}>
            {matches.length} connection{matches.length !== 1 ? 's' : ''}
          </Text>
        </View>

        {/* Super Likes Section */}
        {superLikes.length > 0 && (
          <View style={styles.superLikesSection}>
            <View style={styles.superLikesHeader}>
              <Ionicons name="star" size={20} color="#FFD700" />
              <Text style={styles.superLikesTitle}>Super Likes</Text>
              <View style={styles.superLikesBadge}>
                <Text style={styles.superLikesBadgeText}>{superLikes.length}</Text>
              </View>
            </View>
            <Text style={styles.superLikesSubtitle}>
              People who super liked you
            </Text>
            
            <FlatList
              data={superLikes}
              renderItem={renderSuperLikeItem}
              keyExtractor={(item) => item.id}
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={styles.superLikesContent}
            />
          </View>
        )}

        {/* Regular Matches Section */}
        <View style={styles.matchesSection}>
          {superLikes.length > 0 && (
            <View style={styles.sectionHeader}>
              <Text style={styles.sectionTitle}>Your Matches</Text>
            </View>
          )}
          
          {matches.length === 0 ? (
            <ScrollView
              contentContainerStyle={styles.emptyScrollContent}
              refreshControl={
                <RefreshControl
                  refreshing={refreshing}
                  onRefresh={onRefresh}
                  tintColor="#9945FF"
                  colors={['#9945FF']}
                  title="Pull to refresh"
                  titleColor="#9945FF"
                />
              }
            >
              <View style={styles.emptyContainer}>
                <Ionicons name="people-outline" size={64} color="#666666" />
                <Text style={styles.emptyTitle}>No matches yet</Text>
                <Text style={styles.emptyText}>
                  Keep swiping to find your perfect collaborators
                </Text>
              </View>
            </ScrollView>
          ) : (
            <FlatList
              data={matches}
              renderItem={renderMatchItem}
              keyExtractor={(item) => item.id}
              contentContainerStyle={styles.listContent}
              showsVerticalScrollIndicator={false}
              refreshControl={
                <RefreshControl
                  refreshing={refreshing}
                  onRefresh={onRefresh}
                  tintColor="#9945FF"
                  colors={['#9945FF']}
                  title="Pull to refresh"
                  titleColor="#9945FF"
                />
              }
            />
          )}
        </View>
      </View>

      {/* Profile Card Viewer Modal */}
      {(selectedMatch || selectedSuperLike) && (
        <ProfileCardViewer
          visible={showProfileViewer}
          onClose={() => {
            setShowProfileViewer(false);
            setSelectedMatch(null);
            setSelectedSuperLike(null);
          }}
          userProfile={
            selectedMatch 
              ? convertToUserProfile(selectedMatch)
              : selectedSuperLike 
                ? convertSuperLikeToUserProfile(selectedSuperLike)
                : null as any
          }
          onTip={(userId: string, amount: number) => {
            const username = selectedMatch?.other_user.username || selectedSuperLike?.other_user.username;
            console.log(`💰 Tipping ${amount} BONK to ${username}`);
            // TODO: Implement tipping functionality
          }}
          onSwipeLeft={(userProfile) => {
            console.log('👈 Passed on:', userProfile.username);
            // Close modal - no further action needed for existing matches
            setShowProfileViewer(false);
            setSelectedMatch(null);
            setSelectedSuperLike(null);
          }}
          onSwipeRight={(userProfile) => {
            console.log('👉 Liked:', userProfile.username);
            // For existing matches, this could open chat
            if (selectedMatch) {
              setShowProfileViewer(false);
              setSelectedMatch(null);
              setSelectedSuperLike(null);
              // Navigate to chat
              handleChatPress(selectedMatch, { stopPropagation: () => {} });
            } else if (selectedSuperLike) {
              // Handle super like back
              handleSuperLikeAction(selectedSuperLike, 'like');
              setShowProfileViewer(false);
              setSelectedSuperLike(null);
            }
          }}
          onSuperLike={(userProfile) => {
            console.log('⭐ Super liked:', userProfile.username);
            // For existing matches/super likes, treat as regular like
            if (selectedMatch) {
              handleChatPress(selectedMatch, { stopPropagation: () => {} });
            } else if (selectedSuperLike) {
              handleSuperLikeAction(selectedSuperLike, 'like');
            }
            setShowProfileViewer(false);
            setSelectedMatch(null);
            setSelectedSuperLike(null);
          }}
        />
      )}
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    flex: 1,
  },
  header: {
    paddingHorizontal: 24,
    marginBottom: 20,
  },
  title: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
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
  listContent: {
    paddingHorizontal: 24,
  },
  matchItem: {
    marginBottom: 16,
  },
  matchItemPressed: {
    opacity: 0.8,
  },
  matchCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  avatarContainer: {
    marginRight: 16,
  },
  avatar: {
    width: 64,
    height: 64,
    borderRadius: 32,
  },
  avatarPlaceholder: {
    width: 64,
    height: 64,
    borderRadius: 32,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  matchInfo: {
    flex: 1,
  },
  matchName: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  matchBio: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 8,
  },
  skillsContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 8,
  },
  skillTag: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 12,
    marginRight: 6,
  },
  skillText: {
    fontSize: 10,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  moreSkills: {
    fontSize: 10,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  matchDate: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  matchActions: {
    flexDirection: 'column',
    alignItems: 'center',
  },
  actionButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 8,
  },
  emptyScrollContent: {
    flex: 1,
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 48,
    minHeight: 400,
  },
  emptyTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 8,
  },
  emptyText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
  },
  // Super Likes Styles
  superLikesSection: {
    marginBottom: 24,
  },
  superLikesHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 24,
    marginBottom: 4,
  },
  superLikesTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginLeft: 8,
    flex: 1,
  },
  superLikesBadge: {
    backgroundColor: '#FFD700',
    borderRadius: 10,
    paddingHorizontal: 8,
    paddingVertical: 2,
    minWidth: 20,
    alignItems: 'center',
  },
  superLikesBadgeText: {
    fontSize: 12,
    fontFamily: 'Inter-Bold',
    color: '#0A0E27',
  },
  superLikesSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    paddingHorizontal: 24,
    marginBottom: 16,
  },
  superLikesContent: {
    paddingHorizontal: 24,
  },
  superLikeCard: {
    width: 120,
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 12,
    marginRight: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    alignItems: 'center',
  },
  superLikeAvatarContainer: {
    position: 'relative',
    marginBottom: 8,
  },
  superLikeAvatar: {
    width: 60,
    height: 60,
    borderRadius: 30,
  },
  superLikeAvatarPlaceholder: {
    width: 60,
    height: 60,
    borderRadius: 30,
    justifyContent: 'center',
    alignItems: 'center',
  },
  superLikeAvatarText: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  superLikeBadge: {
    position: 'absolute',
    bottom: -2,
    right: -2,
    backgroundColor: '#FFD700',
    borderRadius: 10,
    width: 20,
    height: 20,
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 2,
    borderColor: '#0A0E27',
  },
  superLikeName: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    textAlign: 'center',
    marginBottom: 8,
  },
  superLikeActions: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    width: '100%',
  },
  superLikeActionButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 1,
  },
  passButton: {
    backgroundColor: 'rgba(255, 82, 82, 0.1)',
    borderColor: 'rgba(255, 82, 82, 0.3)',
  },
  likeButton: {
    backgroundColor: 'rgba(76, 175, 80, 0.1)',
    borderColor: 'rgba(76, 175, 80, 0.3)',
  },
  // Section Styles
  matchesSection: {
    flex: 1,
  },
  sectionHeader: {
    paddingHorizontal: 24,
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
});