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
  const [swipedCardId, setSwipedCardId] = useState<string | null>(null);
  const translateX = useSharedValue(0);
  const { user } = usePrivy();

  const handleSwipe = useCallback(async (direction: 'left' | 'right' | 'super') => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;

    // Let MatchingService handle analytics tracking to avoid duplicates
    if (direction === 'left') {
      onSwipeLeft(currentUser);
    } else if (direction === 'right') {
      onSwipeRight(currentUser);
    } else if (direction === 'super') {
      onSuperLike?.(currentUser);
    }

    // Always move to next card first
    setCurrentIndex(currentIndex + 1);
    
    // Then check if we're out of cards
    if (currentIndex + 1 >= users.length) {
      onNoMoreCards?.();
    }
  }, [currentIndex, users, onSwipeLeft, onSwipeRight, onSuperLike, onNoMoreCards]);

  const handleSwipeWithUser = useCallback(async (targetUser: UserProfile, direction: 'left' | 'right' | 'super') => {
    if (!targetUser) return;

    // Track swipe event for limits (this is required!)
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

    // Update state immediately - the defer was causing issues
    setCurrentIndex(prev => {
      const newIndex = prev + 1;
      // Check if we're out of cards
      if (newIndex >= users.length) {
        onNoMoreCards?.();
      }
      return newIndex;
    });
    // Clear the swiped card ID after index updates
    setSwipedCardId(null);
  }, [users, onSwipeLeft, onSwipeRight, onSuperLike, onNoMoreCards, user?.id]);

  const programmaticSwipeLeft = useCallback(() => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;
    
    translateX.value = withSpring(-screenWidth * 1.5, { 
      damping: 20, 
      stiffness: 150,
      mass: 1
    }, (finished) => {
      if (finished) {
        translateX.value = 0;
        runOnJS(handleSwipeWithUser)(currentUser, 'left');
      }
    });
  }, [handleSwipeWithUser, currentIndex, users]);

  const programmaticSwipeRight = useCallback(() => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;
    
    translateX.value = withSpring(screenWidth * 1.5, { 
      damping: 20, 
      stiffness: 150,
      mass: 1
    }, (finished) => {
      if (finished) {
        translateX.value = 0;
        runOnJS(handleSwipeWithUser)(currentUser, 'right');
      }
    });
  }, [handleSwipeWithUser, currentIndex, users]);

  const programmaticSuperLike = useCallback(() => {
    const currentUser = users[currentIndex];
    if (!currentUser) return;
    
    // Super like with animation
    translateX.value = withSpring(screenWidth * 0.5, {}, (finished) => {
      if (finished) {
        translateX.value = 0;
        runOnJS(handleSwipeWithUser)(currentUser, 'super');
      }
    });
  }, [handleSwipeWithUser, currentIndex, users]);

  // Reset translateX when currentIndex changes - completely disable this to prevent reversion
  useEffect(() => {
    // Completely disable auto-reset to prevent card reversion
    // translateX will be managed by animation callbacks only
  }, [currentIndex]);

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
        // Immediately hide the swiped card using runOnJS
        runOnJS(setSwipedCardId)(currentUser.id);
        translateX.value = withSpring(-screenWidth * 1.5, { 
          damping: 20, 
          stiffness: 150,
          mass: 1
        }, (finished) => {
          if (finished) {
            // Reset translateX BEFORE handling swipe to prevent flicker
            translateX.value = 0;
            runOnJS(handleSwipeWithUser)(currentUser, 'left');
          }
        });
      } else if (shouldSwipeRight) {
        // Immediately hide the swiped card using runOnJS
        runOnJS(setSwipedCardId)(currentUser.id);
        translateX.value = withSpring(screenWidth * 1.5, { 
          damping: 20, 
          stiffness: 150,
          mass: 1
        }, (finished) => {
          if (finished) {
            // Reset translateX BEFORE handling swipe to prevent flicker
            translateX.value = 0;
            runOnJS(handleSwipeWithUser)(currentUser, 'right');
          }
        });
      } else {
        translateX.value = withSpring(0, { 
          damping: 20, 
          stiffness: 200,
          mass: 0.8
        });
      }
    },
  });

  const renderCards = () => {
    // Show 3 cards: current, next, and one behind for smooth transitions
    return users
      .slice(currentIndex, currentIndex + 3)
      .reverse()
      .map((user, index) => {
        // Hide the swiped card immediately
        if (swipedCardId === user.id) {
          return null;
        }
        
        return (
          <SwipeCard
            key={user.id}
            user={user}
            index={currentIndex + (2 - index)}
            animatedValue={translateX}
            currentIndex={currentIndex}
            onCardTap={onCardTap}
          />
        );
      })
      .filter(Boolean); // Remove null entries
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
    overflow: 'visible',
  },
  stack: {
    width: screenWidth - 48,
    height: (screenWidth - 48) * 1.4,
    alignItems: 'center',
    justifyContent: 'center',
    overflow: 'visible',
  },
});