import React, { useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Image,
  Dimensions,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  interpolate,
  useSharedValue,
  withRepeat,
  withTiming,
} from 'react-native-reanimated';

const { width: screenWidth } = Dimensions.get('window');

interface UserProfile {
  id: string;
  username: string;
  bio: string;
  avatar_url?: string;
  twitter_avatar_url?: string;
  reputation_score?: number;
  response_time?: string;
}

interface SimpleMainProfileCardProps {
  userProfile: UserProfile;
}

export function SimpleMainProfileCard({ userProfile }: SimpleMainProfileCardProps) {
  const glowAnimation = useSharedValue(0);

  useEffect(() => {
    glowAnimation.value = withRepeat(
      withTiming(1, { duration: 2000 }),
      -1,
      true
    );
  }, []);

  const glowStyle = useAnimatedStyle(() => {
    const scale = interpolate(glowAnimation.value, [0, 1], [1, 1.05]);
    const opacity = interpolate(glowAnimation.value, [0, 1], [0.7, 1]);
    
    return {
      transform: [{ scale }],
      opacity,
    };
  });

  const avatarUrl = userProfile.twitter_avatar_url || userProfile.avatar_url;

  const getReputationColor = (score: number = 0) => {
    if (score >= 90) return ['#00FF88', '#00CC6A'];
    if (score >= 70) return ['#FFD700', '#FFA500'];
    if (score >= 50) return ['#FF6B6B', '#FF4757'];
    return ['#A0A0A0', '#808080'];
  };

  const getResponseTimeColor = (time: string = 'Unknown') => {
    if (time.includes('minute')) return '#00FF88';
    if (time.includes('hour')) return '#FFD700';
    if (time.includes('day')) return '#FF6B6B';
    return '#A0A0A0';
  };

  return (
    <View style={[styles.card, { backgroundColor: 'rgba(25, 30, 50, 0.95)' }]}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      {/* Background Pattern */}
      <View style={styles.backgroundPattern}>
        {Array.from({ length: 20 }).map((_, i) => (
          <View
            key={i}
            style={[
              styles.patternDot,
              {
                left: `${Math.random() * 100}%`,
                top: `${Math.random() * 100}%`,
                opacity: Math.random() * 0.3,
              }
            ]}
          />
        ))}
      </View>

      {/* Content Container */}
      <View style={styles.contentContainer}>
        {/* Avatar Section */}
        <View style={styles.avatarSection}>
          <Animated.View style={[styles.avatarContainer, glowStyle]}>
            <View style={[styles.avatarBorder, { backgroundColor: '#9945FF' }]}>
              {avatarUrl ? (
                <Image
                  source={{ uri: avatarUrl }}
                  style={styles.avatar}
                  resizeMode="cover"
                />
              ) : (
                <View style={[styles.avatar, { backgroundColor: '#9945FF' }]}>
                  <Text style={styles.avatarText}>
                    {userProfile.username?.charAt(0)?.toUpperCase() || '?'}
                  </Text>
                </View>
              )}
            </View>
          </Animated.View>

          {/* Verified Badge */}
          <View style={styles.verifiedBadge}>
            <Ionicons name="checkmark-circle" size={24} color="#14F195" />
          </View>
        </View>

        {/* User Info - Name and Bio */}
        <View style={styles.userInfo}>
          <Text style={styles.username}>{userProfile.username}</Text>
          
          {userProfile.bio && (
            <Text style={styles.bio}>
              {userProfile.bio}
            </Text>
          )}
        </View>

        {/* Stats Section - Rep, Response, Status */}
        <View style={styles.statsSection}>
          {/* Reputation Score */}
          <View style={styles.statItem}>
            <View
              style={[styles.statIcon, { backgroundColor: getReputationColor(userProfile.reputation_score)[0] }]}
            >
              <Ionicons name="star" size={18} color="#FFFFFF" />
            </View>
            <Text style={styles.statLabel}>Reputation</Text>
            <Text style={styles.statValue}>{userProfile.reputation_score || 0}/100</Text>
          </View>

          {/* Response Time */}
          <View style={styles.statItem}>
            <View style={[styles.statIcon, { backgroundColor: getResponseTimeColor(userProfile.response_time) }]}>
              <Ionicons name="time" size={18} color="#FFFFFF" />
            </View>
            <Text style={styles.statLabel}>Response</Text>
            <Text style={styles.statValue}>{userProfile.response_time || 'Unknown'}</Text>
          </View>

          {/* Online Status */}
          <View style={styles.statItem}>
            <View style={[styles.statIcon, { backgroundColor: '#14F195' }]}>
              <View style={styles.onlineDot} />
            </View>
            <Text style={styles.statLabel}>Status</Text>
            <Text style={styles.statValue}>Online</Text>
          </View>
        </View>

        {/* Swipe Hint */}
        <View style={styles.swipeHint}>
          <Text style={styles.swipeHintText}>Swipe to see more</Text>
          <Ionicons name="chevron-forward" size={16} color="#9945FF" />
        </View>
      </View>

      {/* Floating Elements */}
      <View style={styles.floatingElements}>
        <Animated.View style={[styles.floatingElement, { top: 50, right: 30 }]}>
          <Ionicons name="diamond" size={16} color="#9945FF" />
        </Animated.View>
        <Animated.View style={[styles.floatingElement, { bottom: 120, left: 40 }]}>
          <Ionicons name="star" size={12} color="#14F195" />
        </Animated.View>
        <Animated.View style={[styles.floatingElement, { top: 200, left: 20 }]}>
          <Ionicons name="flash" size={14} color="#FFD700" />
        </Animated.View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    borderRadius: 24,
    padding: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    overflow: 'hidden',
  },
  backgroundPattern: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  patternDot: {
    position: 'absolute',
    width: 2,
    height: 2,
    borderRadius: 1,
    backgroundColor: '#9945FF',
  },
  contentContainer: {
    flex: 1,
    alignItems: 'center',
    paddingVertical: 20,
  },
  avatarSection: {
    alignItems: 'center',
    marginBottom: 24,
  },
  avatarContainer: {
    position: 'relative',
  },
  avatarBorder: {
    width: 140,
    height: 140,
    borderRadius: 70,
    padding: 4,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatar: {
    width: 132,
    height: 132,
    borderRadius: 66,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 50,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  verifiedBadge: {
    position: 'absolute',
    bottom: -8,
    right: -8,
    backgroundColor: 'rgba(15, 20, 35, 0.9)',
    borderRadius: 16,
    padding: 4,
    borderWidth: 2,
    borderColor: '#14F195',
  },
  userInfo: {
    alignItems: 'center',
    maxWidth: '90%',
  },
  username: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 16,
    textAlign: 'center',
  },
  bio: {
    fontSize: 18,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.8)',
    textAlign: 'center',
    lineHeight: 26,
    paddingHorizontal: 20,
  },
  statsSection: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingTop: 24,
    paddingBottom: 16,
    marginTop: 24,
    borderTopWidth: 1,
    borderTopColor: 'rgba(255, 255, 255, 0.1)',
    width: '100%',
  },
  statItem: {
    alignItems: 'center',
    flex: 1,
  },
  statIcon: {
    width: 36,
    height: 36,
    borderRadius: 18,
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 6,
  },
  statLabel: {
    fontSize: 11,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
    marginBottom: 2,
  },
  statValue: {
    fontSize: 12,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    textAlign: 'center',
  },
  onlineDot: {
    width: 10,
    height: 10,
    borderRadius: 5,
    backgroundColor: '#FFFFFF',
  },
  swipeHint: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: 32,
    paddingHorizontal: 16,
    paddingVertical: 8,
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 20,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  swipeHintText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginRight: 4,
  },
  floatingElements: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    pointerEvents: 'none',
  },
  floatingElement: {
    position: 'absolute',
    opacity: 0.6,
  },
});