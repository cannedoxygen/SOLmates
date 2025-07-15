import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  ActivityIndicator,
  Image,
} from 'react-native';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { LinearGradient } from 'expo-linear-gradient';
import { AnalyticsService, type UserMetrics } from '../lib/services/analyticsService';

export default function StatsScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  
  const [metrics, setMetrics] = useState<UserMetrics | null>(null);
  const [engagement, setEngagement] = useState<{
    weekly_swipes: number;
    weekly_matches: number;
    weekly_messages: number;
    weekly_super_likes: number;
    engagement_score: number;
    streak_days: number;
  } | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (user) {
      loadUserStats();
    }
  }, [user]);

  const loadUserStats = async () => {
    if (!user) return;
    
    try {
      setLoading(true);
      
      const [userMetrics, userEngagement] = await Promise.all([
        AnalyticsService.getUserMetrics(user.id),
        AnalyticsService.getUserEngagement(user.id)
      ]);
      
      setMetrics(userMetrics);
      setEngagement(userEngagement);
    } catch (error) {
      console.error('Failed to load user stats:', error);
    } finally {
      setLoading(false);
    }
  };

  const formatDuration = (seconds: number): string => {
    if (seconds < 60) return `${seconds}s`;
    if (seconds < 3600) return `${Math.floor(seconds / 60)}m`;
    return `${Math.floor(seconds / 3600)}h ${Math.floor((seconds % 3600) / 60)}m`;
  };

  const getEngagementLevel = (score: number): { label: string; color: string } => {
    if (score >= 80) return { label: 'Very High', color: '#4CAF50' };
    if (score >= 60) return { label: 'High', color: '#8BC34A' };
    if (score >= 40) return { label: 'Medium', color: '#FF9800' };
    if (score >= 20) return { label: 'Low', color: '#FF5722' };
    return { label: 'Very Low', color: '#666666' };
  };

  const renderStatCard = (
    title: string,
    value: string | number,
    subtitle?: string,
    icon?: string,
    color?: string
  ) => (
    <View style={styles.statCard}>
      <View style={styles.statHeader}>
        {icon && (
          <Ionicons 
            name={icon as any} 
            size={24} 
            color={color || '#9945FF'} 
            style={styles.statIcon}
          />
        )}
        <Text style={styles.statTitle}>{title}</Text>
      </View>
      <Text style={[styles.statValue, color && { color }]}>{value}</Text>
      {subtitle && <Text style={styles.statSubtitle}>{subtitle}</Text>}
    </View>
  );

  const renderProgressBar = (value: number, maxValue: number, color: string) => (
    <View style={styles.progressBar}>
      <View 
        style={[
          styles.progressFill, 
          { 
            width: `${Math.min((value / maxValue) * 100, 100)}%`,
            backgroundColor: color 
          }
        ]} 
      />
    </View>
  );

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading your stats...</Text>
        </View>
      </View>
    );
  }

  const engagementLevel = engagement ? getEngagementLevel(engagement.engagement_score) : null;

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>Your Stats</Text>
        <View style={styles.profileContainer}>
          {user?.linked_accounts?.find(account => account.type === 'twitter_oauth')?.profile_picture_url ? (
            <Image
              source={{ 
                uri: user.linked_accounts.find(account => account.type === 'twitter_oauth')?.profile_picture_url?.replace('_normal.', '_400x400.') 
              }}
              style={styles.profileImage}
            />
          ) : (
            <LinearGradient
              colors={['#9945FF', '#7B3FF2']}
              style={styles.profilePlaceholder}
            >
              <Text style={styles.profileText}>
                {user?.linked_accounts?.find(account => account.type === 'twitter_oauth')?.name?.charAt(0)?.toUpperCase() || '?'}
              </Text>
            </LinearGradient>
          )}
        </View>
      </View>

      <ScrollView
        style={styles.content}
        contentContainerStyle={styles.contentContainer}
        showsVerticalScrollIndicator={false}
      >
        {/* Engagement Score */}
        {engagement && (
          <View style={styles.engagementCard}>
            <Text style={styles.engagementTitle}>Engagement Score</Text>
            <Text style={[styles.engagementScore, { color: engagementLevel?.color }]}>
              {engagement.engagement_score}
            </Text>
            <Text style={[styles.engagementLevel, { color: engagementLevel?.color }]}>
              {engagementLevel?.label}
            </Text>
            {renderProgressBar(engagement.engagement_score, 100, engagementLevel?.color || '#9945FF')}
            
            {engagement.streak_days > 0 && (
              <View style={styles.streakContainer}>
                <Ionicons name="flame" size={16} color="#FF6B35" />
                <Text style={styles.streakText}>
                  {engagement.streak_days} day streak!
                </Text>
              </View>
            )}
          </View>
        )}

        {/* Weekly Activity */}
        {engagement && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>This Week</Text>
            <View style={styles.statsGrid}>
              {renderStatCard(
                'Swipes',
                engagement.weekly_swipes,
                'Profiles viewed',
                'eye-outline',
                '#2196F3'
              )}
              {renderStatCard(
                'Matches',
                engagement.weekly_matches,
                'New connections',
                'heart-outline',
                '#E91E63'
              )}
              {renderStatCard(
                'Messages',
                engagement.weekly_messages,
                'Conversations',
                'chatbubble-outline',
                '#4CAF50'
              )}
              {renderStatCard(
                'Super Likes',
                engagement.weekly_super_likes || 0,
                'Premium interactions',
                'star',
                '#00BFFF'
              )}
            </View>
          </View>
        )}

        {/* All-Time Stats */}
        {metrics && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>All Time</Text>
            <View style={styles.statsGrid}>
              {renderStatCard(
                'Total Swipes',
                (metrics.total_swipes || 0).toLocaleString(),
                'Profiles reviewed',
                'layers-outline'
              )}
              {renderStatCard(
                'Total Matches',
                (metrics.total_matches || 0).toLocaleString(),
                'Successful connections',
                'people-outline'
              )}
              {renderStatCard(
                'Messages Sent',
                (metrics.total_messages_sent || 0).toLocaleString(),
                'Conversations started',
                'send-outline'
              )}
              {renderStatCard(
                'Profile Views',
                (metrics.profile_views || 0).toLocaleString(),
                'Times your profile was viewed',
                'eye-outline'
              )}
              {renderStatCard(
                'Match Rate',
                `${metrics.match_rate}%`,
                'Success rate',
                'trending-up-outline',
                metrics.match_rate >= 20 ? '#4CAF50' : 
                metrics.match_rate >= 10 ? '#FF9800' : '#FF5722'
              )}
              {renderStatCard(
                'Response Rate',
                `${metrics.response_rate}%`,
                'Messages answered',
                'checkmark-circle-outline',
                metrics.response_rate >= 70 ? '#4CAF50' : 
                metrics.response_rate >= 50 ? '#FF9800' : '#FF5722'
              )}
            </View>
          </View>
        )}

        {/* Session Info */}
        {metrics && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Activity</Text>
            <View style={styles.statsGrid}>
              {renderStatCard(
                'Total Sessions',
                (metrics.total_sessions || 0).toLocaleString(),
                'App opens',
                'phone-portrait-outline'
              )}
              {renderStatCard(
                'Avg Session',
                formatDuration(metrics.avg_session_duration || 0),
                'Time per session',
                'time-outline'
              )}
              {renderStatCard(
                'Last Active',
                metrics.last_active ? new Date(metrics.last_active).toLocaleDateString() : 'Never',
                'Most recent activity',
                'calendar-outline'
              )}
            </View>
          </View>
        )}

        {/* Tips Section */}
        <View style={styles.tipsSection}>
          <Text style={styles.sectionTitle}>💡 Tips to Improve</Text>
          <View style={styles.tipCard}>
            <Text style={styles.tipText}>
              • Complete your profile to get 3x more matches
            </Text>
            <Text style={styles.tipText}>
              • Active users get shown to more people
            </Text>
            <Text style={styles.tipText}>
              • Respond to messages within 24h for better engagement
            </Text>
            <Text style={styles.tipText}>
              • Update your skills to attract relevant collaborators
            </Text>
          </View>
        </View>

        <View style={styles.bottomPadding} />
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 16,
    paddingBottom: 16,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.1)',
  },
  backButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  profileContainer: {
    width: 40,
    height: 40,
  },
  profileImage: {
    width: 40,
    height: 40,
    borderRadius: 20,
  },
  profilePlaceholder: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  profileText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  headerTitle: {
    fontSize: 20,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  content: {
    flex: 1,
  },
  contentContainer: {
    padding: 24,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginTop: 16,
  },
  engagementCard: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 20,
    padding: 24,
    marginBottom: 24,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
    alignItems: 'center',
  },
  engagementTitle: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 8,
  },
  engagementScore: {
    fontSize: 48,
    fontFamily: 'Inter-Bold',
    marginBottom: 4,
  },
  engagementLevel: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    marginBottom: 16,
  },
  progressBar: {
    width: '100%',
    height: 8,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 4,
    overflow: 'hidden',
    marginBottom: 16,
  },
  progressFill: {
    height: '100%',
    borderRadius: 4,
  },
  streakContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 107, 53, 0.2)',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 12,
  },
  streakText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FF6B35',
    marginLeft: 6,
  },
  section: {
    marginBottom: 32,
  },
  sectionTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  statsGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
    gap: 12,
  },
  statCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    width: '48%',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  statHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 8,
  },
  statIcon: {
    marginRight: 8,
  },
  statTitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    flex: 1,
  },
  statValue: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  statSubtitle: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  tipsSection: {
    marginTop: 16,
  },
  tipCard: {
    backgroundColor: 'rgba(76, 175, 80, 0.1)',
    borderRadius: 16,
    padding: 20,
    borderWidth: 1,
    borderColor: 'rgba(76, 175, 80, 0.2)',
  },
  tipText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 8,
    lineHeight: 20,
  },
  bottomPadding: {
    height: 40,
  },
});