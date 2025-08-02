import React, { useState, useCallback, useEffect } from 'react';
import { View, StyleSheet, Dimensions, Platform } from 'react-native';
import {
  PanGestureHandler,
  PanGestureHandlerGestureEvent,
} from 'react-native-gesture-handler';
import Animated, {
  useAnimatedGestureHandler,
  useSharedValue,
  useAnimatedStyle,
  withSpring,
  runOnJS,
  interpolate,
} from 'react-native-reanimated';
import { usePrivy } from '@privy-io/expo';
import { SwipeCard } from './SwipeCard';
import { AnalyticsService } from '../../lib/services/analyticsService';

const { width: screenWidth } = Dimensions.get('window');
const SWIPE_THRESHOLD = screenWidth * 0.4;
const SWIPE_VELOCITY = 800;

interface UserProfile {
  id: string;
  username: string;
  bio: string;
  avatar_url?: string;
  skills: string[];
  looking_for: string[];
  wallet_address: string;
  reputation_score?: number;
}

interface SwipeStackProps {
  users: UserProfile[];
  onSwipeLeft: (user: UserProfile) => void;
  onSwipeRight: (user: UserProfile) => void;
  onSuperLike?: (user: UserProfile) => void;
  onNoMoreCards?: () => void;
  onProgrammaticSwipe?: (swipeLeft: () => void, swipeRight: () => void, superLike: () => void) => void;
  onCardTap?: (user: UserProfile) => void;
}

export function SwipeStack({ 
  users, 
  onSwipeLeft, 
  onSwipeRight,
  onSuperLike,
  onNoMoreCards,
  onProgrammaticSwipe,
  onCardTap
}: SwipeStackProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const translateX = useSharedValue(0);
  const { user } = usePrivy();

  const handleSwipe = useCallback(async (direction: 'left' | 'right' | 'super') => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;

    // Track swipe event
    if (user?.id) {
      await AnalyticsService.trackSwipe(user.id, currentUser.id, direction);
    }

    if (direction === 'left') {
      onSwipeLeft(currentUser);
    } else if (direction === 'right') {
      onSwipeRight(currentUser);
    } else if (direction === 'super') {
      onSuperLike?.(currentUser);
    }

    if (currentIndex === users.length - 1) {
      onNoMoreCards?.();
    } else {
      setCurrentIndex(currentIndex + 1);
    }
  }, [currentIndex, users, onSwipeLeft, onSwipeRight, onSuperLike, onNoMoreCards, user?.id]);

  const handleSwipeWithUser = useCallback(async (targetUser: UserProfile, direction: 'left' | 'right' | 'super') => {
    if (!targetUser) return;

    // Track swipe event
    if (user?.id) {
      await AnalyticsService.trackSwipe(user.id, targetUser.id, direction);
    }

    if (direction === 'left') {
      onSwipeLeft(targetUser);
    } else if (direction === 'right') {
      onSwipeRight(targetUser);
    } else if (direction === 'super') {
      onSuperLike?.(targetUser);
    }

    if (currentIndex === users.length - 1) {
      onNoMoreCards?.();
    } else {
      setCurrentIndex(currentIndex + 1);
    }
  }, [currentIndex, users, onSwipeLeft, onSwipeRight, onSuperLike, onNoMoreCards, user?.id]);

  const programmaticSwipeLeft = useCallback(() => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;
    
    translateX.value = withSpring(-screenWidth * 1.5, {}, () => {
      runOnJS(handleSwipeWithUser)(currentUser, 'left');
      translateX.value = 0;
    });
  }, [handleSwipeWithUser]);

  const programmaticSwipeRight = useCallback(() => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;
    
    translateX.value = withSpring(screenWidth * 1.5, {}, () => {
      runOnJS(handleSwipeWithUser)(currentUser, 'right');
      translateX.value = 0;
    });
  }, [handleSwipeWithUser]);

  const programmaticSuperLike = useCallback(() => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;
    
    // Super like with a special animation (scale up slightly)
    translateX.value = withSpring(0, {}, () => {
      runOnJS(handleSwipeWithUser)(currentUser, 'super');
    });
  }, [handleSwipeWithUser]);

  // Expose programmatic swipe functions to parent
  useEffect(() => {
    if (onProgrammaticSwipe) {
      onProgrammaticSwipe(programmaticSwipeLeft, programmaticSwipeRight, programmaticSuperLike);
    }
  }, [onProgrammaticSwipe]);

  const gestureHandler = useAnimatedGestureHandler<
    PanGestureHandlerGestureEvent,
    { startX: number; startTime: number; moved: boolean }
  >({
    onStart: (_, context) => {
      context.startX = translateX.value;
      context.startTime = Date.now();
      context.moved = false;
    },
    onActive: (event, context) => {
      // More sensitive movement detection for physical devices
      const movementThreshold = Platform.OS === 'ios' ? 5 : 3;
      if (Math.abs(event.translationX) > movementThreshold || Math.abs(event.translationY) > movementThreshold) {
        context.moved = true;
        translateX.value = context.startX + event.translationX;
      }
    },
    onEnd: (event, context) => {
      const tapDuration = Date.now() - context.startTime;
      const isQuickTap = tapDuration < 300 && !context.moved;
      
      if (isQuickTap) {
        // Handle tap - trigger card tap for current card
        const currentUser = users[currentIndex];
        if (currentUser && onCardTap) {
          runOnJS(onCardTap)(currentUser);
        }
        translateX.value = withSpring(0);
        return;
      }
      
      const shouldSwipeLeft = 
        translateX.value < -SWIPE_THRESHOLD || 
        event.velocityX < -SWIPE_VELOCITY;
      const shouldSwipeRight = 
        translateX.value > SWIPE_THRESHOLD || 
        event.velocityX > SWIPE_VELOCITY;

      // Capture the current user BEFORE starting animation to prevent race conditions
      const currentUser = users[currentIndex];
      
      if (shouldSwipeLeft) {
        translateX.value = withSpring(-screenWidth * 1.5, {}, () => {
          runOnJS(handleSwipeWithUser)(currentUser, 'left');
          translateX.value = 0;
        });
      } else if (shouldSwipeRight) {
        translateX.value = withSpring(screenWidth * 1.5, {}, () => {
          runOnJS(handleSwipeWithUser)(currentUser, 'right');
          translateX.value = 0;
        });
      } else {
        translateX.value = withSpring(0);
      }
    },
  });

  const renderCards = () => {
    return users
      .slice(currentIndex, currentIndex + 2)
      .reverse()
      .map((user, index) => (
        <SwipeCard
          key={user.id}
          user={user}
          index={currentIndex + (1 - index)}
          animatedValue={translateX}
          currentIndex={currentIndex}
          onCardTap={onCardTap}
        />
      ));
  };

  return (
    <View style={styles.container}>
      <PanGestureHandler 
        onGestureEvent={gestureHandler}
        activeOffsetX={Platform.OS === 'ios' ? [-3, 3] : [-2, 2]}
        failOffsetY={Platform.OS === 'ios' ? [-15, 15] : [-10, 10]}
        maxPointers={1}
        minPointers={1}
        shouldCancelWhenOutside={false}
        enableTrackpadTwoFingerGesture={false}
      >
        <Animated.View style={styles.stack}>
          {renderCards()}
        </Animated.View>
      </PanGestureHandler>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  stack: {
    width: screenWidth - 48,
    height: (screenWidth - 48) * 1.5,
    alignItems: 'center',
    justifyContent: 'center',
  },
});