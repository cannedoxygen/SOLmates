import React, { useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  interpolate,
  useSharedValue,
  withTiming,
} from 'react-native-reanimated';

interface UserProfile {
  looking_for: string[];
}

interface LookingForCardProps {
  userProfile: UserProfile;
}

const ROLE_ICONS: { [key: string]: string } = {
  'Developer': 'code-slash',
  'Designer': 'color-palette',
  'Product Manager': 'business',
  'Marketer': 'megaphone',
  'Community Manager': 'people',
  'Co-founder': 'diamond',
  'Advisor': 'bulb',
  'Investor': 'trending-up',
  'Technical Writer': 'document-text',
  'Data Scientist': 'analytics',
  'DevOps Engineer': 'server',
  'Blockchain Developer': 'cube',
  'Smart Contract Auditor': 'shield-checkmark',
  'Token Economist': 'coin',
  'default': 'person'
};

const ROLE_COLORS = [
  ['#FF6B6B', '#FF8E8E'],
  ['#4ECDC4', '#6FEEE7'],
  ['#45B7D1', '#6BC7E1'],
  ['#96CEB4', '#B6DEC4'],
  ['#FFEAA7', '#FFED4A'],
  ['#DDA0DD', '#E6B3E6'],
  ['#98D8C8', '#B8E8D8'],
  ['#FDA7DF', '#FDB7EF'],
];

