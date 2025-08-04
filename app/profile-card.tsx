// Polyfills now handled globally in index.js
import { useState, useEffect, useRef } from 'react';
import { View, Text, StyleSheet, Pressable, Alert, ActivityIndicator, Dimensions, ScrollView, Image } from 'react-native';
// import * as Clipboard from 'expo-clipboard'; // Requires development build
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy, useEmbeddedSolanaWallet } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { SimpleMainProfileCard } from '../components/profile/cards/SimpleMainProfileCard';
import { AboutMeCard } from '../components/profile/cards/AboutMeCard';
import { LookingForCard } from '../components/profile/cards/LookingForCard';
import { GitHubLinkCard } from '../components/profile/cards/GitHubLinkCard';
import { AvailabilityCard } from '../components/profile/cards/AvailabilityCard';
import { SocialProofCard } from '../components/profile/cards/SocialProofCard';
import { UserProfile } from '../lib/matching/matchEngine';
import { ProfileService } from '../lib/services/profileService';
import Animated, {
  useAnimatedGestureHandler,
  useAnimatedStyle,
  useSharedValue,
  withSpring,
  runOnJS,
} from 'react-native-reanimated';
import { PanGestureHandler } from 'react-native-gesture-handler';

const { width: screenWidth } = Dimensions.get('window');
const CARD_WIDTH = screenWidth - 48; // Same as ProfileDisplayCard
const CARD_HEIGHT = CARD_WIDTH * 1.8; // Extended height

