import React from 'react';
import { View, Text, StyleSheet, Image, Dimensions } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { Ionicons } from '@expo/vector-icons';

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

interface ProfileDisplayCardProps {
  user: UserProfile;
}

export function ProfileDisplayCard({ user }: ProfileDisplayCardProps) {
  return (
    <View style={styles.container}>
      <View style={styles.card}>
        {user.avatar_url ? (
          <Image source={{ uri: user.avatar_url }} style={styles.image} />
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
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    width: CARD_WIDTH,
    height: CARD_HEIGHT,
    alignItems: 'center',
    justifyContent: 'center',
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
});