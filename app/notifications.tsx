import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  Switch,
  Alert,
  ActivityIndicator,
  Modal,
  Platform,
} from 'react-native';
import DateTimePicker from '@react-native-community/datetimepicker';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { NotificationSettingsService, type NotificationSettings, DEFAULT_NOTIFICATION_SETTINGS } from '../lib/services/notificationSettingsService';
import { NotificationService } from '../lib/services/notifications';

export default function NotificationsScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const [settings, setSettings] = useState<NotificationSettings | null>(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [showStartTimePicker, setShowStartTimePicker] = useState(false);
  const [showEndTimePicker, setShowEndTimePicker] = useState(false);

  useEffect(() => {
    loadNotificationSettings();
  }, [user]);

  const loadNotificationSettings = async () => {
    if (!user) return;
    
    try {
      console.log('🔔 Loading notification settings for user:', user.id);
      const userSettings = await NotificationSettingsService.getUserSettings(user.id);
      setSettings(userSettings);
      console.log('✅ Loaded notification settings:', userSettings);
    } catch (error) {
      console.error('❌ Failed to load notification settings:', error);
      // Use defaults if loading fails
      setSettings({
        user_id: user.id,
        ...DEFAULT_NOTIFICATION_SETTINGS
      });
    } finally {
      setLoading(false);
    }
  };

  const updateSetting = async (key: keyof NotificationSettings, value: boolean | string) => {
    if (!user || !settings) return;

    try {
      // Update local state immediately for responsive UI
      const newSettings = { ...settings, [key]: value };
      setSettings(newSettings);

      // Save to backend
      await NotificationSettingsService.updateSettings(user.id, { [key]: value });
      console.log('✅ Updated notification setting:', key, value);
    } catch (error) {
      console.error('❌ Failed to update notification setting:', error);
      // Revert local state on error
      loadNotificationSettings();
      Alert.alert('Error', 'Failed to save notification settings. Please try again.');
    }
  };

  // Helper to convert Date to HH:MM format
  const formatTimeForDatabase = (date: Date): string => {
    const hours = date.getHours().toString().padStart(2, '0');
    const minutes = date.getMinutes().toString().padStart(2, '0');
    return `${hours}:${minutes}`;
  };

  // Helper to convert HH:MM to Date object for today
  const parseTimeToDate = (timeString: string): Date => {
    const [hours, minutes] = timeString.split(':').map(Number);
    const date = new Date();
    date.setHours(hours, minutes, 0, 0);
    return date;
  };

  // Handle time picker changes
  const handleStartTimeChange = (event: any, selectedDate?: Date) => {
    if (Platform.OS === 'android') {
      setShowStartTimePicker(false);
    }
    
    if (selectedDate && settings) {
      const timeString = formatTimeForDatabase(selectedDate);
      updateSetting('quiet_hours_start', timeString);
    }
  };

  const handleEndTimeChange = (event: any, selectedDate?: Date) => {
    if (Platform.OS === 'android') {
      setShowEndTimePicker(false);
    }
    
    if (selectedDate && settings) {
      const timeString = formatTimeForDatabase(selectedDate);
      updateSetting('quiet_hours_end', timeString);
    }
  };

  const requestPermissions = async () => {
    try {
      const { granted } = await NotificationService.requestPermissions();
      
      if (granted) {
        Alert.alert('Success', 'Notification permissions granted!');
        // Update push_enabled setting
        await updateSetting('push_enabled', true);
      } else {
        Alert.alert(
          'Permissions Required',
          'Please enable notifications in your device settings to receive updates.',
          [
            { text: 'Cancel', style: 'cancel' },
            { text: 'Open Settings', onPress: () => {
              // On iOS/Android, this typically opens the app settings
              // The actual implementation depends on your notification service
            }},
          ]
        );
      }
    } catch (error) {
      console.error('❌ Failed to request permissions:', error);
      Alert.alert('Error', 'Failed to request notification permissions.');
    }
  };

  const renderSection = (title: string, children: React.ReactNode) => (
    <View style={styles.section}>
      <Text style={styles.sectionTitle}>{title}</Text>
      {children}
    </View>
  );

  const renderToggle = (
    label: string, 
    value: boolean, 
    onValueChange: (value: boolean) => void,
    subtitle?: string,
    disabled?: boolean
  ) => (
    <View style={[styles.toggleRow, disabled && styles.toggleRowDisabled]}>
      <View style={styles.toggleInfo}>
        <Text style={[styles.toggleLabel, disabled && styles.toggleLabelDisabled]}>
          {label}
        </Text>
        {subtitle && (
          <Text style={[styles.toggleSubtitle, disabled && styles.toggleSubtitleDisabled]}>
            {subtitle}
          </Text>
        )}
      </View>
      <Switch
        value={value}
        onValueChange={onValueChange}
        trackColor={{ false: '#363636', true: '#9945FF' }}
        thumbColor="#FFFFFF"
        disabled={disabled}
      />
    </View>
  );

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>Notifications</Text>
        <View style={styles.backButton} />
      </View>

      {loading ? (
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading notification settings...</Text>
        </View>
      ) : !settings ? (
        <View style={styles.errorContainer}>
          <Text style={styles.errorText}>Failed to load notification settings</Text>
          <Pressable style={styles.retryButton} onPress={loadNotificationSettings}>
            <Text style={styles.retryText}>Retry</Text>
          </Pressable>
        </View>
      ) : (
        <ScrollView
          style={styles.content}
          contentContainerStyle={styles.contentContainer}
          showsVerticalScrollIndicator={false}
        >
          {/* Master Controls */}
          {renderSection('Notifications', (
            <>
              {renderToggle(
                'Push notifications',
                settings.push_enabled,
                (value) => updateSetting('push_enabled', value),
                'Enable all push notifications'
              )}
              
              {!settings.push_enabled && (
                <Pressable style={styles.permissionButton} onPress={requestPermissions}>
                  <Ionicons name="settings-outline" size={20} color="#9945FF" />
                  <Text style={styles.permissionText}>Enable in device settings</Text>
                </Pressable>
              )}
            </>
          ))}

          {/* Push Notification Types */}
          {renderSection('Push Notifications', (
            <>
              {renderToggle(
                'New matches',
                settings.new_matches,
                (value) => updateSetting('new_matches', value),
                'When someone likes you back',
                !settings.push_enabled
              )}
              {renderToggle(
                'New messages',
                settings.new_messages,
                (value) => updateSetting('new_messages', value),
                'When you receive a chat message',
                !settings.push_enabled
              )}
              {renderToggle(
                'Profile views',
                settings.profile_views,
                (value) => updateSetting('profile_views', value),
                'When someone views your profile',
                !settings.push_enabled
              )}
              {renderToggle(
                'Super likes',
                settings.super_likes,
                (value) => updateSetting('super_likes', value),
                'When someone super likes you',
                !settings.push_enabled
              )}
            </>
          ))}


        {/* Sound & Vibration */}
        {renderSection('Sound & Vibration', (
          <>
            {renderToggle(
              'Sound',
              settings.sound_enabled,
              (value) => updateSetting('sound_enabled', value),
              'Play notification sounds'
            )}
            {renderToggle(
              'Vibration',
              settings.vibration_enabled,
              (value) => updateSetting('vibration_enabled', value),
              'Vibrate for notifications'
            )}
          </>
        ))}

        {/* Quiet Hours */}
        {renderSection('Quiet Hours', (
          <>
            {renderToggle(
              'Enable quiet hours',
              settings.quiet_hours_enabled,
              (value) => updateSetting('quiet_hours_enabled', value),
              'Pause notifications during specific hours'
            )}
            
            {settings.quiet_hours_enabled && (
              <View style={styles.quietHoursContainer}>
                <Pressable 
                  style={styles.timePickerRow}
                  onPress={() => setShowStartTimePicker(true)}
                >
                  <Text style={styles.timeLabel}>From</Text>
                  <View style={styles.timePicker}>
                    <Text style={styles.timeText}>{settings.quiet_hours_start}</Text>
                    <Ionicons name="chevron-down" size={16} color="#666666" />
                  </View>
                </Pressable>
                
                <Pressable 
                  style={styles.timePickerRow}
                  onPress={() => setShowEndTimePicker(true)}
                >
                  <Text style={styles.timeLabel}>To</Text>
                  <View style={styles.timePicker}>
                    <Text style={styles.timeText}>{settings.quiet_hours_end}</Text>
                    <Ionicons name="chevron-down" size={16} color="#666666" />
                  </View>
                </Pressable>

                <Text style={styles.syncNote}>
                  These hours will sync with your availability settings
                </Text>
              </View>
            )}
          </>
        ))}

          <View style={styles.bottomPadding} />
        </ScrollView>
      )}
      
      {/* Time Pickers */}
      {showStartTimePicker && settings && (
        Platform.OS === 'ios' ? (
          <Modal
            transparent={true}
            animationType="slide"
            visible={showStartTimePicker}
            onRequestClose={() => setShowStartTimePicker(false)}
          >
            <View style={styles.modalOverlay}>
              <View style={styles.timePickerModal}>
                <View style={styles.timePickerHeader}>
                  <Pressable onPress={() => setShowStartTimePicker(false)}>
                    <Text style={styles.timePickerCancel}>Cancel</Text>
                  </Pressable>
                  <Text style={styles.timePickerTitle}>Quiet Hours Start</Text>
                  <Pressable onPress={() => setShowStartTimePicker(false)}>
                    <Text style={styles.timePickerDone}>Done</Text>
                  </Pressable>
                </View>
                <DateTimePicker
                  value={parseTimeToDate(settings.quiet_hours_start)}
                  mode="time"
                  display="spinner"
                  onChange={handleStartTimeChange}
                  style={styles.iosTimePicker}
                  textColor="#FFFFFF"
                />
              </View>
            </View>
          </Modal>
        ) : (
          <DateTimePicker
            value={parseTimeToDate(settings.quiet_hours_start)}
            mode="time"
            display="default"
            onChange={handleStartTimeChange}
          />
        )
      )}
      
      {showEndTimePicker && settings && (
        Platform.OS === 'ios' ? (
          <Modal
            transparent={true}
            animationType="slide"
            visible={showEndTimePicker}
            onRequestClose={() => setShowEndTimePicker(false)}
          >
            <View style={styles.modalOverlay}>
              <View style={styles.timePickerModal}>
                <View style={styles.timePickerHeader}>
                  <Pressable onPress={() => setShowEndTimePicker(false)}>
                    <Text style={styles.timePickerCancel}>Cancel</Text>
                  </Pressable>
                  <Text style={styles.timePickerTitle}>Quiet Hours End</Text>
                  <Pressable onPress={() => setShowEndTimePicker(false)}>
                    <Text style={styles.timePickerDone}>Done</Text>
                  </Pressable>
                </View>
                <DateTimePicker
                  value={parseTimeToDate(settings.quiet_hours_end)}
                  mode="time"
                  display="spinner"
                  onChange={handleEndTimeChange}
                  style={styles.iosTimePicker}
                  textColor="#FFFFFF"
                />
              </View>
            </View>
          </Modal>
        ) : (
          <DateTimePicker
            value={parseTimeToDate(settings.quiet_hours_end)}
            mode="time"
            display="default"
            onChange={handleEndTimeChange}
          />
        )
      )}
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
    padding: 8,
    marginLeft: -8,
  },
  headerTitle: {
    fontSize: 20,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  saveButton: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    backgroundColor: '#9945FF',
    borderRadius: 16,
  },
  saveButtonDisabled: {
    opacity: 0.5,
  },
  saveButtonText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  content: {
    flex: 1,
  },
  contentContainer: {
    paddingHorizontal: 24,
    paddingTop: 24,
  },
  section: {
    marginBottom: 32,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  toggleRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.05)',
  },
  toggleRowDisabled: {
    opacity: 0.5,
  },
  toggleInfo: {
    flex: 1,
    marginRight: 16,
  },
  toggleLabel: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
  },
  toggleLabelDisabled: {
    color: '#666666',
  },
  toggleSubtitle: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginTop: 4,
  },
  toggleSubtitleDisabled: {
    color: '#444444',
  },
  permissionButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 12,
    paddingHorizontal: 16,
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    marginTop: 8,
  },
  permissionText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginLeft: 8,
  },
  quietHoursContainer: {
    marginTop: 12,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 16,
  },
  timePickerRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 8,
  },
  timeLabel: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
  },
  timePicker: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 8,
  },
  timeText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginRight: 8,
  },
  bottomPadding: {
    height: 40,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingTop: 100,
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
    paddingTop: 100,
    paddingHorizontal: 40,
  },
  errorText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FF6B6B',
    textAlign: 'center',
    marginBottom: 20,
  },
  retryButton: {
    backgroundColor: '#9945FF',
    paddingHorizontal: 24,
    paddingVertical: 12,
    borderRadius: 12,
  },
  retryText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  availabilityButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    padding: 16,
    marginTop: 12,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  availabilityInfo: {
    flex: 1,
  },
  availabilityText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  availabilitySubtext: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  syncNote: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    marginTop: 12,
    fontStyle: 'italic',
  },
  modalOverlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    justifyContent: 'flex-end',
  },
  timePickerModal: {
    backgroundColor: '#0A0E27',
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    paddingBottom: 40,
  },
  timePickerHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingVertical: 16,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.1)',
  },
  timePickerTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  timePickerCancel: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#666666',
  },
  timePickerDone: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  iosTimePicker: {
    height: 200,
    backgroundColor: 'transparent',
  },
});