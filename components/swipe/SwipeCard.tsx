import React, { useEffect } from 'react';
import { View, Text, StyleSheet, Image, Dimensions, Pressable } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { Ionicons } from '@expo/vector-icons';
import { usePrivy } from '@privy-io/expo';
import Animated, {
  useAnimatedStyle,
  interpolate,
  Extrapolate,
} from 'react-native-reanimated';
import { AnalyticsService } from '../../lib/services/analyticsService';
import { getHighResTwitterImage } from '../../lib/utils/imageUtils';

const { width: screenWidth } = Dimensions.get('window');
const CARD_WIDTH = screenWidth - 48;
const CARD_HEIGHT = CARD_WIDTH * 1.5;

interface UserProfile {
  id: string;
  username: string;
  bio: string;
  avatar_url?: string;
  skills: string[];
  looking_for: string[];
  wallet_address: string;
  reputation_score?: number;
  github_url?: string;
  twitter_url?: string;
  website_url?: string;
}

interface SwipeCardProps {
  user: UserProfile;
  index: number;
  animatedValue: Animated.SharedValue<number>;
  currentIndex: number;
  onCardTap?: (user: UserProfile) => void;
}

export function SwipeCard({ user, index, animatedValue, currentIndex, onCardTap }: SwipeCardProps) {
  const { user: currentUser } = usePrivy();

  // Track profile view when card becomes visible
  useEffect(() => {
    if (index === currentIndex && currentUser?.id) {
      AnalyticsService.trackProfileView(currentUser.id, user.id);
    }
  }, [index, currentIndex, currentUser?.id, user.id]);

  const animatedStyle = useAnimatedStyle(() => {
    const isTop = index === currentIndex;
    const isNext = index === currentIndex + 1;
    
    if (!isTop && !isNext) return { opacity: 0 };

    const translateX = isTop
      ? animatedValue.value
      : interpolate(
          animatedValue.value,
          [-screenWidth, 0, screenWidth],
          [0, 0, 0]
        );

    const translateY = isTop
      ? interpolate(
          Math.abs(animatedValue.value),
          [0, screenWidth],
          [0, 10],
          Extrapolate.CLAMP
        )
      : interpolate(
          Math.abs(animatedValue.value),
          [0, screenWidth],
          [10, 0],
          Extrapolate.CLAMP
        );

    const scale = isTop
      ? interpolate(
          Math.abs(animatedValue.value),
          [0, screenWidth],
          [1, 0.95],
          Extrapolate.CLAMP
        )
      : interpolate(
          Math.abs(animatedValue.value),
          [0, screenWidth],
          [0.95, 1],
          Extrapolate.CLAMP
        );

    const rotate = isTop
      ? interpolate(
          animatedValue.value,
          [-screenWidth, 0, screenWidth],
          [-15, 0, 15],
          Extrapolate.CLAMP
        ) + 'deg'
      : '0deg';

    const opacity = isTop
      ? 1
      : interpolate(
          Math.abs(animatedValue.value),
          [0, screenWidth * 0.5, screenWidth],
          [0.5, 0.8, 1],
          Extrapolate.CLAMP
        );

    return {
      transform: [
        { translateX },
        { translateY },
        { scale },
        { rotate },
      ] as any,
      opacity,
    };
  });

  const likeOpacity = useAnimatedStyle(() => ({
    opacity: interpolate(
      animatedValue.value,
      [0, screenWidth / 2],
      [0, 1],
      Extrapolate.CLAMP
    ),
  }));

  const nopeOpacity = useAnimatedStyle(() => ({
    opacity: interpolate(
      animatedValue.value,
      [-screenWidth / 2, 0],
      [1, 0],
      Extrapolate.CLAMP
    ),
  }));

  // Get high-resolution image URL
  const highResAvatarUrl = getHighResTwitterImage(user.avatar_url) || user.avatar_url;

  return (
    <Animated.View style={[styles.container, animatedStyle]}>
      <View style={styles.card}>
        {highResAvatarUrl ? (
          <Image source={{ uri: highResAvatarUrl }} style={styles.image} />
        ) : (
          <LinearGradient
            colors={['#9945FF', '#7B3FF2']}
            style={styles.placeholderImage}
          >
            <Text style={styles.placeholderText}>
              {user.username.charAt(0).toUpperCase()}
            </Text>
          </LinearGradient>
        )}

        <LinearGradient
          colors={['transparent', 'rgba(0,0,0,0.8)']}
          style={styles.gradient}
        >
          <View style={styles.content}>
            <View style={styles.header}>
              <Text style={styles.username}>{user.username || 'Unknown User'}</Text>
              {user.reputation_score ? (
                <View style={styles.reputationBadge}>
                  <Ionicons name="star" size={14} color="#FFD700" />
                  <Text style={styles.reputationScore}>{user.reputation_score}</Text>
                </View>
              ) : null}
            </View>

            <Text style={styles.bio} numberOfLines={2}>
              {user.bio || 'No bio available'}
            </Text>

            <View style={styles.skillsContainer}>
              {(user.skills || []).slice(0, 3).map((skill, idx) => (
                <View key={idx} style={styles.skillTag}>
                  <Text style={styles.skillText}>{skill || 'Skill'}</Text>
                </View>
              ))}
              {(user.skills || []).length > 3 ? (
                <Text style={styles.moreSkills}>+{(user.skills || []).length - 3}</Text>
              ) : null}
            </View>

            <View style={styles.lookingForContainer}>
              <Ionicons name="search" size={16} color="#9945FF" />
              <Text style={styles.lookingForText}>
                Looking for: {user.looking_for?.slice(0, 2).join(', ') || 'Open to opportunities'}
              </Text>
            </View>

            {user.github_url && (
              <View style={styles.linkContainer}>
                <Ionicons name="logo-github" size={16} color="#B8B8B8" />
                <Text style={styles.linkText} numberOfLines={1}>
                  {user.github_url.replace('https://github.com/', '@')}
                </Text>
              </View>
            )}

            {user.website_url && (
              <View style={styles.linkContainer}>
                <Ionicons name="globe-outline" size={16} color="#B8B8B8" />
                <Text style={styles.linkText} numberOfLines={1}>
                  {user.website_url.replace(/^https?:\/\//, '')}
                </Text>
              </View>
            )}
          </View>
        </LinearGradient>

        <Animated.View style={[styles.choiceContainer, styles.likeContainer, likeOpacity]}>
          <Text style={styles.likeText}>COLLAB</Text>
        </Animated.View>

        <Animated.View style={[styles.choiceContainer, styles.nopeContainer, nopeOpacity]}>
          <Text style={styles.nopeText}>PASS</Text>
        </Animated.View>
      </View>
    </Animated.View>
  );
}

const styles = StyleSheet.create({
  container: {
    position: 'absolute',
    width: CARD_WIDTH,
    height: CARD_HEIGHT,
  },
  card: {
    width: '100%',
    height: '100%',
    borderRadius: 20,
    overflow: 'hidden',
    backgroundColor: '#1A1F3A',
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 4,
    },
    shadowOpacity: 0.3,
    shadowRadius: 8,
    elevation: 5,
  },
  image: {
    width: '100%',
    height: '100%',
    resizeMode: 'cover',
  },
  placeholderImage: {
    width: '100%',
    height: '100%',
    justifyContent: 'center',
    alignItems: 'center',
  },
  placeholderText: {
    fontSize: 80,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  gradient: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
    height: '50%',
    justifyContent: 'flex-end',
  },
  content: {
    padding: 20,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: 8,
  },
  username: {
    fontSize: 28,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  reputationBadge: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 215, 0, 0.2)',
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 12,
  },
  reputationScore: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFD700',
    marginLeft: 4,
  },
  bio: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#E0E0E0',
    marginBottom: 12,
    lineHeight: 22,
  },
  skillsContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  skillTag: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 16,
    marginRight: 8,
  },
  skillText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  moreSkills: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  lookingForContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  lookingForText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginLeft: 6,
  },
  linkContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: 8,
  },
  linkText: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginLeft: 6,
    flex: 1,
  },
  choiceContainer: {
    position: 'absolute',
    top: 60,
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
    borderWidth: 4,
  },
  likeContainer: {
    right: 20,
    borderColor: '#4CAF50',
    transform: [{ rotate: '15deg' }],
  },
  likeText: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#4CAF50',
  },
  nopeContainer: {
    left: 20,
    borderColor: '#FF5252',
    transform: [{ rotate: '-15deg' }],
  },
  nopeText: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FF5252',
  },
});