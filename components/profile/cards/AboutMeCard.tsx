import React, { useEffect, useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  interpolate,
  useSharedValue,
  withRepeat,
  withTiming,
} from 'react-native-reanimated';
import { AchievementService, ACHIEVEMENT_DEFINITIONS } from '../../../lib/services/achievementService';

interface UserProfile {
  id: string;
  bio: string;
  skills: string[];
  experience_level?: string;
  interests?: string[];
}

interface AboutMeCardProps {
  userProfile: UserProfile;
}

const SKILL_ICONS: { [key: string]: string } = {
  'React': 'logo-react',
  'React Native': 'phone-portrait',
  'TypeScript': 'code-slash',
  'JavaScript': 'logo-javascript',
  'Node.js': 'logo-nodejs',
  'Python': 'logo-python',
  'Rust': 'hardware-chip',
  'Solana': 'flash',
  'Web3.js': 'planet',
  'Smart Contracts': 'document-text',
  'NFTs': 'diamond',
  'DeFi': 'swap-horizontal',
  'UI/UX': 'color-palette',
  'Design': 'brush',
  'Art': 'color-fill',
  'Marketing': 'megaphone',
  'Business': 'briefcase',
  'default': 'ellipse'
};

const EXPERIENCE_LEVELS = {
  'Beginner': { color: '#14F195', progress: 0.25 },
  'Intermediate': { color: '#FFD700', progress: 0.5 },
  'Advanced': { color: '#FF6B6B', progress: 0.75 },
  'Expert': { color: '#9945FF', progress: 1.0 },
};

// Remove the hardcoded ACHIEVEMENTS array - will use dynamic data instead

