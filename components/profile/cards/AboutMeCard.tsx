import React, { useEffect, useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
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

export function AboutMeCard({ userProfile }: AboutMeCardProps) {
  const [userAchievements, setUserAchievements] = useState<Array<any>>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadUserAchievements();
  }, [userProfile.id]);

  const loadUserAchievements = async () => {
    try {
      setLoading(true);
      const achievements = await AchievementService.getUserAchievementStatus(userProfile.id);
      setUserAchievements(achievements);
    } catch (error) {
      console.error('Failed to get user achievements:', error);
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

    return (
      <View key={`${skill}-${index}`} style={styles.skillPill}>
        <View style={[styles.skillPillInner, { backgroundColor: 'rgba(153, 69, 255, 0.3)' }]}>
          <Ionicons name={iconName as any} size={16} color="#9945FF" />
          <Text style={styles.skillText}>{skill}</Text>
        </View>
      </View>
    );
  };

  const renderAchievement = (achievement: any, index: number) => {
    // Show different styles for earned vs unearned achievements
    const cardStyle = achievement.earned 
      ? { backgroundColor: achievement.color + '20' }
      : { backgroundColor: 'rgba(100, 100, 100, 0.1)' };
    
    const iconStyle = achievement.earned
      ? { backgroundColor: achievement.color }
      : { backgroundColor: '#666666' };

    return (
      <View key={`${achievement.name}-${index}`} style={[styles.achievementItem]}>
        <View style={[styles.achievementCard, cardStyle]}>
          <View style={[styles.achievementIcon, iconStyle]}>
            <Ionicons 
              name={achievement.icon as any} 
              size={20} 
              color={achievement.earned ? 'white' : '#CCCCCC'} 
            />
          </View>
          <View style={styles.achievementContent}>
            <Text style={[styles.achievementName, { 
              color: achievement.earned ? 'white' : '#AAAAAA' 
            }]}>
              {achievement.name}
            </Text>
            <Text style={[styles.achievementDescription, { 
              color: achievement.earned ? '#CCCCCC' : '#777777' 
            }]}>
              {achievement.description}
            </Text>
          </View>
          {achievement.earned && (
            <View style={styles.earnedBadge}>
              <Ionicons name="checkmark-circle" size={16} color="#14F195" />
            </View>
          )}
        </View>
      </View>
    );
  };

  const experienceLevel = getExperienceLevel();

  return (
    <View style={styles.card}>
      <ScrollView style={styles.container} showsVerticalScrollIndicator={false}>
      {/* Bio Section */}
      <View style={styles.section}>
        <Text style={styles.sectionTitle}>About</Text>
        <Text style={styles.bioText}>{userProfile.bio}</Text>
      </View>

      {/* Experience Level */}
      <View style={styles.section}>
        <Text style={styles.sectionTitle}>Experience Level</Text>
        <View style={styles.experienceContainer}>
          <View style={[styles.experienceBar, { backgroundColor: experienceLevel.color + '30' }]}>
            <View 
              style={[
                styles.experienceProgress, 
                { 
                  width: `${experienceLevel.progress * 100}%`,
                  backgroundColor: experienceLevel.color 
                }
              ]} 
            />
          </View>
          <Text style={[styles.experienceText, { color: experienceLevel.color }]}>
            {userProfile.experience_level || 'Beginner'}
          </Text>
        </View>
      </View>

      {/* Skills */}
      <View style={styles.section}>
        <Text style={styles.sectionTitle}>Skills</Text>
        <View style={styles.skillsContainer}>
          {userProfile.skills.map((skill, index) => renderSkillPill(skill, index))}
        </View>
      </View>

      {/* Achievements */}
      <View style={styles.section}>
        <Text style={styles.sectionTitle}>Achievements</Text>
        {loading ? (
          <Text style={styles.loadingText}>Loading achievements...</Text>
        ) : (
          <View style={styles.achievementsContainer}>
            {userAchievements.map((achievement, index) => renderAchievement(achievement, index))}
          </View>
        )}
      </View>

      {/* Interests */}
      {userProfile.interests && userProfile.interests.length > 0 && (
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Interests</Text>
          <View style={styles.interestsContainer}>
            {userProfile.interests.map((interest, index) => (
              <View key={interest} style={styles.interestTag}>
                <Text style={styles.interestText}>{interest}</Text>
              </View>
            ))}
          </View>
        </View>
      )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    borderRadius: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    overflow: 'hidden',
    backgroundColor: 'rgba(26, 31, 58, 0.95)', // Same dark background as main card
  },
  container: {
    flex: 1,
    padding: 20,
  },
  section: {
    marginBottom: 24,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  bioText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#E0E0E0',
    lineHeight: 24,
  },
  experienceContainer: {
    marginTop: 8,
  },
  experienceBar: {
    height: 8,
    borderRadius: 4,
    overflow: 'hidden',
    marginBottom: 8,
  },
  experienceProgress: {
    height: '100%',
    borderRadius: 4,
  },
  experienceText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    textAlign: 'center',
  },
  skillsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  skillPill: {
    borderRadius: 20,
    overflow: 'hidden',
  },
  skillPillInner: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 6,
    gap: 6,
  },
  skillText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  achievementsContainer: {
    gap: 12,
  },
  achievementItem: {
    width: '100%',
  },
  achievementCard: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  achievementIcon: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  achievementContent: {
    flex: 1,
  },
  achievementName: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    marginBottom: 2,
  },
  achievementDescription: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
  },
  earnedBadge: {
    marginLeft: 8,
  },
  loadingText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#AAAAAA',
    textAlign: 'center',
    paddingVertical: 20,
  },
  interestsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  interestTag: {
    backgroundColor: 'rgba(20, 241, 149, 0.2)',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(20, 241, 149, 0.3)',
  },
  interestText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#14F195',
  },
});