export function LookingForCard({ userProfile }: LookingForCardProps) {
  const cardAnimations = userProfile.looking_for.map(() => useSharedValue(0));

  useEffect(() => {
    cardAnimations.forEach((anim, index) => {
      // Use setTimeout for staggered animations instead of delay
      setTimeout(() => {
        anim.value = withTiming(1, {
          duration: 800,
        });
      }, index * 150);
    });
  }, []);

  const renderRoleCard = (role: string, index: number) => {
    const iconName = ROLE_ICONS[role] || ROLE_ICONS.default;
    const colors = ROLE_COLORS[index % ROLE_COLORS.length];
    const animation = cardAnimations[index];

    const animatedStyle = useAnimatedStyle(() => {
      const translateY = interpolate(animation.value, [0, 1], [50, 0]);
      const opacity = interpolate(animation.value, [0, 1], [0, 1]);
      const scale = interpolate(animation.value, [0, 1], [0.8, 1]);

      return {
        transform: [
          { translateY },
          { scale }
        ] as any,
        opacity,
      };
    });

    return (
      <Animated.View key={role} style={[styles.roleCard, animatedStyle]}>
        <View style={[styles.roleCardInner, { backgroundColor: colors[0] + '20' }]}>
          <View style={[styles.roleIcon, { backgroundColor: colors[0] }]}>
            <Ionicons name={iconName as any} size={24} color="#FFFFFF" />
          </View>
          
          <View style={styles.roleInfo}>
            <Text style={styles.roleTitle}>{role}</Text>
            <Text style={styles.roleDescription}>
              {getRoleDescription(role)}
            </Text>
          </View>

          <View style={styles.roleIndicator}>
            <View
              style={[styles.roleIndicatorDot, { backgroundColor: colors[0] }]}
            />
          </View>
        </View>
      </Animated.View>
    );
  };

  const getRoleDescription = (role: string): string => {
    const descriptions: { [key: string]: string } = {
      'Developer': 'Build amazing applications together',
      'Designer': 'Create beautiful user experiences',
      'Product Manager': 'Drive product strategy and vision',
      'Marketer': 'Grow and promote our project',
      'Community Manager': 'Engage and build community',
      'Co-founder': 'Start something big together',
      'Advisor': 'Provide guidance and expertise',
      'Investor': 'Fund and support growth',
      'Technical Writer': 'Document and educate',
      'Data Scientist': 'Analyze and derive insights',
      'DevOps Engineer': 'Scale and maintain infrastructure',
      'Blockchain Developer': 'Build decentralized solutions',
      'Smart Contract Auditor': 'Ensure security and safety',
      'Token Economist': 'Design tokenomics and incentives',
    };
    
    return descriptions[role] || 'Collaborate and create value';
  };

  return (
    <View style={[styles.card, { backgroundColor: 'rgba(25, 30, 50, 0.95)' }]}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      <View style={styles.content}>
        {/* Header */}
        <View style={styles.header}>
          <View style={[styles.headerIcon, { backgroundColor: '#14F195' }]}>
            <Ionicons name="search" size={20} color="#FFFFFF" />
          </View>
          <View style={styles.headerText}>
            <Text style={styles.headerTitle}>Looking For</Text>
            <Text style={styles.headerSubtitle}>Collaboration partners</Text>
          </View>
        </View>

        {/* Role Cards - More Compact */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Preferred Roles</Text>
          <View style={styles.rolesGrid}>
            {userProfile.looking_for.slice(0, 4).map((role, index) => (
              <View key={role} style={styles.roleChip}>
                <View style={[styles.roleChipIcon, { backgroundColor: ROLE_COLORS[index % ROLE_COLORS.length][0] }]}>
                  <Ionicons name={ROLE_ICONS[role] || ROLE_ICONS.default} size={16} color="#FFFFFF" />
                </View>
                <Text style={styles.roleChipText}>{role}</Text>
              </View>
            ))}
          </View>
          {userProfile.looking_for.length > 4 && (
            <Text style={styles.moreRoles}>+{userProfile.looking_for.length - 4} more</Text>
          )}
        </View>

        {/* Collaboration Preferences - Compact Grid */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Collaboration Style</Text>
          <View style={styles.preferencesGrid}>
            <View style={styles.preferenceChip}>
              <Ionicons name="flash" size={14} color="#FF6B6B" />
              <Text style={styles.preferenceChipText}>Fast-paced</Text>
            </View>
            <View style={styles.preferenceChip}>
              <Ionicons name="people" size={14} color="#14F195" />
              <Text style={styles.preferenceChipText}>Team work</Text>
            </View>
            <View style={styles.preferenceChip}>
              <Ionicons name="trophy" size={14} color="#FFD700" />
              <Text style={styles.preferenceChipText}>High-impact</Text>
            </View>
            <View style={styles.preferenceChip}>
              <Ionicons name="infinite" size={14} color="#9945FF" />
              <Text style={styles.preferenceChipText}>Long-term</Text>
            </View>
          </View>
        </View>

        {/* Call to Action - Compact */}
        <View style={styles.ctaSection}>
          <View style={[styles.ctaContainer, { backgroundColor: 'rgba(153, 69, 255, 0.2)' }]}>
            <Ionicons name="heart" size={20} color="#9945FF" />
            <Text style={styles.ctaTitle}>Let's Build Together!</Text>
          </View>
        </View>
      </View>
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
  },
  content: {
    flex: 1,
    padding: 20,
    justifyContent: 'space-between',
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
  headerText: {
    flex: 1,
  },
  headerTitle: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  headerSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  section: {
    marginBottom: 20,
  },
  goalsBanner: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  goalsBannerInner: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(20, 241, 149, 0.2)',
  },
  goalsText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginLeft: 12,
    flex: 1,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  rolesContainer: {
    gap: 16,
  },
  roleCard: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  roleCardInner: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  roleIcon: {
    width: 48,
    height: 48,
    borderRadius: 24,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
  },
  roleInfo: {
    flex: 1,
  },
  roleTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  roleDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
  },
  roleIndicator: {
    marginLeft: 12,
  },
  roleIndicatorDot: {
    width: 12,
    height: 12,
    borderRadius: 6,
  },
  preferencesContainer: {
    gap: 12,
  },
  preferenceItem: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  preferenceIcon: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  preferenceText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    flex: 1,
  },
  ctaSection: {
    marginTop: 16,
  },
  ctaContainer: {
    alignItems: 'center',
    padding: 24,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  ctaTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginTop: 12,
    marginBottom: 8,
  },
  ctaSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
    textAlign: 'center',
  },
  // New compact styles
  rolesGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  roleChip: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 8,
    marginBottom: 4,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  roleChipIcon: {
    width: 24,
    height: 24,
    borderRadius: 12,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 6,
  },
  roleChipText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
  },
  moreRoles: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginTop: 4,
  },
  preferencesGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  preferenceChip: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  preferenceChipText: {
    fontSize: 11,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginLeft: 4,
  },
});