import React from 'react';
import {
  View,
  Text,
  StyleSheet,
  Pressable,
  Linking,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInUp } from 'react-native-reanimated';

interface UserProfile {
  username: string;
  github_url?: string;
  website_url?: string;
  twitter_url?: string;
}

interface GitHubLinkCardProps {
  userProfile: UserProfile;
}

export function GitHubLinkCard({ userProfile }: GitHubLinkCardProps) {
  const openURL = async (url: string) => {
    try {
      const supported = await Linking.canOpenURL(url);
      if (supported) {
        await Linking.openURL(url);
      }
    } catch (error) {
      console.error('Error opening URL:', error);
    }
  };

  const extractUsername = (url: string) => {
    const match = url.match(/github\.com\/([^\/]+)/);
    return match ? match[1] : url;
  };

  const extractDomain = (url: string) => {
    try {
      const domain = url.replace(/^https?:\/\//, '').split('/')[0];
      return domain.replace('www.', '');
    } catch {
      return url;
    }
  };

  const getRandomColor = (index: number) => {
    const colors = ['#9945FF', '#14F195', '#FFD700', '#FF6B6B', '#6BCF7F'];
    return colors[index % colors.length];
  };

  // Only include GitHub and Website links (no Twitter)
  const links = [
    userProfile.github_url && {
      icon: 'logo-github',
      label: 'GitHub',
      value: `@${extractUsername(userProfile.github_url)}`,
      url: userProfile.github_url,
      color: '#333333',
    },
    userProfile.website_url && {
      icon: 'globe-outline',
      label: 'Website', 
      value: extractDomain(userProfile.website_url),
      url: userProfile.website_url.startsWith('http') ? userProfile.website_url : `https://${userProfile.website_url}`,
      color: '#9945FF',
    },
  ].filter(Boolean);

  // If no GitHub or Website links, show placeholder
  if (links.length === 0) {
    return (
      <Animated.View entering={FadeInUp.duration(600)} style={styles.card}>
        <Text style={styles.cardTitle}>Projects & Links</Text>
        
        <View style={styles.emptyCard}>
          <View style={styles.emptyIconContainer}>
            <Ionicons name="logo-github" size={32} color="rgba(255, 255, 255, 0.4)" />
            <Ionicons name="globe-outline" size={32} color="rgba(255, 255, 255, 0.4)" style={{ marginLeft: 8 }} />
          </View>
          <Text style={styles.emptyTitle}>Add Your Links</Text>
          <Text style={styles.emptySubtitle}>
            Showcase your GitHub projects and portfolio website to attract collaborators
          </Text>
          
          {/* Placeholder Cards */}
          <View style={styles.placeholderContainer}>
            <View style={styles.placeholderCard}>
              <Ionicons name="logo-github" size={20} color="rgba(255, 255, 255, 0.4)" />
              <Text style={styles.placeholderText}>Add GitHub profile</Text>
            </View>
            <View style={styles.placeholderCard}>
              <Ionicons name="globe-outline" size={20} color="rgba(255, 255, 255, 0.4)" />
              <Text style={styles.placeholderText}>Add portfolio website</Text>
            </View>
          </View>
        </View>
      </Animated.View>
    );
  }

  return (
    <Animated.View entering={FadeInUp.duration(600)} style={styles.card}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      <View style={styles.content}>
        {/* Header */}
        <View style={styles.header}>
          <View style={[styles.headerIcon, { backgroundColor: '#9945FF' }]}>
            <Ionicons name="link" size={20} color="#FFFFFF" />
          </View>
          <View style={styles.headerText}>
            <Text style={styles.headerTitle}>Projects & Links</Text>
            <Text style={styles.headerSubtitle}>Portfolio & social</Text>
          </View>
        </View>

        {/* Main Links */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Main Links</Text>
          <View style={styles.linksContainer}>
            {links.map((link, index) => (
              <Pressable
                key={index}
                style={({ pressed }) => [
                  styles.linkItem,
                  pressed && styles.linkItemPressed,
                ]}
                onPress={() => openURL(link.url)}
              >
                <View style={[styles.linkIcon, { backgroundColor: `${link.color}20` }]}>
                  <Ionicons name={link.icon as any} size={24} color={link.color} />
                </View>
                <View style={styles.linkContent}>
                  <Text style={styles.linkLabel}>{link.label}</Text>
                  <Text style={styles.linkValue} numberOfLines={1}>
                    {link.value}
                  </Text>
                </View>
                <Ionicons name="open-outline" size={20} color="#666666" />
              </Pressable>
            ))}
          </View>
        </View>

        {/* Quick Stats */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Portfolio Stats</Text>
          <View style={styles.statsGrid}>
            <View style={styles.statCard}>
              <View style={[styles.statIcon, { backgroundColor: '#14F195' }]}>
                <Ionicons name="git-branch" size={16} color="#FFFFFF" />
              </View>
              <Text style={styles.statValue}>12+</Text>
              <Text style={styles.statLabel}>Repositories</Text>
            </View>
            
            <View style={styles.statCard}>
              <View style={[styles.statIcon, { backgroundColor: '#FFD700' }]}>
                <Ionicons name="star" size={16} color="#FFFFFF" />
              </View>
              <Text style={styles.statValue}>45</Text>
              <Text style={styles.statLabel}>Stars</Text>
            </View>
            
            <View style={styles.statCard}>
              <View style={[styles.statIcon, { backgroundColor: '#FF6B6B' }]}>
                <Ionicons name="code" size={16} color="#FFFFFF" />
              </View>
              <Text style={styles.statValue}>8</Text>
              <Text style={styles.statLabel}>Languages</Text>
            </View>
          </View>
        </View>

        {/* Technology Tags */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Technologies</Text>
          <View style={styles.techContainer}>
            {['React', 'TypeScript', 'Solana', 'Web3', 'Node.js'].map((tech, index) => (
              <View key={tech} style={[styles.techPill, { backgroundColor: getRandomColor(index) + '20' }]}>
                <Text style={[styles.techText, { color: getRandomColor(index) }]}>{tech}</Text>
              </View>
            ))}
          </View>
        </View>

        {/* Call to Action */}
        <View style={styles.section}>
          <View style={styles.ctaContainer}>
            <View style={styles.ctaIcon}>
              <Ionicons name="rocket" size={20} color="#9945FF" />
            </View>
            <Text style={styles.ctaText}>Check out my latest projects and contributions!</Text>
          </View>
        </View>
      </View>
    </Animated.View>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    width: '100%',
    backgroundColor: 'rgba(25, 30, 50, 0.95)',
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
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  emptyCard: {
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 40,
  },
  emptyIconContainer: {
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 16,
  },
  emptyTitle: {
    fontSize: 20,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  emptySubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
    lineHeight: 20,
  },
  cardTitle: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 20,
  },
  linksContainer: {
    gap: 16,
  },
  linkItem: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  linkItemPressed: {
    opacity: 0.7,
    transform: [{ scale: 0.98 }],
  },
  linkIcon: {
    width: 48,
    height: 48,
    borderRadius: 24,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
  },
  linkContent: {
    flex: 1,
  },
  linkLabel: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  linkValue: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  placeholderContainer: {
    marginTop: 20,
    gap: 12,
  },
  placeholderCard: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    borderStyle: 'dashed',
  },
  placeholderText: {
    fontSize: 13,
    fontFamily: 'Inter-Medium',
    color: 'rgba(255, 255, 255, 0.6)',
    marginLeft: 8,
  },
  statsGrid: {
    flexDirection: 'row',
    gap: 8,
  },
  statCard: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 12,
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  statIcon: {
    width: 28,
    height: 28,
    borderRadius: 14,
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 6,
  },
  statValue: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  statLabel: {
    fontSize: 10,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
    textAlign: 'center',
  },
  techContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  techPill: {
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  techText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
  },
  ctaContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  ctaIcon: {
    marginRight: 10,
  },
  ctaText: {
    flex: 1,
    fontSize: 13,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
});