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
import { useRouter, useLocalSearchParams } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { ProfileService, type SupabaseUserProfile } from '../../lib/services/profileService';
import { UserSafetyService, type ReportType } from '../../lib/services/userSafetyService';
import { ensurePrivyId, isPrivyId } from '../../lib/utils/idMapping';

const REPORT_TYPES: { value: ReportType; label: string; description: string }[] = [
  {
    value: 'inappropriate_content',
    label: 'Inappropriate Content',
    description: 'Explicit, offensive, or disturbing content'
  },
  {
    value: 'harassment',
    label: 'Harassment',
    description: 'Bullying, threats, or abusive behavior'
  },
  {
    value: 'spam',
    label: 'Spam',
    description: 'Unwanted promotional or repetitive content'
  },
  {
    value: 'fake_profile',
    label: 'Fake Profile',
    description: 'Impersonation or misleading information'
  },
  {
    value: 'scam_crypto',
    label: 'Crypto Scam',
    description: 'Fraudulent investment or trading schemes'
  },
  {
    value: 'other',
    label: 'Other',
    description: 'Other policy violations'
  }
];

export default function UserMenuScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { userId } = useLocalSearchParams<{ userId: string }>();
  const { user } = usePrivy();
  
  const [userProfile, setUserProfile] = useState<SupabaseUserProfile | null>(null);
  const [loading, setLoading] = useState(true);
  const [isBlocked, setIsBlocked] = useState(false);
  const [actionLoading, setActionLoading] = useState(false);

  useEffect(() => {
    if (userId && user) {
      loadUserProfile();
      checkBlockStatus();
    }
  }, [userId, user?.id]);

  const loadUserProfile = async () => {
    if (!userId) return;
    
    try {
      const profile = await ProfileService.getUserProfile(userId);
      setUserProfile(profile);
    } catch (error) {
      console.error('Failed to load user profile:', error);
      Alert.alert('Error', 'Failed to load user profile');
      router.back();
    } finally {
      setLoading(false);
    }
  };

  const checkBlockStatus = async () => {
    if (!userId || !user) return;
    
    try {
      // Ensure both IDs are in Privy format for UserSafetyService
      const blockerPrivyId = user.id; // Already Privy ID from usePrivy
      const blockedPrivyId = await ensurePrivyId(userId);
      
      if (!blockedPrivyId) {
        console.error('Unable to convert user ID to Privy format:', userId);
        return;
      }
      
      const blocked = await UserSafetyService.isUserBlocked(blockerPrivyId, blockedPrivyId);
      setIsBlocked(blocked);
    } catch (error) {
      console.error('Failed to check block status:', error);
    }
  };

  const handleReport = () => {
    Alert.alert(
      'Report User',
      'Why are you reporting this user?',
      [
        { text: 'Cancel', style: 'cancel' },
        ...REPORT_TYPES.map(type => ({
          text: type.label,
          onPress: () => confirmReport(type.value, type.label)
        }))
      ],
      { cancelable: true }
    );
  };

  const confirmReport = (reportType: ReportType, reportLabel: string) => {
    Alert.alert(
      'Confirm Report',
      `Report this user for ${reportLabel}?`,
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Report',
          style: 'destructive',
          onPress: () => submitReport(reportType)
        }
      ]
    );
  };

  const submitReport = async (reportType: ReportType) => {
    if (!userId || !user) return;
    
    setActionLoading(true);
    try {
      // Ensure both IDs are in Privy format for UserSafetyService
      const reporterPrivyId = user.id; // Already Privy ID from usePrivy
      const reportedPrivyId = await ensurePrivyId(userId);
      
      if (!reportedPrivyId) {
        Alert.alert('Error', 'Unable to identify user. Please try again.');
        return;
      }
      
      await UserSafetyService.reportUser(
        reporterPrivyId,
        reportedPrivyId,
        reportType,
        `Reported via user menu for ${reportType}`
      );
      
      Alert.alert(
        'Report Submitted',
        'Thank you for helping keep our community safe. We will review this report.',
        [{ text: 'OK', onPress: () => router.back() }]
      );
    } catch (error) {
      console.error('Failed to report user:', error);
      Alert.alert('Error', 'Failed to submit report. Please try again.');
    } finally {
      setActionLoading(false);
    }
  };

  const handleBlock = () => {
    Alert.alert(
      isBlocked ? 'Unblock User' : 'Block User',
      isBlocked 
        ? `Unblock ${userProfile?.username || 'this user'}? They will be able to see your profile and message you again.`
        : `Block ${userProfile?.username || 'this user'}? They won't be able to see your profile or message you.`,
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: isBlocked ? 'Unblock' : 'Block',
          style: isBlocked ? 'default' : 'destructive',
          onPress: toggleBlock
        }
      ]
    );
  };

  const toggleBlock = async () => {
    if (!userId || !user) return;
    
    setActionLoading(true);
    try {
      // Ensure both IDs are in Privy format for UserSafetyService
      const blockerPrivyId = user.id; // Already Privy ID from usePrivy
      const blockedPrivyId = await ensurePrivyId(userId);
      
      if (!blockedPrivyId) {
        Alert.alert('Error', 'Unable to identify user. Please try again.');
        return;
      }
      
      if (isBlocked) {
        await UserSafetyService.unblockUser(blockerPrivyId, blockedPrivyId);
        Alert.alert('User Unblocked', 'You have unblocked this user.');
      } else {
        await UserSafetyService.blockUser(blockerPrivyId, blockedPrivyId, 'Blocked via user menu');
        Alert.alert('User Blocked', 'You have blocked this user.');
      }
      
      setIsBlocked(!isBlocked);
      router.back();
    } catch (error) {
      console.error('Failed to toggle block:', error);
      Alert.alert('Error', `Failed to ${isBlocked ? 'unblock' : 'block'} user. Please try again.`);
    } finally {
      setActionLoading(false);
    }
  };

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading...</Text>
        </View>
      </View>
    );
  }

  if (!userProfile) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.errorContainer}>
          <Text style={styles.errorText}>User not found</Text>
          <Pressable style={styles.backButton} onPress={() => router.back()}>
            <Text style={styles.backButtonText}>Go Back</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  const profileData = ProfileService.convertToUserProfile(userProfile);

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
        <Pressable onPress={() => router.back()} style={styles.headerButton}>
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>User Options</Text>
        <View style={styles.headerButton} />
      </View>

      <ScrollView
        style={styles.content}
        contentContainerStyle={styles.contentContainer}
        showsVerticalScrollIndicator={false}
      >
        {/* User Info */}
        <View style={styles.userCard}>
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
              <Text style={styles.bio} numberOfLines={2}>
                {profileData.bio}
              </Text>
            </View>
          </View>
        </View>

        {/* Action Buttons */}
        <View style={styles.actionsContainer}>
          <Pressable
            style={[styles.actionButton, styles.reportButton]}
            onPress={handleReport}
            disabled={actionLoading}
          >
            <Ionicons name="flag-outline" size={20} color="#FF5252" />
            <Text style={[styles.actionText, styles.reportText]}>Report User</Text>
          </Pressable>

          <Pressable
            style={[
              styles.actionButton,
              isBlocked ? styles.unblockButton : styles.blockButton
            ]}
            onPress={handleBlock}
            disabled={actionLoading}
          >
            {actionLoading ? (
              <ActivityIndicator size="small" color="#FFFFFF" />
            ) : (
              <Ionicons 
                name={isBlocked ? "checkmark-circle-outline" : "ban-outline"} 
                size={20} 
                color="#FFFFFF" 
              />
            )}
            <Text style={styles.actionText}>
              {isBlocked ? 'Unblock User' : 'Block User'}
            </Text>
          </Pressable>
        </View>

        <View style={styles.disclaimer}>
          <Text style={styles.disclaimerText}>
            Reporting helps keep our community safe. Blocking prevents this user from seeing your profile or contacting you.
          </Text>
        </View>
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
  headerButton: {
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
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginTop: 16,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 24,
  },
  errorText: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 24,
  },
  backButton: {
    backgroundColor: '#9945FF',
    paddingHorizontal: 24,
    paddingVertical: 12,
    borderRadius: 12,
  },
  backButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  userCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 32,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  userInfo: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  avatar: {
    width: 60,
    height: 60,
    borderRadius: 30,
    marginRight: 16,
  },
  avatarPlaceholder: {
    width: 60,
    height: 60,
    borderRadius: 30,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
  },
  avatarText: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  userDetails: {
    flex: 1,
  },
  username: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  bio: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  actionsContainer: {
    gap: 16,
  },
  actionButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 16,
    paddingHorizontal: 24,
    borderRadius: 12,
    gap: 8,
  },
  reportButton: {
    backgroundColor: 'rgba(255, 82, 82, 0.1)',
    borderWidth: 1,
    borderColor: 'rgba(255, 82, 82, 0.2)',
  },
  blockButton: {
    backgroundColor: '#FF5252',
  },
  unblockButton: {
    backgroundColor: '#4CAF50',
  },
  actionText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  reportText: {
    color: '#FF5252',
  },
  disclaimer: {
    marginTop: 32,
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