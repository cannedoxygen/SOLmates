import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  ActivityIndicator,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, {
  useAnimatedStyle,
  interpolate,
  useSharedValue,
  withTiming,
} from 'react-native-reanimated';

interface UserProfile {
  github_url?: string;
  username: string;
}

interface ProjectsCardProps {
  userProfile: UserProfile;
}

interface GitHubRepo {
  id: number;
  name: string;
  description: string;
  language: string;
  stars: number;
  forks: number;
  updated_at: string;
  html_url: string;
}

interface GitHubStats {
  public_repos: number;
  followers: number;
  following: number;
}

const LANGUAGE_COLORS: { [key: string]: string } = {
  'JavaScript': '#F7DF1E',
  'TypeScript': '#3178C6',
  'Python': '#3776AB',
  'Rust': '#CE422B',
  'Solidity': '#363636',
  'Go': '#00ADD8',
  'Java': '#ED8B00',
  'C++': '#00599C',
  'Swift': '#FA7343',
  'Kotlin': '#7F52FF',
  'default': '#8B949E'
};

export function ProjectsCard({ userProfile }: ProjectsCardProps) {
  const [repos, setRepos] = useState<GitHubRepo[]>([]);
  const [stats, setStats] = useState<GitHubStats | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const projectAnimations = Array.from({ length: 6 }, () => useSharedValue(0));
  const statsAnimation = useSharedValue(0);

  useEffect(() => {
    projectAnimations.forEach((anim, index) => {
      // Use setTimeout for staggered animations instead of delay
      setTimeout(() => {
        anim.value = withTiming(1, {
          duration: 600,
        });
      }, index * 100);
    });
  }, []);

  // Fetch GitHub data on component mount
  useEffect(() => {
    if (userProfile.github_url) {
      fetchGitHubData();
    } else {
      setLoading(false);
      setError('No GitHub profile linked');
    }
  }, [userProfile.github_url]);

  useEffect(() => {
    if (!loading) {
      statsAnimation.value = withTiming(1, { duration: 1000 });
      projectAnimations.forEach((anim, index) => {
        // Use setTimeout for staggered animations instead of delay
        setTimeout(() => {
          anim.value = withTiming(1, {
            duration: 600,
          });
        }, index * 100);
      });
    }
  }, [loading, statsAnimation, projectAnimations]);

  const fetchGitHubData = async () => {
    try {
      setLoading(true);
      
      // Extract GitHub username from URL or use profile username
      let githubUsername = userProfile.username;
      if (userProfile.github_url) {
        const match = userProfile.github_url.match(/github\.com\/([^\/]+)/);
        if (match) githubUsername = match[1];
      }
      
      console.log('🔍 GitHub Debug - Initial:', {
        profileUsername: userProfile.username,
        githubUrl: userProfile.github_url,
        githubUrlType: typeof userProfile.github_url,
        githubUrlLength: userProfile.github_url?.length,
        extractedUsername: githubUsername
      });

      // Test the regex extraction more thoroughly
      if (userProfile.github_url) {
        const regexTest = userProfile.github_url.match(/github\.com\/([^\/]+)/);
        console.log('🔍 GitHub Regex Test:', {
          originalUrl: userProfile.github_url,
          regexMatch: regexTest,
          extractedFromRegex: regexTest?.[1],
          finalUsername: githubUsername
        });
      }

      // Fetch user stats
      console.log('🔍 GitHub API Call - User Stats:', `https://api.github.com/users/${githubUsername}`);
      const userResponse = await fetch(`https://api.github.com/users/${githubUsername}`);
      console.log('🔍 GitHub User Response:', {
        status: userResponse.status,
        ok: userResponse.ok,
        statusText: userResponse.statusText
      });
      
      if (userResponse.ok) {
        const userData = await userResponse.json();
        console.log('🔍 GitHub User Data:', {
          login: userData.login,
          public_repos: userData.public_repos,
          followers: userData.followers,
          following: userData.following
        });
        setStats({
          public_repos: userData.public_repos,
          followers: userData.followers,
          following: userData.following,
        });
      } else {
        console.log('🔍 GitHub User Error Response:', await userResponse.text());
      }

      // Fetch repositories
      const reposResponse = await fetch(`https://api.github.com/users/${githubUsername}/repos?sort=updated&per_page=6`);
      console.log('🔍 GitHub repos response:', reposResponse.status, reposResponse.ok);
      if (reposResponse.ok) {
        const reposData = await reposResponse.json();
        console.log('🔍 GitHub repos data:', reposData.length, 'repositories found');
        setRepos(reposData);
      } else {
        console.log('🔍 GitHub error response:', await reposResponse.text());
        setError('GitHub profile not found');
      }
    } catch (err) {
      setError('Failed to fetch GitHub data');
      console.error('GitHub API error:', err);
    } finally {
      setLoading(false);
    }
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
  };

  const getLanguageColor = (language: string | null) => {
    return LANGUAGE_COLORS[language || 'default'] || LANGUAGE_COLORS.default;
  };

  const renderRepoCard = (repo: GitHubRepo, index: number) => {
    const animation = projectAnimations[index];

    const animatedStyle = useAnimatedStyle(() => {
      const translateY = interpolate(animation.value, [0, 1], [30, 0]);
      const opacity = interpolate(animation.value, [0, 1], [0, 1]);

      return {
        transform: [{ translateY }],
        opacity,
      };
    });

    return (
      <Animated.View key={repo.id} style={[styles.repoCard, animatedStyle]}>
        <View style={[styles.repoCardInner, { backgroundColor: 'rgba(255, 255, 255, 0.08)' }]}>
          <View style={styles.repoHeader}>
            <View style={styles.repoTitleRow}>
              <Ionicons name="folder" size={16} color="#9945FF" />
              <Text style={styles.repoName} numberOfLines={1}>{repo.name}</Text>
            </View>
            <Text style={styles.repoDate}>{formatDate(repo.updated_at)}</Text>
          </View>

          {repo.description && (
            <Text style={styles.repoDescription} numberOfLines={2}>
              {repo.description}
            </Text>
          )}

          <View style={styles.repoFooter}>
            <View style={styles.repoStats}>
              {repo.language && (
                <View style={styles.languageTag}>
                  <View style={[styles.languageDot, { backgroundColor: getLanguageColor(repo.language) }]} />
                  <Text style={styles.languageText}>{repo.language}</Text>
                </View>
              )}
              
              <View style={styles.statItem}>
                <Ionicons name="star" size={12} color="#FFD700" />
                <Text style={styles.statText}>{repo.stars}</Text>
              </View>
              
              <View style={styles.statItem}>
                <Ionicons name="git-branch" size={12} color="#14F195" />
                <Text style={styles.statText}>{repo.forks}</Text>
              </View>
            </View>
          </View>
        </View>
      </Animated.View>
    );
  };

  const renderStats = () => {
    if (!stats) return null;

    const animatedStyle = useAnimatedStyle(() => {
      const scale = interpolate(statsAnimation.value, [0, 1], [0.9, 1]);
      const opacity = interpolate(statsAnimation.value, [0, 1], [0, 1]);

      return {
        transform: [{ scale }],
        opacity,
      };
    });

    return (
      <Animated.View style={[styles.statsContainer, animatedStyle]}>
        <View style={styles.statCard}>
          <Text style={styles.statNumber}>{stats.public_repos}</Text>
          <Text style={styles.statLabel}>Repositories</Text>
        </View>
        <View style={styles.statCard}>
          <Text style={styles.statNumber}>{stats.followers}</Text>
          <Text style={styles.statLabel}>Followers</Text>
        </View>
        <View style={styles.statCard}>
          <Text style={styles.statNumber}>{stats.following}</Text>
          <Text style={styles.statLabel}>Following</Text>
        </View>
      </Animated.View>
    );
  };

  return (
    <View style={[styles.card, { backgroundColor: 'rgba(25, 30, 50, 0.95)' }]}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={styles.scrollContent} scrollEnabled={true} nestedScrollEnabled={true}>
        {/* Header */}
        <View style={styles.header}>
          <View style={[styles.headerIcon, { backgroundColor: '#333' }]}>
            <Ionicons name="logo-github" size={24} color="#FFFFFF" />
          </View>
          <View style={styles.headerText}>
            <Text style={styles.headerTitle}>Projects & Work</Text>
            <Text style={styles.headerSubtitle}>GitHub portfolio</Text>
          </View>
        </View>

        {loading ? (
          <View style={styles.loadingContainer}>
            <ActivityIndicator size="large" color="#9945FF" />
            <Text style={styles.loadingText}>Loading GitHub data...</Text>
          </View>
        ) : error ? (
          <View style={styles.errorContainer}>
            <Ionicons name="alert-circle" size={48} color="#FF6B6B" />
            <Text style={styles.errorTitle}>Unable to load GitHub data</Text>
            <Text style={styles.errorText}>{error}</Text>
            <Pressable style={styles.retryButton} onPress={fetchGitHubData}>
              <Text style={styles.retryText}>Try Again</Text>
            </Pressable>
          </View>
        ) : (
          <>
            {/* GitHub Stats */}
            {renderStats()}

            {/* Recent Repositories */}
            <View style={styles.section}>
              <Text style={styles.sectionTitle}>Recent Projects</Text>
              <View style={styles.reposContainer}>
                {repos.length > 0 ? (
                  repos.map((repo, index) => renderRepoCard(repo, index))
                ) : (
                  <View style={styles.noReposContainer}>
                    <Ionicons name="folder-open" size={48} color="rgba(255, 255, 255, 0.3)" />
                    <Text style={styles.noReposText}>No public repositories found</Text>
                  </View>
                )}
              </View>
            </View>

            {/* Contribution Activity */}
            <View style={styles.section}>
              <Text style={styles.sectionTitle}>Contribution Activity</Text>
              <View style={styles.activityContainer}>
                <View style={[styles.activityCard, { backgroundColor: 'rgba(20, 241, 149, 0.1)' }]}>
                  <Ionicons name="git-commit" size={24} color="#14F195" />
                  <Text style={styles.activityText}>
                    Active contributor with consistent commits
                  </Text>
                </View>
              </View>
            </View>
          </>
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
  },
  scrollContent: {
    padding: 24,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 24,
  },
  headerIcon: {
    width: 48,
    height: 48,
    borderRadius: 24,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
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
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingVertical: 60,
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
    marginTop: 16,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingVertical: 60,
  },
  errorTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 8,
  },
  errorText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
    textAlign: 'center',
    marginBottom: 24,
  },
  retryButton: {
    backgroundColor: '#9945FF',
    paddingHorizontal: 24,
    paddingVertical: 12,
    borderRadius: 8,
  },
  retryText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  statsContainer: {
    flexDirection: 'row',
    marginBottom: 32,
    gap: 12,
  },
  statCard: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 16,
    padding: 16,
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  statNumber: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  statLabel: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  section: {
    marginBottom: 32,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  reposContainer: {
    gap: 12,
  },
  repoCard: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  repoCardInner: {
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  repoHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    marginBottom: 8,
  },
  repoTitleRow: {
    flexDirection: 'row',
    alignItems: 'center',
    flex: 1,
  },
  repoName: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginLeft: 8,
    flex: 1,
  },
  repoDate: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.5)',
  },
  repoDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
    marginBottom: 12,
    lineHeight: 20,
  },
  repoFooter: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  repoStats: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 16,
  },
  languageTag: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  languageDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    marginRight: 6,
  },
  languageText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
  },
  statItem: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  statText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
    marginLeft: 4,
  },
  noReposContainer: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  noReposText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.5)',
    marginTop: 16,
  },
  activityContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  activityCard: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(20, 241, 149, 0.2)',
  },
  activityText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginLeft: 12,
    flex: 1,
  },
});