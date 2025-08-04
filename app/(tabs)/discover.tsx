import { useState, useEffect, useCallback } from 'react';
import { View, Text, StyleSheet, Alert, ActivityIndicator, ScrollView, RefreshControl } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { usePrivy } from '@privy-io/expo';
import { useRouter } from 'expo-router';
import { SwipeStack } from '../../components/swipe/SwipeStack';
import { SwipeActions } from '../../components/swipe/SwipeActions';
import { createMatchEngine, MatchEngine, UserProfile } from '../../lib/matching/matchEngine';
import { ProfileCardViewer } from '../../components/profile/ProfileCardViewer';
import { supabase } from '../../lib/supabase/client';
import { AnalyticsService } from '../../lib/services/analyticsService';
import { PremiumService } from '../../lib/services/premiumService';
import { notificationService } from '../../lib/services/notifications';
import { MatchingService } from '../../lib/services/matchingService';
import { glassEffects } from '../../lib/styles/glassEffects';
import Animated, { FadeIn, FadeOut } from 'react-native-reanimated';
import { getBestAvatarUrl } from '../../lib/utils/imageUtils';
import { MatchModal } from '../../components/match/MatchModal';

export default function Discover() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const [users, setUsers] = useState<UserProfile[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [matchEngine, setMatchEngine] = useState<MatchEngine | null>(null);
  const [noMoreCards, setNoMoreCards] = useState(false);
  const [currentUserProfile, setCurrentUserProfile] = useState<any>(null);
  const [swipeFunctions, setSwipeFunctions] = useState<{
    swipeLeft: () => void;
    swipeRight: () => void;
    superLike: () => void;
  } | null>(null);
  const [showProfileViewer, setShowProfileViewer] = useState(false);
  const [selectedProfile, setSelectedProfile] = useState<UserProfile | null>(null);
  const [showMatchModal, setShowMatchModal] = useState(false);
  const [matchedUser, setMatchedUser] = useState<UserProfile | null>(null);

  useEffect(() => {
    if (user) {
      initializeMatching();
    }
  }, [user?.id]);

  const initializeMatching = async (isRefreshing = false) => {
    if (!user) return;

    try {
      if (!isRefreshing) setLoading(true);
      console.log('🔄 Loading users from Supabase...');
      
      // Get current user's Supabase profile
      const { data: userProfile } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', user.id)
        .single();

      if (!userProfile) {
        console.log('❌ Current user not found in Supabase');
        setUsers([]);
        setNoMoreCards(true);
        return;
      }
      
      setCurrentUserProfile(userProfile);

      // Create user profile for matching engine
      const userProfileData: UserProfile = {
        id: userProfile.id,
        username: userProfile.username || 'User',
        bio: userProfile.bio || '',
        avatar_url: getBestAvatarUrl(userProfile.twitter_avatar_url, userProfile.avatar_url),
        skills: userProfile.skills || [],
        looking_for: userProfile.looking_for || [],
        wallet_address: userProfile.wallet_address || '',
        reputation_score: userProfile.reputation_score || 0,
      };

      const engine = await createMatchEngine(userProfileData.id, userProfileData);
      setMatchEngine(engine);
      
      // Get all users who have already been swiped on
      const { data: swipedUsers } = await supabase
        .from('swipes')
        .select('swiped_id')
        .eq('swiper_id', userProfile.id);
      
      const swipedUserIds = swipedUsers?.map(s => s.swiped_id) || [];
      console.log(`📊 User has already swiped on ${swipedUserIds.length} profiles`);
      
      // Load potential matches from Supabase (exclude current user and already swiped)
      const { data: potentialMatches, error } = await supabase
        .from('users')
        .select('*')
        .neq('id', userProfile.id)
        .not('id', 'in', `(${swipedUserIds.length > 0 ? swipedUserIds.join(',') : '00000000-0000-0000-0000-000000000000'})`)
        .eq('is_active', true)
        .eq('profile_completed', true)
        .order('created_at', { ascending: false })
        .limit(50);

      if (error) {
        console.error('❌ Error loading potential matches:', error);
        setUsers([]);
        setNoMoreCards(true);
        return;
      }

      // Convert Supabase users to UserProfile format
      const formattedUsers: UserProfile[] = (potentialMatches || []).map(user => ({
        id: user.id,
        username: user.username || user.display_name || 'Unknown',
        bio: user.bio || 'No bio available',
        avatar_url: getBestAvatarUrl(user.twitter_avatar_url, user.avatar_url),
        skills: user.skills || [],
        looking_for: user.looking_for || [],
        wallet_address: user.wallet_address || '',
        reputation_score: user.reputation_score || 0,
        github_url: user.github_url,
        twitter_url: user.twitter_url,
        website_url: user.website_url,
      }));

      console.log(`✅ Loaded ${formattedUsers.length} potential matches from Supabase`);
      setUsers(formattedUsers);
      setNoMoreCards(formattedUsers.length === 0);
      
      if (isRefreshing && formattedUsers.length === 0) {
        Alert.alert('No New Profiles', 'Check back later for more potential collaborators!');
      }
    } catch (error) {
      console.error('Failed to initialize matching:', error);
      Alert.alert('Error', 'Failed to load potential matches');
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  };
  
  const onRefresh = useCallback(() => {
    console.log('🔄 Pull to refresh triggered');
    setRefreshing(true);
    setNoMoreCards(false);
    initializeMatching(true);
  }, [user]);

  const handleSwipeLeft = async (swipedUser: UserProfile) => {
    if (!matchEngine || !currentUserProfile || !user) return;
    console.log('👈 Swiped left on:', swipedUser.username);
    
    try {
      // Check if user can perform swipe
      const canSwipe = await PremiumService.canPerformAction(user.id, 'swipe');
      
      if (!canSwipe) {
        const userLimits = await PremiumService.getUserLimits(user.id);
        Alert.alert(
          'Daily Swipe Limit Reached',
          userLimits.is_premium 
            ? 'You\'ve reached your daily swipe limit. Try again tomorrow!'
            : 'You\'ve reached your free daily swipe limit (20). Upgrade to Premium for unlimited swipes!',
          [
            { text: 'OK', style: 'cancel' },
            { 
              text: userLimits.is_premium ? 'Got it' : 'Upgrade', 
              onPress: () => {
                if (!userLimits.is_premium) {
                  router.push('/premium');
                }
              }
            }
          ]
        );
        return;
      }
      
      // Use MatchingService to record swipe
      await MatchingService.recordSwipe(
        currentUserProfile.id,
        swipedUser.id,
        'left'
      );
    } catch (error) {
      console.error('Failed to record left swipe:', error);
    }
  };

  const handleSwipeRight = async (swipedUser: UserProfile) => {
    if (!matchEngine || !currentUserProfile || !user) return;
    console.log('👉 Swiped right on:', swipedUser.username);
    
    try {
      // Use MatchingService to record swipe and check for match
      const result = await MatchingService.recordSwipe(
        currentUserProfile.id,
        swipedUser.id,
        'right'
      );
      
      console.log('📊 Swipe result:', result);
      
      // If there's a match, show the match modal
      if (result.match) {
        console.log('🎉 Match detected!', result.match);
        
        // Send match notifications to both users
        try {
          if (user?.id) {
            console.log('📱 Sending match notification to current user:', user.id);
            await notificationService.sendMatchNotification(user.id, swipedUser.username);
          }
          
          // Get the matched user's Privy ID to send notification
          const { data: recipientProfile } = await supabase
            .from('users')
            .select('privy_user_id')
            .eq('id', swipedUser.id)
            .single();
          
          if (recipientProfile?.privy_user_id) {
            console.log('📱 Sending match notification to matched user:', recipientProfile.privy_user_id);
            await notificationService.sendMatchNotification(recipientProfile.privy_user_id, currentUserProfile.username || 'Someone');
          }
        } catch (notificationError) {
          console.error('❌ Failed to send match notifications:', notificationError);
        }
        
        // Show enhanced match modal
        console.log('🎯 Setting matched user:', swipedUser.username, 'Current user:', currentUserProfile.username);
        setMatchedUser(swipedUser);
        setShowMatchModal(true);
      }
    } catch (error) {
      console.error('❌ Failed to record right swipe:', error);
      
      // Silently handle errors for demo
      if (error.message?.includes('Daily swipe limit')) {
        console.log('⚠️ Daily swipe limit reached');
        // For demo, could auto-navigate to premium page without alert
      } else if (error.message?.includes('Already swiped')) {
        console.log('⚠️ User already swiped on this person');
      }
    }
  };

  const handleSuperLike = async (swipedUser: UserProfile) => {
    if (!matchEngine || !currentUserProfile || !user) return;
    console.log('⭐ Super liked:', swipedUser.username);
    
    try {
      // Check if user can perform super like
      const canSuperLike = await PremiumService.canPerformAction(user.id, 'super_swipe');
      
      if (!canSuperLike) {
        console.log('⚠️ No super swipes left - silently skipping for demo');
        return;
      }
      
      // Record the super like in Supabase
      const { data: swipeData } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: currentUserProfile.id,
          swiped_id: swipedUser.id,
          direction: 'super',
          created_at: new Date().toISOString(),
        }])
        .select();
        
      // Track super like analytics
      if (user?.id) {
        await AnalyticsService.trackSwipe(user.id, swipedUser.id, 'super');
      }
        
      // Check if they swiped right on us (super likes always create matches if they liked us)
      const { data: reciprocalSwipe } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', swipedUser.id)
        .eq('swiped_id', currentUserProfile.id)
        .eq('direction', 'right')
        .single();
        
      if (reciprocalSwipe) {
        // It's a match! Create the match record
        // Use consistent ordering to avoid duplicate matches with different user order
        const user1_id = currentUserProfile.id < swipedUser.id ? currentUserProfile.id : swipedUser.id;
        const user2_id = currentUserProfile.id < swipedUser.id ? swipedUser.id : currentUserProfile.id;
        
        // First check if match already exists
        const { data: existingMatch } = await supabase
          .from('matches')
          .select('*')
          .eq('user1_id', user1_id)
          .eq('user2_id', user2_id)
          .single();
          
        if (existingMatch) {
          console.log('✅ Super Match already exists:', existingMatch.id);
          // For demo - just log, no modal
          console.log(`🎉 Super Match with ${swipedUser.username}!`);
          return;
        }
        
        const { data: match, error: matchError } = await supabase
          .from('matches')
          .insert([{
            user1_id,
            user2_id,
            user1_liked: true,
            user2_liked: true,
            matched_at: new Date().toISOString(),
          }])
          .select();
          
        if (matchError) {
          console.error('❌ Failed to create match:', matchError);
          // Don't return here - still show the match notification to the user
        }
          
        // Track match creation
        if (user?.id && match?.[0]) {
          await AnalyticsService.trackMatch(user.id, swipedUser.id, match[0].id);
        }
        
        // Send match notifications to both users
        try {
          if (user?.id) {
            console.log('📱 Sending super match notification to current user:', user.id);
            await notificationService.sendMatchNotification(user.id, swipedUser.username);
          }
          
          // Get the matched user's Privy ID to send notification
          const { data: recipientProfile } = await supabase
            .from('users')
            .select('privy_user_id')
            .eq('id', swipedUser.id)
            .single();
          
          if (recipientProfile?.privy_user_id) {
            console.log('📱 Sending super match notification to matched user:', recipientProfile.privy_user_id);
            await notificationService.sendMatchNotification(recipientProfile.privy_user_id, currentUserProfile.username || 'Someone');
          }
        } catch (notificationError) {
          console.error('❌ Failed to send super match notifications:', notificationError);
          // Don't show error to user - notification failure shouldn't block the flow
        }
          
        // For demo - just log super match, no modal
        console.log(`🎉 Super Match with ${swipedUser.username}!`);
      } else {
        // Send super like notification to the recipient
        try {
          // Get the swiped user's Privy ID to send notification
          const { data: recipientProfile } = await supabase
            .from('users')
            .select('privy_user_id')
            .eq('id', swipedUser.id)
            .single();
          
          if (recipientProfile?.privy_user_id) {
            console.log('📱 Sending super like notification to:', recipientProfile.privy_user_id);
            await notificationService.sendSuperLikeNotification(recipientProfile.privy_user_id);
          }
        } catch (notificationError) {
          console.error('❌ Failed to send super like notification:', notificationError);
          // Don't show error to user - notification failure shouldn't block the flow
        }
        
        // For demo - just log super like sent, no modal
        console.log(`⭐ Super Like sent to ${swipedUser.username}!`);
      }
    } catch (error) {
      console.error('Failed to record super like:', error);
    }
  };

  const handleNoMoreCards = async () => {
    setNoMoreCards(true);
    console.log('📭 No more cards to show');
  };

  const handleCardTap = (user: UserProfile) => {
    console.log('🃏 Opening profile viewer for:', user.username);
    setSelectedProfile(user);
    setShowProfileViewer(true);
  };

  const handleProgrammaticSwipe = useCallback((swipeLeft: () => void, swipeRight: () => void, superLike: () => void) => {
    setSwipeFunctions({ swipeLeft, swipeRight, superLike });
  }, []);

  if (loading) {
    return (
      <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Finding your perfect collabs...</Text>
        </View>
      </LinearGradient>
    );
  }

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      {/* Fixed Header */}
      <View style={[styles.header, glassEffects.subtleGlass, { padding: 20, marginHorizontal: 24, marginTop: insets.top + 20, marginBottom: 20 }]}>
        <Text style={styles.title}>Discover</Text>
        <Text style={styles.subtitle}>Swipe right to connect</Text>
      </View>

      {/* Swipe Area - No ScrollView interference */}
      <View style={styles.swipeContainer}>
        {noMoreCards ? (
          <ScrollView
            style={styles.scrollView}
            contentContainerStyle={[styles.content]}
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
            showsVerticalScrollIndicator={false}
          >
            <Animated.View 
              entering={FadeIn}
              exiting={FadeOut}
              style={[styles.noCardsContainer, glassEffects.secondaryGlass, { margin: 24, padding: 40 }]}
            >
              <Text style={styles.noCardsTitle}>No More Profiles</Text>
              <Text style={styles.noCardsText}>
                Pull down to check for new profiles!
              </Text>
            </Animated.View>
          </ScrollView>
        ) : (
          <ScrollView
            contentContainerStyle={styles.swipeScrollContent}
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
            scrollEnabled={false}
          >
            <SwipeStack
              users={users}
              onSwipeLeft={handleSwipeLeft}
              onSwipeRight={handleSwipeRight}
              onSuperLike={handleSuperLike}
              onNoMoreCards={handleNoMoreCards}
              onCardTap={handleCardTap}
              onProgrammaticSwipe={handleProgrammaticSwipe}
            />
            <SwipeActions
              onReject={() => {
                swipeFunctions?.swipeLeft();
              }}
              onLike={() => {
                swipeFunctions?.swipeRight();
              }}
              onSuperLike={() => {
                swipeFunctions?.superLike();
              }}
            />
          </ScrollView>
        )}
      </View>

      {/* Profile Card Viewer Modal */}
      {selectedProfile && (
        <ProfileCardViewer
          visible={showProfileViewer}
          onClose={() => {
            setShowProfileViewer(false);
            setSelectedProfile(null);
          }}
          userProfile={selectedProfile}
          onTip={(userId: string, amount: number) => {
            console.log(`💰 Tipping ${amount} BONK to ${selectedProfile.username}`);
            // TODO: Implement tipping functionality
          }}
          onSwipeLeft={(userProfile) => {
            console.log('👈 Passed on:', userProfile.username);
            setShowProfileViewer(false);
            setSelectedProfile(null);
            // Trigger the actual swipe left action
            handleSwipeLeft(userProfile);
          }}
          onSwipeRight={(userProfile) => {
            console.log('👉 Liked:', userProfile.username);
            setShowProfileViewer(false);
            setSelectedProfile(null);
            // Trigger the actual swipe right action
            handleSwipeRight(userProfile);
          }}
          onSuperLike={(userProfile) => {
            console.log('⭐ Super liked:', userProfile.username);
            setShowProfileViewer(false);
            setSelectedProfile(null);
            // Trigger the actual super like action
            handleSuperLike(userProfile);
          }}
        />
      )}

      {/* Enhanced Match Modal */}
      {matchedUser && currentUserProfile && (
        <MatchModal
          visible={showMatchModal}
          onClose={() => {
            setShowMatchModal(false);
            setMatchedUser(null);
          }}
          currentUser={{
            id: currentUserProfile.id,
            username: currentUserProfile.username || 'You',
            avatar_url: getBestAvatarUrl(currentUserProfile.twitter_avatar_url, currentUserProfile.avatar_url)
          }}
          matchedUser={{
            id: matchedUser.id,
            username: matchedUser.username,
            avatar_url: matchedUser.avatar_url
          }}
          onSendMessage={async () => {
            setShowMatchModal(false);
            setMatchedUser(null);
            
            try {
              // Try to find existing chat first
              const { data: existingChat } = await supabase
                .from('chats')
                .select('*')
                .or(
                  `and(user1_id.eq.${currentUserProfile.id},user2_id.eq.${matchedUser.id}),and(user1_id.eq.${matchedUser.id},user2_id.eq.${currentUserProfile.id})`
                )
                .single();
              
              if (existingChat) {
                router.push(`/chat/${existingChat.id}`);
              } else {
                // Create new chat
                const user1_id = currentUserProfile.id < matchedUser.id ? currentUserProfile.id : matchedUser.id;
                const user2_id = currentUserProfile.id < matchedUser.id ? matchedUser.id : currentUserProfile.id;
                
                const { data: newChat } = await supabase
                  .from('chats')
                  .insert([{
                    user1_id,
                    user2_id,
                    created_at: new Date().toISOString(),
                  }])
                  .select('*')
                  .single();
                
                if (newChat) {
                  router.push(`/chat/${newChat.id}`);
                }
              }
            } catch (error) {
              console.error('Failed to navigate to chat:', error);
            }
          }}
          onKeepSwiping={() => {
            setShowMatchModal(false);
            setMatchedUser(null);
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
  scrollView: {
    flex: 1,
  },
  content: {
    flex: 1,
  },
  header: {
    paddingHorizontal: 24,
    marginBottom: 20,
    textAlign: 'center',
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
  swipeContainer: {
    flex: 1,
  },
  swipeScrollContent: {
    flex: 1,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    ...glassEffects.secondaryGlass,
    margin: 24,
    padding: 40,
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginTop: 16,
  },
  noCardsContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 48,
    textAlign: 'center',
  },
  noCardsTitle: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  noCardsText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
  },
});