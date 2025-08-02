import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Modal,
  Pressable,
  Dimensions,
  StatusBar,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedGestureHandler,
  useAnimatedStyle,
  useSharedValue,
  withSpring,
  withTiming,
  runOnJS,
} from 'react-native-reanimated';
import { PanGestureHandler } from 'react-native-gesture-handler';

import { SimpleMainProfileCard } from './cards/SimpleMainProfileCard';
import { AboutMeCard } from './cards/AboutMeCard';
import { LookingForCard } from './cards/LookingForCard';
import { GitHubLinkCard } from './cards/GitHubLinkCard';
import { AvailabilityCard } from './cards/AvailabilityCard';
import { SocialProofCard } from './cards/SocialProofCard';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');
const CARD_WIDTH = screenWidth - 48; // Same as profile-card.tsx
const CARD_HEIGHT = CARD_WIDTH * 1.8; // Extend height more

interface UserProfile {
  id: string;
  username: string;
  bio: string;
  avatar_url?: string;
  twitter_avatar_url?: string;
  skills: string[];
  looking_for: string[];
  experience_level?: string;
  interests?: string[];
  location?: string;
  timezone?: string;
  github_url?: string;
  website_url?: string;
  twitter_url?: string;
  reputation_score?: number;
  response_time?: string;
  wallet_address?: string;
}

interface ProfileCardViewerProps {
  visible: boolean;
  onClose: () => void;
  userProfile: UserProfile;
  onTip?: (userId: string, amount: number) => void;
  onSwipeLeft?: (userProfile: UserProfile) => void;
  onSwipeRight?: (userProfile: UserProfile) => void;
  onSuperLike?: (userProfile: UserProfile) => void;
}

export function ProfileCardViewer({ 
  visible, 
  onClose, 
  userProfile,
  onTip,
  onSwipeLeft,
  onSwipeRight,
  onSuperLike
}: ProfileCardViewerProps) {
  const [currentCardIndex, setCurrentCardIndex] = useState(0);
  const currentCardIndexShared = useSharedValue(0);
  const translateX = useSharedValue(0);
  const scale = useSharedValue(0);
  const opacity = useSharedValue(0);

  // Animation for modal entrance
  useEffect(() => {
    if (visible) {
      scale.value = withSpring(1, { damping: 20, stiffness: 200 });
      opacity.value = withTiming(1, { duration: 300 });
      // Reset to first card when modal opens
      setCurrentCardIndex(0);
      currentCardIndexShared.value = 0;
      translateX.value = 0;
    } else {
      scale.value = withTiming(0, { duration: 200 });
      opacity.value = withTiming(0, { duration: 200 });
    }
  }, [visible]);

  // Build card array exactly like profile-card.tsx
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
      { component: <SocialProofCard userProfile={userProfile} onTip={onTip} />, id: 'social', title: 'Social Proof' }
    );

    return cards;
  };

  const cardArray = getCardArray();
  const TOTAL_CARDS = cardArray.length;
  
  console.log('🔥 ProfileCardViewer CARD_HEIGHT:', CARD_HEIGHT);
  console.log('🔥 ProfileCardViewer screenWidth:', screenWidth);

  // Sync shared value with state
  useEffect(() => {
    currentCardIndexShared.value = currentCardIndex;
  }, [currentCardIndex]);

  // EXACT gesture handler from profile-card.tsx
  const panGestureHandler = useAnimatedGestureHandler({
    onStart: () => {
      console.log('🔥 ProfileCardViewer PAN GESTURE STARTED!');
    },
    onActive: (event) => {
      console.log('🔥 ProfileCardViewer PAN GESTURE ACTIVE:', event.translationX);
      // Only handle horizontal gestures after significant horizontal movement
      const isHorizontalGesture = Math.abs(event.translationX) > Math.abs(event.translationY) && Math.abs(event.translationX) > 10;
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

  // EXACT animation style from profile-card.tsx
  const cardsAnimatedStyle = useAnimatedStyle(() => {
    return {
      transform: [{ translateX: translateX.value }],
    };
  });

  const modalAnimatedStyle = useAnimatedStyle(() => {
    return {
      transform: [{ scale: scale.value }],
      opacity: opacity.value,
    };
  });

  const handleTip = (userId: string, amount: number) => {
    if (onTip) {
      onTip(userId, amount);
    }
  };

  if (!visible) return null;

  return (
    <View style={[StyleSheet.absoluteFill, { zIndex: 1000, backgroundColor: 'rgba(0, 0, 0, 0.8)' }]}>
      <StatusBar backgroundColor="rgba(0, 0, 0, 0.8)" barStyle="light-content" />
      
      <Animated.View style={[styles.modalContainer, modalAnimatedStyle]}>
        {/* Close Button */}
        <Pressable style={styles.closeButton} onPress={onClose}>
          <View style={styles.closeButtonInner}>
            <Ionicons name="close" size={24} color="#FFFFFF" />
          </View>
        </Pressable>

        {/* Card Container - EXACT structure from profile-card.tsx */}
        <View style={styles.cardContainer}>
          <View style={styles.cardViewport}>
            <PanGestureHandler 
              onGestureEvent={panGestureHandler}
              activeOffsetX={[-10, 10]}
              failOffsetY={[-10, 10]}
            >
              <Animated.View style={[styles.cardsWrapper, cardsAnimatedStyle]}>
                {cardArray.map((card, index) => {
                  console.log('🔥 Rendering card:', card.title, 'at index:', index);
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
      </Animated.View>
    </View>
  );
}

// Styles copied exactly from profile-card.tsx and adapted for modal
const styles = StyleSheet.create({
  modalContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingTop: 80, // Lower the cards a bit
  },
  closeButton: {
    position: 'absolute',
    top: 60,
    right: 20,
    zIndex: 100,
  },
  closeButtonInner: {
    width: 44,
    height: 44,
    borderRadius: 22,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  // EXACT styles from profile-card.tsx
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
  },
});