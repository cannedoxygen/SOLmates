import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  Alert,
  Image,
  ActivityIndicator,
} from 'react-native';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { UserSafetyService, type BlockedUser } from '../lib/services/userSafetyService';
import { ProfileService, type SupabaseUserProfile } from '../lib/services/profileService';

interface BlockedUserWithProfile extends BlockedUser {
  profile?: SupabaseUserProfile;
}

export default function BlockedUsersScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  
  const [blockedUsers, setBlockedUsers] = useState<BlockedUserWithProfile[]>([]);
  const [loading, setLoading] = useState(true);
  const [actionLoading, setActionLoading] = useState<string | null>(null);

  useEffect(() => {
    if (user) {
      loadBlockedUsers();
    }
  }, [user]);

  const loadBlockedUsers = async () => {
    if (!user) return;
    
    try {
      setLoading(true);
      const blocked = await UserSafetyService.getBlockedUsers(user.id);
      
      // Load profiles for blocked users
      const blockedWithProfiles: BlockedUserWithProfile[] = await Promise.all(
        blocked.map(async (blockedUser) => {
          try {
            const profile = await ProfileService.getUserProfile(blockedUser.blocked_user_id);
            return { ...blockedUser, profile: profile || undefined };
          } catch (error) {
            console.error('Failed to load profile for blocked user:', error);
            return { ...blockedUser };
          }
        })
      );
      
      setBlockedUsers(blockedWithProfiles);
    } catch (error) {
      console.error('Failed to load blocked users:', error);
      Alert.alert('Error', 'Failed to load blocked users');
    } finally {
      setLoading(false);
    }
  };

  const handleUnblock = (blockedUser: BlockedUserWithProfile) => {
    Alert.alert(
      'Unblock User',
      `Unblock ${blockedUser.profile?.username || 'this user'}? They will be able to see your profile and message you again.`,
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Unblock',
          onPress: () => unblockUser(blockedUser)
        }
      ]
    );
  };

  const unblockUser = async (blockedUser: BlockedUserWithProfile) => {
    if (!user) return;
    
    setActionLoading(blockedUser.id);
    try {
      await UserSafetyService.unblockUser(user.id, blockedUser.blocked_user_id);
      
      // Remove from local state
      setBlockedUsers(prev => prev.filter(bu => bu.id !== blockedUser.id));
      
      Alert.alert('Success', 'User has been unblocked');
    } catch (error) {
      console.error('Failed to unblock user:', error);
      Alert.alert('Error', 'Failed to unblock user. Please try again.');
    } finally {
      setActionLoading(null);
    }
  };

  const renderBlockedUser = (blockedUser: BlockedUserWithProfile) => {
    const profileData = blockedUser.profile ? 
      ProfileService.convertToUserProfile(blockedUser.profile) : 
      {
        username: 'Unknown User',
        bio: 'Profile not available',
        avatar_url: undefined
      };

    return (
      <View key={blockedUser.id} style={styles.userCard}>
        <View style={styles.userInfo}>
          {profileData.avatar_url ? (
            <Image source={{ uri: profileData.avatar_url }} style={styles.avatar} />
          ) : (
            <View
              style={[styles.avatarPlaceholder, { backgroundColor: '#9945FF' }]}
            >
              <Text style={styles.avatarText}>
                {profileData.username.charAt(0).toUpperCase()}
              </Text>
            </View>
          )}
          
          <View style={styles.userDetails}>
            <Text style={styles.username}>{profileData.username}</Text>
            <Text style={styles.bio} numberOfLines={1}>
              {profileData.bio}
            </Text>
            <Text style={styles.blockedDate}>
              Blocked {new Date(blockedUser.created_at).toLocaleDateString()}
            </Text>
          </View>
        </View>

        <Pressable
          style={[styles.unblockButton, actionLoading === blockedUser.id && styles.unblockButtonDisabled]}
          onPress={() => handleUnblock(blockedUser)}
          disabled={actionLoading === blockedUser.id}
        >
          {actionLoading === blockedUser.id ? (
            <ActivityIndicator size="small" color="#FFFFFF" />
          ) : (
            <>
              <Ionicons name="checkmark-circle-outline" size={18} color="#FFFFFF" />
              <Text style={styles.unblockButtonText}>Unblock</Text>
            </>
          )}
        </Pressable>
      </View>
    );
  };

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>Blocked Users</Text>
        <View style={styles.backButton} />
      </View>

      <ScrollView
        style={styles.content}
        contentContainerStyle={styles.contentContainer}
        showsVerticalScrollIndicator={false}
      >
        {loading ? (
          <View style={styles.loadingContainer}>
            <ActivityIndicator size="large" color="#9945FF" />
            <Text style={styles.loadingText}>Loading blocked users...</Text>
          </View>
        ) : blockedUsers.length === 0 ? (
          <View style={styles.emptyContainer}>
            <Ionicons name="ban-outline" size={64} color="#666666" />
            <Text style={styles.emptyTitle}>No Blocked Users</Text>
            <Text style={styles.emptyText}>
              You haven't blocked any users yet. Blocked users won't be able to see your profile or message you.
            </Text>
          </View>
        ) : (
          <>
            <Text style={styles.sectionTitle}>
              {blockedUsers.length} blocked user{blockedUsers.length !== 1 ? 's' : ''}
            </Text>
            
            {blockedUsers.map(renderBlockedUser)}
            
            <View style={styles.disclaimer}>
              <Text style={styles.disclaimerText}>
                Unblocking a user will allow them to see your profile and message you again. You can block them again at any time.
              </Text>
            </View>
          </>
        )}
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
    paddingVertical: 100,
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginTop: 16,
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingVertical: 100,
    paddingHorizontal: 24,
  },
  emptyTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 8,
  },
  emptyText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    lineHeight: 20,
  },
  sectionTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 20,
  },
  userCard: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    marginBottom: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  userInfo: {
    flexDirection: 'row',
    alignItems: 'center',
    flex: 1,
  },
  avatar: {
    width: 50,
    height: 50,
    borderRadius: 25,
    marginRight: 12,
  },
  avatarPlaceholder: {
    width: 50,
    height: 50,
    borderRadius: 25,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  avatarText: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  userDetails: {
    flex: 1,
  },
  username: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  bio: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 2,
  },
  blockedDate: {
    fontSize: 11,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  unblockButton: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: '#4CAF50',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 8,
    gap: 4,
  },
  unblockButtonDisabled: {
    opacity: 0.5,
  },
  unblockButtonText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  disclaimer: {
    marginTop: 24,
    padding: 16,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
  },
  disclaimerText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    lineHeight: 16,
  },
});