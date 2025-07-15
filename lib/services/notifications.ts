import * as Notifications from 'expo-notifications';
import * as Device from 'expo-device';
import { Platform } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { NotificationSettingsService } from './notificationSettingsService';

const NOTIFICATION_STORAGE_KEY = '@solmates/notification_token';

export interface NotificationData {
  type: 'match' | 'message' | 'badge' | 'project_invite';
  title: string;
  body: string;
  data?: any;
}

Notifications.setNotificationHandler({
  handleNotification: async () => ({
    shouldShowAlert: true,
    shouldPlaySound: true,
    shouldSetBadge: true,
  }),
});

export class NotificationService {
  private token: string | null = null;

  static async requestPermissions(): Promise<{ granted: boolean }> {
    try {
      if (!Device.isDevice) {
        console.warn('Push notifications only work on physical devices');
        return { granted: false };
      }

      const { status } = await Notifications.requestPermissionsAsync();
      return { granted: status === 'granted' };
    } catch (error) {
      console.error('Failed to request notification permissions:', error);
      return { granted: false };
    }
  }

  async initialize(): Promise<boolean> {
    try {
      // Check if device supports notifications
      if (!Device.isDevice) {
        console.warn('Push notifications only work on physical devices');
        return false;
      }

      // Get existing permission status
      const { status: existingStatus } = await Notifications.getPermissionsAsync();
      let finalStatus = existingStatus;

      // Request permission if not granted
      if (existingStatus !== 'granted') {
        const { status } = await Notifications.requestPermissionsAsync();
        finalStatus = status;
      }

      if (finalStatus !== 'granted') {
        console.warn('Push notification permission not granted');
        return false;
      }

      // Get push token
      const tokenData = await Notifications.getExpoPushTokenAsync({
        projectId: process.env.EXPO_PUBLIC_PROJECT_ID,
      });
      
      this.token = tokenData.data;
      
      // Store token locally
      await AsyncStorage.setItem(NOTIFICATION_STORAGE_KEY, this.token);
      
      // Register token with backend
      await this.registerTokenWithBackend(this.token);

      // Configure notification channel for Android
      if (Platform.OS === 'android') {
        await Notifications.setNotificationChannelAsync('default', {
          name: 'Default',
          importance: Notifications.AndroidImportance.MAX,
          vibrationPattern: [0, 250, 250, 250],
          lightColor: '#9945FF',
        });
      }

      return true;
    } catch (error) {
      console.error('Failed to initialize notifications:', error);
      return false;
    }
  }

  async getStoredToken(): Promise<string | null> {
    try {
      return await AsyncStorage.getItem(NOTIFICATION_STORAGE_KEY);
    } catch (error) {
      console.error('Failed to get stored notification token:', error);
      return null;
    }
  }

  private async registerTokenWithBackend(token: string): Promise<void> {
    try {
      await fetch('https://api.solmates.app/notifications/register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          token,
          platform: Platform.OS,
        }),
      });
    } catch (error) {
      console.error('Failed to register token with backend:', error);
    }
  }

  async scheduleLocalNotification(
    title: string,
    body: string,
    data?: any,
    trigger?: Notifications.NotificationTriggerInput,
    sound: boolean = true,
    vibration: boolean = true
  ): Promise<string> {
    return await Notifications.scheduleNotificationAsync({
      content: {
        title,
        body,
        data,
        sound: sound ? 'default' : undefined,
        priority: Notifications.AndroidNotificationPriority.HIGH,
        vibrate: vibration ? [250, 250, 250, 250] : undefined,
      },
      trigger: trigger || null,
    });
  }

  async sendMatchNotification(userId: string, matchedUserName: string): Promise<void> {
    // Check if user wants to receive match notifications
    const shouldSend = await NotificationSettingsService.shouldReceiveNotification(userId, 'new_matches');
    if (!shouldSend) {
      console.log('🔕 Match notification blocked by user preferences');
      return;
    }

    // Get sound/vibration preferences
    const { sound, vibration } = await NotificationSettingsService.getSoundAndVibrationSettings(userId);
    
    await this.scheduleLocalNotification(
      "It's a Match! 🎉",
      `You and ${matchedUserName} liked each other!`,
      { type: 'match', matchedUser: matchedUserName },
      null,
      sound,
      vibration
    );
  }

  async sendMessageNotification(
    userId: string,
    senderName: string, 
    message: string
  ): Promise<void> {
    // Check if user wants to receive message notifications
    const shouldSend = await NotificationSettingsService.shouldReceiveNotification(userId, 'new_messages');
    if (!shouldSend) {
      console.log('🔕 Message notification blocked by user preferences');
      return;
    }

    // Get sound/vibration preferences
    const { sound, vibration } = await NotificationSettingsService.getSoundAndVibrationSettings(userId);
    
    await this.scheduleLocalNotification(
      `New message from ${senderName}`,
      message,
      { type: 'message', sender: senderName },
      null,
      sound,
      vibration
    );
  }

  async sendSuperLikeNotification(userId: string): Promise<void> {
    // Check if user wants to receive super like notifications
    const shouldSend = await NotificationSettingsService.shouldReceiveNotification(userId, 'super_likes');
    if (!shouldSend) {
      console.log('🔕 Super like notification blocked by user preferences');
      return;
    }

    // Get sound/vibration preferences
    const { sound, vibration } = await NotificationSettingsService.getSoundAndVibrationSettings(userId);
    
    await this.scheduleLocalNotification(
      'Someone super liked you! 💫',
      'Check your matches to see who it was',
      { type: 'super_like' },
      null,
      sound,
      vibration
    );
  }

  async sendBadgeNotification(userId: string, projectName: string): Promise<void> {
    // For now, badge notifications don't have a specific preference, so we just check sound/vibration
    const { sound, vibration } = await NotificationSettingsService.getSoundAndVibrationSettings(userId);
    
    await this.scheduleLocalNotification(
      'Badge Minted! 🏆',
      `Your collaboration badge for ${projectName} has been created`,
      { type: 'badge', project: projectName },
      null,
      sound,
      vibration
    );
  }

  async sendProjectInviteNotification(
    projectName: string,
    inviterName: string
  ): Promise<void> {
    await this.scheduleLocalNotification(
      'Project Invitation 🚀',
      `${inviterName} invited you to collaborate on ${projectName}`,
      { type: 'project_invite', project: projectName, inviter: inviterName }
    );
  }

  async clearAllNotifications(): Promise<void> {
    await Notifications.dismissAllNotificationsAsync();
  }

  async cancelScheduledNotification(id: string): Promise<void> {
    await Notifications.cancelScheduledNotificationAsync(id);
  }

  async getBadgeCount(): Promise<number> {
    const count = await Notifications.getBadgeCountAsync();
    return count;
  }

  async setBadgeCount(count: number): Promise<void> {
    await Notifications.setBadgeCountAsync(count);
  }

  subscribeToNotifications(
    callback: (notification: Notifications.Notification) => void
  ) {
    return Notifications.addNotificationReceivedListener(callback);
  }

  subscribeToNotificationResponses(
    callback: (response: Notifications.NotificationResponse) => void
  ) {
    return Notifications.addNotificationResponseReceivedListener(callback);
  }

  async updateNotificationSettings(
    userId: string,
    settings: {
      matches: boolean;
      messages: boolean;
      badges: boolean;
      projects: boolean;
    }
  ): Promise<void> {
    try {
      await fetch('https://api.solmates.app/notifications/settings', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          userId,
          settings,
        }),
      });
    } catch (error) {
      console.error('Failed to update notification settings:', error);
    }
  }
}

export const notificationService = new NotificationService();