export default function ProfileCard() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const { wallets } = useEmbeddedSolanaWallet();
  const [userProfile, setUserProfile] = useState<UserProfile | null>(null);
  const [loading, setLoading] = useState(true);
  const [currentCardIndex, setCurrentCardIndex] = useState(0);
  const currentCardIndexShared = useSharedValue(0);
  const translateX = useSharedValue(0);
  
  useEffect(() => {
    if (user) {
      loadUserProfile();
    }
  }, [user?.id]);

  const loadUserProfile = async () => {
    if (!user) return;

    try {
      
      // Get the user's Supabase profile data
      let supabaseProfile = await ProfileService.getUserProfile(user.id);
      
      if (!supabaseProfile) {
        // If no profile exists, sync the user
        supabaseProfile = await ProfileService.syncPrivyUser(user, wallets?.[0]?.address);
      }
      
      // Convert Supabase profile to UserProfile format
      const profile: UserProfile = ProfileService.convertToUserProfile(supabaseProfile);
      
      
      setUserProfile(profile);
    } catch (error) {
      console.error('Failed to load user profile:', error);
      Alert.alert('Error', 'Failed to load your profile');
    } finally {
      setLoading(false);
    }
  };

  // Build card array dynamically based on user profile
  const getCardArray = () => {
    if (!userProfile) return [];
    
    const cards = [
      { component: <SimpleMainProfileCard userProfile={userProfile} />, id: 'main', title: 'Profile' },
      { component: <AboutMeCard userProfile={userProfile} />, id: 'about', title: 'About Me' },
      { component: <LookingForCard userProfile={userProfile} />, id: 'looking', title: 'Looking For' },
    ];

    // Only add GitHubLinkCard if user has GitHub or Website URL
    if (userProfile.github_url || userProfile.website_url) {
      cards.push({ component: <GitHubLinkCard userProfile={userProfile} />, id: 'links', title: 'Projects & Links' });
    }

    cards.push(
      { component: <AvailabilityCard userProfile={userProfile} />, id: 'availability', title: 'Availability' },
      { component: <SocialProofCard userProfile={userProfile} onTip={handleTip} />, id: 'social', title: 'Social Proof' }
    );

    return cards;
  };

  const cardArray = getCardArray();
  const TOTAL_CARDS = cardArray.length;

  // SIMPLE: Just ensure first card shows
  useEffect(() => {
    if (userProfile) {
      setCurrentCardIndex(0);
      currentCardIndexShared.value = 0;
      translateX.value = 0;
    }
  }, [userProfile]);

  // Sync state changes to animation values - BUT SKIP INDEX 0
  useEffect(() => {
    if (currentCardIndex === 0) {
      // Don't move for first card - stay at translateX = 0
      currentCardIndexShared.value = 0;
      translateX.value = 0;
    } else {
      // Move for other cards
      currentCardIndexShared.value = currentCardIndex;
      translateX.value = -currentCardIndex * screenWidth;
    }
  }, [currentCardIndex]);

  const handleCardSwipe = (direction: 'left' | 'right') => {
    if (direction === 'right' && currentCardIndex < TOTAL_CARDS - 1) {
      const newIndex = currentCardIndex + 1;
      setCurrentCardIndex(newIndex);
      currentCardIndexShared.value = newIndex;
      translateX.value = withSpring(-newIndex * screenWidth, {
        damping: 20,
        stiffness: 300,
      });
    } else if (direction === 'left' && currentCardIndex > 0) {
      const newIndex = currentCardIndex - 1;
      setCurrentCardIndex(newIndex);
      currentCardIndexShared.value = newIndex;
      translateX.value = withSpring(-newIndex * screenWidth, {
        damping: 20,
        stiffness: 300,
      });
    }
  };

  const panGestureHandler = useAnimatedGestureHandler({
    onActive: (event) => {
      // Only handle horizontal gestures, allow vertical scrolling
      const isHorizontalGesture = Math.abs(event.translationX) > Math.abs(event.translationY);
      if (isHorizontalGesture) {
        translateX.value = -(currentCardIndexShared.value * screenWidth) + event.translationX;
      }
    },
    onEnd: (event) => {
      const threshold = screenWidth * 0.2; // Lower threshold
      const velocityThreshold = 250; // Lower velocity threshold
      
      const shouldSwipeLeft = event.translationX > threshold || event.velocityX > velocityThreshold;
      const shouldSwipeRight = event.translationX < -threshold || event.velocityX < -velocityThreshold;
      
      if (shouldSwipeLeft && currentCardIndexShared.value > 0) {
        // Move directly without runOnJS for smoother animation
        const newIndex = currentCardIndexShared.value - 1;
        currentCardIndexShared.value = newIndex;
        translateX.value = withSpring(-newIndex * screenWidth, {
          damping: 15,
          stiffness: 400,
        });
        runOnJS(setCurrentCardIndex)(newIndex);
      } else if (shouldSwipeRight && currentCardIndexShared.value < TOTAL_CARDS - 1) {
        // Move directly without runOnJS for smoother animation
        const newIndex = currentCardIndexShared.value + 1;
        currentCardIndexShared.value = newIndex;
        translateX.value = withSpring(-newIndex * screenWidth, {
          damping: 15,
          stiffness: 400,
        });
        runOnJS(setCurrentCardIndex)(newIndex);
      } else {
        // Snap back with faster spring animation
        translateX.value = withSpring(-(currentCardIndexShared.value * screenWidth), {
          damping: 15,
          stiffness: 400,
        });
      }
    },
  });

  const cardsAnimatedStyle = useAnimatedStyle(() => {
    return {
      transform: [{ translateX: translateX.value }],
    };
  });

  const handleTip = (userId: string, amount: number) => {
    Alert.alert('Tip Sent!', `You sent ${amount} BONK to yourself! 😄`);
  };

  if (!user) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.emptyContainer}>
          <Text style={styles.emptyText}>Please log in to see your profile card</Text>
        </View>
      </View>
    );
  }

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.emptyContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.emptyText}>Loading your profile...</Text>
        </View>
      </View>
    );
  }

  if (!userProfile) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.emptyContainer}>
          <Text style={styles.emptyText}>Failed to load profile</Text>
        </View>
      </View>
    );
  }

  return (
    <View
      style={[styles.container, { backgroundColor: '#0A0E27' }]}
    >
      <View style={[styles.content, { paddingTop: insets.top + 10 }]}>
        <View style={styles.header}>
          <Pressable style={styles.backButton} onPress={() => router.back()}>
            <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
          </Pressable>
          <View style={styles.headerCenter}>
            <Text style={styles.title}>Your Profile Card</Text>
            <Text style={styles.subtitle}>This is how others see you when swiping</Text>
          </View>
          <View style={styles.profileButton}>
            {userProfile?.avatar_url || userProfile?.twitter_avatar_url ? (
              <Image
                source={{ 
                  uri: userProfile.twitter_avatar_url || userProfile.avatar_url 
                }}
                style={styles.profileButtonImage}
                resizeMode="cover"
              />
            ) : (
              <View style={[styles.profileButtonImage, { backgroundColor: '#9945FF' }]}>
                <Text style={styles.profileButtonText}>
                  {userProfile?.username?.charAt(0)?.toUpperCase() || '?'}
                </Text>
              </View>
            )}
          </View>
        </View>

        {/* Swipeable Cards Container */}
        <View style={styles.cardContainer}>
          <View style={styles.cardViewport}>
            <PanGestureHandler onGestureEvent={panGestureHandler}>
              <Animated.View style={[styles.cardsWrapper, cardsAnimatedStyle]}>
                {cardArray.map((card, index) => {
                  return (
                    <View key={card.id} style={styles.card}>
                      <View style={styles.cardContent}>
                        {card.component}
                      </View>
                    </View>
                  );
                })}
              </Animated.View>
            </PanGestureHandler>
          </View>
          
        </View>

        <View style={styles.buttonContainer}>
          <Pressable 
            style={styles.editButton}
            onPress={() => {
              router.back();
              router.push('/(auth)/onboarding');
            }}
          >
            <Ionicons name="create-outline" size={20} color="#9945FF" />
            <Text style={styles.editButtonText}>Edit Profile</Text>
          </Pressable>
        </View>

      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    flex: 1,
    paddingHorizontal: 24,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 20,
  },
  backButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  profileButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    overflow: 'hidden',
  },
  profileButtonImage: {
    width: 36,
    height: 36,
    borderRadius: 18,
    justifyContent: 'center',
    alignItems: 'center',
  },
  profileButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
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
  cardContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    width: '100%',
  },
  cardViewport: {
    width: screenWidth,
    height: CARD_HEIGHT,
    overflow: 'hidden',
  },
  cardsWrapper: {
    flexDirection: 'row',
    alignItems: 'center',
    height: CARD_HEIGHT,
  },
  card: {
    width: screenWidth,
    height: CARD_HEIGHT,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 24,
  },
  cardContent: {
    width: CARD_WIDTH,
    height: CARD_HEIGHT,
    justifyContent: 'center',
    alignItems: 'center',
  },
  scrollableCard: {
    width: CARD_WIDTH,
    height: CARD_HEIGHT,
  },
  scrollableCardContent: {
    flexGrow: 1,
    paddingVertical: 0,
  },
  buttonContainer: {
    paddingHorizontal: 24,
    paddingBottom: 40,
  },
  editButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  editButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#9945FF',
    marginLeft: 8,
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 48,
  },
  emptyText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
  },
});