export function AboutMeCard({ userProfile }: AboutMeCardProps) {
  const [userAchievements, setUserAchievements] = useState<Array<any>>([]);
  const [loading, setLoading] = useState(true);
  
  const progressAnimation = useSharedValue(0);
  const skillAnimations = userProfile.skills.map(() => useSharedValue(0));
  const achievementAnimations = Array.from({ length: 4 }, () => useSharedValue(0));

  useEffect(() => {
    loadUserAchievements();
  }, [userProfile.id]);

  useEffect(() => {
    // Animate progress ring
    progressAnimation.value = withTiming(1, { duration: 1500 });
    
    // Stagger skill animations
    skillAnimations.forEach((anim, index) => {
      // Use setTimeout for staggered animations instead of delay
      setTimeout(() => {
        anim.value = withTiming(1, {
          duration: 600,
        });
      }, index * 100);
    });

    // Animate achievements
    achievementAnimations.forEach((anim, index) => {
      setTimeout(() => {
        anim.value = withTiming(1, { duration: 600 });
      }, index * 150);
    });
  }, [userAchievements]);

  const loadUserAchievements = async () => {
    try {
      setLoading(true);
      const achievements = await AchievementService.getUserAchievementStatus(userProfile.id);
      setUserAchievements(achievements);
    } catch (error) {
      console.error('Failed to load achievements:', error);
      setUserAchievements([]);
    } finally {
      setLoading(false);
    }
  };

  const getExperienceLevel = () => {
    return EXPERIENCE_LEVELS[userProfile.experience_level as keyof typeof EXPERIENCE_LEVELS] || 
           EXPERIENCE_LEVELS.Beginner;
  };

  const renderSkillPill = (skill: string, index: number) => {
    const iconName = SKILL_ICONS[skill] || SKILL_ICONS.default;
    const animation = skillAnimations[index];
    
    const animatedStyle = useAnimatedStyle(() => {
      const scale = interpolate(animation.value, [0, 1], [0.8, 1]);
      const opacity = interpolate(animation.value, [0, 1], [0, 1]);
      
      return {
        transform: [{ scale }],
        opacity,
      };
    });

    return (
      <Animated.View key={skill} style={[styles.skillPill, animatedStyle]}>
        <View style={[styles.skillPillInner, { backgroundColor: 'rgba(153, 69, 255, 0.3)' }]}>
          <Ionicons name={iconName as any} size={16} color="#9945FF" />
          <Text style={styles.skillText}>{skill}</Text>
        </View>
      </Animated.View>
    );
  };

  const renderAchievement = (achievement: any, index: number) => {
    const animation = achievementAnimations[index];
    
    const animatedStyle = useAnimatedStyle(() => {
      const translateY = interpolate(animation.value, [0, 1], [20, 0]);
      const opacity = interpolate(animation.value, [0, 1], [0, 1]);
      
      return {
        transform: [{ translateY }],
        opacity,
      };
    });

    // Show different styles for earned vs unearned achievements
    const cardStyle = achievement.earned 
      ? { backgroundColor: achievement.color + '20' }
      : { backgroundColor: 'rgba(100, 100, 100, 0.1)' };
    
    const iconStyle = achievement.earned
      ? { backgroundColor: achievement.color }
      : { backgroundColor: '#666666' };

    return (
      <Animated.View key={achievement.name} style={[styles.achievementItem, animatedStyle]}>
        <View style={[styles.achievementCard, cardStyle]}>
          <View style={[styles.achievementIcon, iconStyle]}>
            <Ionicons name={achievement.icon as any} size={16} color="#FFFFFF" />
            {achievement.earned && (
              <View style={styles.achievementBadge}>
                <Ionicons name="checkmark" size={10} color="#FFFFFF" />
              </View>
            )}
          </View>
          <View style={styles.achievementInfo}>
            <Text style={[styles.achievementName, !achievement.earned && styles.unearnedText]}>
              {achievement.name}
            </Text>
            <Text style={[styles.achievementDescription, !achievement.earned && styles.unearnedText]}>
              {achievement.earned && achievement.metadata
                ? AchievementService.formatAchievementDescription(
                    Object.keys(ACHIEVEMENT_DEFINITIONS).find(key => 
                      ACHIEVEMENT_DEFINITIONS[key].name === achievement.name
                    ) || 'unknown', 
                    achievement.metadata
                  )
                : achievement.description
              }
            </Text>
            {achievement.earned && achievement.earnedAt && (
              <Text style={styles.earnedDate}>
                Earned {new Date(achievement.earnedAt).toLocaleDateString()}
              </Text>
            )}
          </View>
        </View>
      </Animated.View>
    );
  };

  const renderInterestIcon = (interest: string, index: number) => {
    const icons = ['game-controller', 'musical-notes', 'camera', 'book', 'airplane', 'fitness'];
    const colors = ['#FF6B6B', '#FFD700', '#14F195', '#9945FF', '#FF8C42', '#6BCF7F'];
    
    return (
      <View key={interest} style={[styles.interestItem, { backgroundColor: colors[index % colors.length] + '20' }]}>
        <Ionicons 
          name={icons[index % icons.length] as any} 
          size={20} 
          color={colors[index % colors.length]} 
        />
        <Text style={[styles.interestText, { color: colors[index % colors.length] }]}>
          {interest}
        </Text>
      </View>
    );
  };

  const experienceLevel = getExperienceLevel();

  return (
    <View style={[styles.card, { backgroundColor: 'rgba(25, 30, 50, 0.95)' }]}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      <ScrollView 
        style={styles.scrollView}
        contentContainerStyle={styles.scrollContent}
        showsVerticalScrollIndicator={false}
        bounces={false}
      >
        {/* Header */}
        <View style={styles.header}>
          <View style={[styles.headerIcon, { backgroundColor: '#9945FF' }]}>
            <Ionicons name="person" size={24} color="#FFFFFF" />
          </View>
          <Text style={styles.headerTitle}>About Me</Text>
        </View>

        {/* Bio Section */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Bio</Text>
          <View style={styles.bioContainer}>
            <Text style={styles.bioText}>{userProfile.bio}</Text>
          </View>
        </View>

        {/* Experience Level */}
        {userProfile.experience_level && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Experience Level</Text>
            <View style={styles.experienceContainer}>
              <View style={styles.experienceInfo}>
                <Text style={styles.experienceLevel}>{userProfile.experience_level}</Text>
                <Text style={styles.experienceSubtext}>Professional Level</Text>
              </View>
              
              <View style={styles.progressRingContainer}>
                <Animated.View style={styles.progressRing}>
                  <View
                    style={[
                      styles.progressFill,
                      {
                        backgroundColor: experienceLevel.color,
                        transform: [
                          { rotate: `${experienceLevel.progress * 360}deg` }
                        ]
                      }
                    ]}
                  />
                  <View style={styles.progressCenter}>
                    <Text style={[styles.progressText, { color: experienceLevel.color }]}>
                      {Math.round(experienceLevel.progress * 100)}%
                    </Text>
                  </View>
                </Animated.View>
              </View>
            </View>
          </View>
        )}

        {/* Skills Section */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Skills & Technologies</Text>
          <View style={styles.skillsContainer}>
            {userProfile.skills.map((skill, index) => renderSkillPill(skill, index))}
          </View>
        </View>

        {/* Achievements Section */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Achievements</Text>
          {loading ? (
            <View style={styles.loadingContainer}>
              <Text style={styles.loadingText}>Loading achievements...</Text>
            </View>
          ) : (
            <View style={styles.achievementsContainer}>
              {userAchievements.map((achievement, index) => renderAchievement(achievement, index))}
            </View>
          )}
        </View>

        {/* Interests Section */}
        {userProfile.interests && userProfile.interests.length > 0 && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Interests</Text>
            <View style={styles.interestsContainer}>
              {userProfile.interests.map((interest, index) => renderInterestIcon(interest, index))}
            </View>
          </View>
        )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    width: '100%',
    height: '100%',
    borderRadius: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    overflow: 'hidden',
  },
  scrollView: {
    flex: 1,
  },
  scrollContent: {
    padding: 20,
    paddingBottom: 30,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 16,
  },
  headerIcon: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  headerTitle: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  section: {
    marginBottom: 20,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  bioContainer: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  bioText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.9)',
    lineHeight: 24,
  },
  experienceContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  experienceInfo: {
    flex: 1,
  },
  experienceLevel: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  experienceSubtext: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  progressRingContainer: {
    marginLeft: 20,
  },
  progressRing: {
    width: 60,
    height: 60,
    borderRadius: 30,
    borderWidth: 4,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    position: 'relative',
  },
  progressFill: {
    position: 'absolute',
    width: 60,
    height: 60,
    borderRadius: 30,
    borderWidth: 4,
    borderColor: 'transparent',
  },
  progressCenter: {
    width: 48,
    height: 48,
    borderRadius: 24,
    backgroundColor: 'rgba(15, 20, 35, 0.9)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  progressText: {
    fontSize: 12,
    fontFamily: 'Inter-Bold',
  },
  skillsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  skillPill: {
    marginBottom: 8,
  },
  skillPillInner: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  skillText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginLeft: 6,
  },
  interestsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  interestItem: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 16,
    marginBottom: 4,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  interestText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    marginLeft: 8,
  },
  achievementsContainer: {
    gap: 8,
  },
  achievementItem: {},
  achievementCard: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  achievementIcon: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  achievementInfo: {
    flex: 1,
  },
  achievementName: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  achievementDescription: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  achievementBadge: {
    position: 'absolute',
    top: -4,
    right: -4,
    width: 16,
    height: 16,
    borderRadius: 8,
    backgroundColor: '#4CAF50',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 2,
    borderColor: '#FFFFFF',
  },
  unearnedText: {
    color: 'rgba(255, 255, 255, 0.4)',
  },
  earnedDate: {
    fontSize: 10,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.5)',
    marginTop: 2,
  },
  loadingContainer: {
    padding: 20,
    alignItems: 'center',
  },
  loadingText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
});