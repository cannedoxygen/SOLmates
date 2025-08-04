import React, { useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Modal,
  Image,
  Pressable,
  Dimensions,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
  withTiming,
  withSequence,
  withDelay,
  interpolate,
  runOnJS,
  withRepeat,
} from 'react-native-reanimated';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

interface UserProfile {
  id: string;
  username: string;
  avatar_url?: string;
}

interface MatchModalProps {
  visible: boolean;
  onClose: () => void;
  currentUser: UserProfile;
  matchedUser: UserProfile;
  onSendMessage: () => void;
  onKeepSwiping: () => void;
}

export function MatchModal({
  visible,
  onClose,
  currentUser,
  matchedUser,
  onSendMessage,
  onKeepSwiping
}: MatchModalProps) {
  const scale = useSharedValue(0);
  const opacity = useSharedValue(0);
  const heartsOpacity = useSharedValue(0);
  const currentUserScale = useSharedValue(0);
  const matchedUserScale = useSharedValue(0);
  const sparklesOpacity = useSharedValue(0);
  const titleScale = useSharedValue(0);
  const buttonsTranslateY = useSharedValue(50);
  const confettiOpacity = useSharedValue(0);
  const confettiRotation = useSharedValue(0);
  const confettiTranslateY = useSharedValue(-100);
  const glowOpacity = useSharedValue(0);
  const pulseScale = useSharedValue(1);
  const shimmerX = useSharedValue(-100);

  useEffect(() => {
    if (visible) {
      // Start the entrance animation sequence
      opacity.value = withTiming(1, { duration: 300 });
      scale.value = withSpring(1, { damping: 20, stiffness: 200 });
      
      // Animate hearts background
      heartsOpacity.value = withDelay(200, withTiming(1, { duration: 800 }));
      
      // Animate user avatars with stagger
      currentUserScale.value = withDelay(300, withSpring(1, { damping: 15, stiffness: 150 }));
      matchedUserScale.value = withDelay(500, withSpring(1, { damping: 15, stiffness: 150 }));
      
      // Animate sparkles
      sparklesOpacity.value = withDelay(600, withSequence(
        withTiming(1, { duration: 300 }),
        withTiming(0.7, { duration: 500 }),
        withTiming(1, { duration: 500 })
      ));
      
      // Animate title
      titleScale.value = withDelay(700, withSpring(1, { damping: 10, stiffness: 100 }));
      
      // Animate buttons
      buttonsTranslateY.value = withDelay(800, withSpring(0, { damping: 15, stiffness: 120 }));
      
      // Animate confetti
      confettiOpacity.value = withDelay(100, withSequence(
        withTiming(1, { duration: 500 }),
        withDelay(2000, withTiming(0, { duration: 1000 }))
      ));
      confettiRotation.value = withRepeat(withTiming(360, { duration: 3000 }), -1, false);
      confettiTranslateY.value = withDelay(100, withTiming(screenHeight, { duration: 3000 }));
      
      // Animate glow effect
      glowOpacity.value = withDelay(400, withSequence(
        withTiming(1, { duration: 800 }),
        withRepeat(withSequence(
          withTiming(0.6, { duration: 1000 }),
          withTiming(1, { duration: 1000 })
        ), -1, true)
      ));
      
      // Pulse effect on center heart
      pulseScale.value = withDelay(600, withRepeat(
        withSequence(
          withTiming(1.2, { duration: 600 }),
          withTiming(1, { duration: 600 })
        ), -1, true
      ));
      
      // Shimmer effect on title
      shimmerX.value = withDelay(1000, withRepeat(
        withTiming(screenWidth + 100, { duration: 2000 }),
        -1,
        false
      ));
    } else {
      // Reset all animations
      scale.value = 0;
      opacity.value = 0;
      heartsOpacity.value = 0;
      currentUserScale.value = 0;
      matchedUserScale.value = 0;
      sparklesOpacity.value = 0;
      titleScale.value = 0;
      buttonsTranslateY.value = 50;
      confettiOpacity.value = 0;
      confettiRotation.value = 0;
      confettiTranslateY.value = -100;
      glowOpacity.value = 0;
      pulseScale.value = 1;
      shimmerX.value = -100;
    }
  }, [visible]);

  const modalAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
    opacity: opacity.value,
  }));

  const heartsAnimatedStyle = useAnimatedStyle(() => ({
    opacity: heartsOpacity.value,
  }));

  const currentUserAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: currentUserScale.value }],
  }));

  const matchedUserAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: matchedUserScale.value }],
  }));

  const sparklesAnimatedStyle = useAnimatedStyle(() => ({
    opacity: sparklesOpacity.value,
  }));

  const titleAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: titleScale.value }],
  }));

  const buttonsAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ translateY: buttonsTranslateY.value }],
    opacity: interpolate(buttonsTranslateY.value, [50, 0], [0, 1]),
  }));

  const confettiAnimatedStyle = useAnimatedStyle(() => ({
    opacity: confettiOpacity.value,
    transform: [
      { rotate: `${confettiRotation.value}deg` },
      { translateY: confettiTranslateY.value }
    ],
  }));

  const glowAnimatedStyle = useAnimatedStyle(() => ({
    opacity: glowOpacity.value,
  }));

  const pulseAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: pulseScale.value }],
  }));

  const shimmerAnimatedStyle = useAnimatedStyle(() => ({
    transform: [{ translateX: shimmerX.value }],
  }));

  const handleKeepSwiping = () => {
    runOnJS(onKeepSwiping)();
    runOnJS(onClose)();
  };

  const handleSendMessage = () => {
    runOnJS(onSendMessage)();
    runOnJS(onClose)();
  };

  const renderAvatar = (user: UserProfile, isCurrentUser: boolean) => {
    const animatedStyle = isCurrentUser ? currentUserAnimatedStyle : matchedUserAnimatedStyle;
    
    return (
      <Animated.View style={[styles.avatarContainer, animatedStyle]}>
        <View
          style={[styles.avatarBorder, { backgroundColor: '#9945FF' }]}
        >
          {user.avatar_url ? (
            <Image
              source={{ uri: user.avatar_url }}
              style={styles.avatar}
              resizeMode="cover"
            />
          ) : (
            <View
              style={[styles.avatar, { backgroundColor: '#9945FF' }]}
            >
              <Text style={styles.avatarText}>
                {user.username?.charAt(0)?.toUpperCase() || '?'}
              </Text>
            </View>
          )}
        </View>
        
        {/* Username */}
        <Text style={styles.username}>{user.username}</Text>
      </Animated.View>
    );
  };

  const renderSparkles = () => {
    const sparklePositions = [
      { top: '15%', left: '10%', size: 20, delay: 0 },
      { top: '25%', right: '15%', size: 16, delay: 200 },
      { top: '45%', left: '8%', size: 24, delay: 400 },
      { top: '60%', right: '12%', size: 18, delay: 600 },
      { top: '70%', left: '15%', size: 14, delay: 800 },
      { top: '20%', right: '35%', size: 22, delay: 300 },
      { top: '50%', left: '35%', size: 16, delay: 500 },
      { top: '35%', right: '8%', size: 20, delay: 700 },
    ];

    return sparklePositions.map((sparkle, index) => {
      const sparkleRotation = useSharedValue(0);
      sparkleRotation.value = withDelay(sparkle.delay, withRepeat(
        withTiming(360, { duration: 2000 + index * 200 }),
        -1,
        false
      ));
      
      const sparkleAnimatedStyle = useAnimatedStyle(() => ({
        opacity: sparklesOpacity.value,
        transform: [{ rotate: `${sparkleRotation.value}deg` }],
      }));
      
      return (
        <Animated.View
          key={index}
          style={[
            styles.sparkle,
            {
              top: sparkle.top as any,
              left: sparkle.left as any,
              right: sparkle.right as any,
            },
            sparkleAnimatedStyle,
          ]}
        >
          <Ionicons name="star" size={sparkle.size} color="#FFD700" />
        </Animated.View>
      );
    });
  };

  const renderHearts = () => {
    const heartPositions = [
      { top: '10%', left: '20%', size: 24, delay: 0 },
      { top: '30%', right: '25%', size: 20, delay: 300 },
      { top: '50%', left: '25%', size: 28, delay: 600 },
      { top: '65%', right: '20%', size: 22, delay: 900 },
      { top: '80%', left: '30%', size: 18, delay: 1200 },
    ];

    return heartPositions.map((heart, index) => (
      <Animated.View
        key={index}
        style={[
          styles.heart,
          {
            top: heart.top as any,
            left: heart.left as any,
            right: heart.right as any,
          },
          heartsAnimatedStyle,
        ]}
      >
        <Ionicons name="heart" size={heart.size} color="#FF6B9D" />
      </Animated.View>
    ));
  };

  const renderConfetti = () => {
    const confettiPieces = [
      { top: '5%', left: '10%', color: '#FF6B9D', size: 8, delay: 0 },
      { top: '10%', left: '20%', color: '#9945FF', size: 6, delay: 100 },
      { top: '15%', left: '30%', color: '#FFD700', size: 10, delay: 200 },
      { top: '8%', left: '40%', color: '#FF6B9D', size: 7, delay: 300 },
      { top: '12%', left: '50%', color: '#00D4AA', size: 9, delay: 400 },
      { top: '6%', left: '60%', color: '#9945FF', size: 8, delay: 500 },
      { top: '11%', left: '70%', color: '#FFD700', size: 6, delay: 600 },
      { top: '9%', left: '80%', color: '#FF6B9D', size: 10, delay: 700 },
      { top: '7%', right: '10%', color: '#00D4AA', size: 8, delay: 800 },
      { top: '13%', right: '20%', color: '#9945FF', size: 7, delay: 900 },
      { top: '4%', right: '30%', color: '#FFD700', size: 9, delay: 1000 },
      { top: '16%', right: '40%', color: '#FF6B9D', size: 6, delay: 1100 },
    ];

    return confettiPieces.map((piece, index) => (
      <Animated.View
        key={index}
        style={[
          styles.confetti,
          {
            top: piece.top as any,
            left: piece.left as any,
            right: piece.right as any,
            backgroundColor: piece.color,
            width: piece.size,
            height: piece.size,
          },
          confettiAnimatedStyle,
        ]}
      />
    ));
  };

  return (
    <Modal
      visible={visible}
      transparent
      animationType="none"
      statusBarTranslucent
      onRequestClose={onClose}
    >
      <View style={styles.overlay}>
        <View
          style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.8)' }]}
        />
        
        {/* Animated background elements */}
        {renderHearts()}
        {renderSparkles()}
        {renderConfetti()}

        <Animated.View style={[styles.modalContainer, modalAnimatedStyle]}>
          {/* Match Title with shimmer */}
          <Animated.View style={[styles.titleContainer, titleAnimatedStyle]}>
            <View
              style={[styles.titleBackground, { backgroundColor: '#FF6B9D' }]}
            >
              <Text style={styles.matchTitle}>It's a Match!</Text>
              <Animated.View style={[styles.shimmer, shimmerAnimatedStyle]} />
            </View>
            <Ionicons name="heart" size={32} color="#FF6B9D" style={styles.heartIcon} />
          </Animated.View>

          {/* User Avatars */}
          <View style={styles.avatarsContainer}>
            {renderAvatar(currentUser, true)}
            
            {/* Heart in center with pulse and glow */}
            <Animated.View style={[styles.centerHeart, sparklesAnimatedStyle, pulseAnimatedStyle]}>
              <Animated.View style={[styles.glowRing, glowAnimatedStyle]} />
              <View
                style={[styles.centerHeartBg, { backgroundColor: '#FF6B9D' }]}
              >
                <Ionicons name="heart" size={40} color="#FFFFFF" />
              </View>
            </Animated.View>
            
            {renderAvatar(matchedUser, false)}
          </View>

          {/* Match Message */}
          <Text style={styles.matchMessage}>
            You and {matchedUser.username} like each other!
          </Text>
          {/* Debug info - remove after fixing */}
          {__DEV__ && (
            <Text style={[styles.matchMessage, {fontSize: 10, opacity: 0.5}]}>
              Current: {currentUser.username} | Matched: {matchedUser.username}
            </Text>
          )}

          {/* Action Buttons */}
          <Animated.View style={[styles.buttonsContainer, buttonsAnimatedStyle]}>
            <Pressable style={styles.secondaryButton} onPress={handleKeepSwiping}>
              <Text style={styles.secondaryButtonText}>Keep Swiping</Text>
            </Pressable>
            
            <Pressable style={styles.primaryButton} onPress={handleSendMessage}>
              <View
                style={[styles.primaryButtonGradient, { backgroundColor: '#9945FF' }]}
              >
                <Ionicons name="chatbubble" size={20} color="#FFFFFF" />
                <Text style={styles.primaryButtonText}>Send Message</Text>
              </View>
            </Pressable>
          </Animated.View>
        </Animated.View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  overlay: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  modalContainer: {
    width: screenWidth * 0.9,
    backgroundColor: 'rgba(25, 30, 50, 0.95)',
    borderRadius: 32,
    padding: 32,
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  titleContainer: {
    alignItems: 'center',
    marginBottom: 40,
    position: 'relative',
  },
  titleBackground: {
    paddingHorizontal: 24,
    paddingVertical: 12,
    borderRadius: 20,
    marginBottom: 8,
  },
  matchTitle: {
    fontSize: 28,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    textAlign: 'center',
  },
  heartIcon: {
    position: 'absolute',
    top: -10,
    right: -10,
  },
  avatarsContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    width: '100%',
    marginBottom: 32,
    position: 'relative',
  },
  avatarContainer: {
    alignItems: 'center',
    flex: 1,
  },
  avatarBorder: {
    width: 100,
    height: 100,
    borderRadius: 50,
    padding: 4,
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 12,
  },
  avatar: {
    width: 92,
    height: 92,
    borderRadius: 46,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  username: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    textAlign: 'center',
  },
  centerHeart: {
    position: 'absolute',
    left: '50%',
    top: '20%',
    marginLeft: -30,
    zIndex: 10,
  },
  centerHeartBg: {
    width: 60,
    height: 60,
    borderRadius: 30,
    justifyContent: 'center',
    alignItems: 'center',
    shadowColor: '#FF6B9D',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.3,
    shadowRadius: 8,
    elevation: 8,
  },
  matchMessage: {
    fontSize: 18,
    fontFamily: 'Inter-Medium',
    color: 'rgba(255, 255, 255, 0.8)',
    textAlign: 'center',
    marginBottom: 40,
    lineHeight: 24,
  },
  buttonsContainer: {
    width: '100%',
    gap: 16,
  },
  primaryButton: {
    borderRadius: 16,
    overflow: 'hidden',
    width: '100%',
  },
  primaryButtonGradient: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 16,
    gap: 8,
  },
  primaryButtonText: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  secondaryButton: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 16,
    paddingVertical: 16,
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  secondaryButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: 'rgba(255, 255, 255, 0.8)',
  },
  sparkle: {
    position: 'absolute',
  },
  heart: {
    position: 'absolute',
  },
  confetti: {
    position: 'absolute',
    borderRadius: 2,
  },
  glowRing: {
    position: 'absolute',
    width: 80,
    height: 80,
    borderRadius: 40,
    backgroundColor: '#FF6B9D',
    top: -10,
    left: -10,
    shadowColor: '#FF6B9D',
    shadowOffset: { width: 0, height: 0 },
    shadowOpacity: 0.8,
    shadowRadius: 20,
    elevation: 20,
  },
  shimmer: {
    position: 'absolute',
    top: 0,
    bottom: 0,
    width: 30,
    backgroundColor: 'rgba(255, 255, 255, 0.3)',
    borderRadius: 20,
  },
});