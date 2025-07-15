import { supabase } from '../supabase/client';

export interface NotificationSettings {
  id?: string;
  user_id: string;
  push_enabled: boolean;
  new_matches: boolean;
  new_messages: boolean;
  profile_views: boolean;
  super_likes: boolean;
  sound_enabled: boolean;
  vibration_enabled: boolean;
  quiet_hours_enabled: boolean;
  quiet_hours_start: string; // HH:MM format
  quiet_hours_end: string;   // HH:MM format
  timezone: string;
  created_at?: string;
  updated_at?: string;
}

export const DEFAULT_NOTIFICATION_SETTINGS: Omit<NotificationSettings, 'user_id'> = {
  push_enabled: true,
  new_matches: true,
  new_messages: true,
  profile_views: true,
  super_likes: true,
  sound_enabled: true,
  vibration_enabled: true,
  quiet_hours_enabled: false,
  quiet_hours_start: '22:00',
  quiet_hours_end: '08:00',
  timezone: 'UTC'
};

export class NotificationSettingsService {
  
  /**
   * Get user's notification settings, creating defaults if they don't exist
   */
  static async getUserSettings(userId: string): Promise<NotificationSettings> {
    try {
      console.log('🔔 Getting notification settings for user:', userId);
      
      const { data: settings, error } = await supabase
        .from('user_notification_settings')
        .select('*')
        .eq('user_id', userId)
        .maybeSingle();

      if (error) {
        console.error('❌ Error fetching notification settings:', error);
        throw error;
      }

      // If no settings exist, create defaults
      if (!settings) {
        console.log('🔔 Creating default notification settings for user:', userId);
        return await this.createDefaultSettings(userId);
      }

      console.log('✅ Found existing notification settings:', settings);
      return settings;
    } catch (error) {
      console.error('❌ Failed to get user notification settings:', error);
      throw error;
    }
  }

  /**
   * Create default notification settings for a user
   */
  static async createDefaultSettings(userId: string): Promise<NotificationSettings> {
    try {
      const { data: settings, error } = await supabase
        .rpc('create_default_notification_settings', { p_user_id: userId });

      if (error) {
        console.error('❌ Error creating default notification settings:', error);
        throw error;
      }

      console.log('✅ Created default notification settings:', settings);
      return settings;
    } catch (error) {
      console.error('❌ Failed to create default notification settings:', error);
      // Fallback to direct insert if RPC fails
      return await this.createDefaultSettingsDirect(userId);
    }
  }

  /**
   * Fallback method to create settings directly
   */
  private static async createDefaultSettingsDirect(userId: string): Promise<NotificationSettings> {
    const defaultSettings = {
      user_id: userId,
      ...DEFAULT_NOTIFICATION_SETTINGS
    };

    const { data: settings, error } = await supabase
      .from('user_notification_settings')
      .insert([defaultSettings])
      .select()
      .single();

    if (error) {
      console.error('❌ Error creating default settings directly:', error);
      throw error;
    }

    return settings;
  }

  /**
   * Update user's notification settings
   */
  static async updateSettings(userId: string, settings: Partial<NotificationSettings>): Promise<NotificationSettings> {
    try {
      console.log('🔔 Updating notification settings for user:', userId, settings);

      const { data: updatedSettings, error } = await supabase
        .from('user_notification_settings')
        .update(settings)
        .eq('user_id', userId)
        .select()
        .single();

      if (error) {
        console.error('❌ Error updating notification settings:', error);
        throw error;
      }

      console.log('✅ Updated notification settings:', updatedSettings);
      
      // Sync with availability if quiet hours were updated
      if ('quiet_hours_start' in settings || 'quiet_hours_end' in settings || 'quiet_hours_enabled' in settings) {
        console.log('🔄 Quiet hours updated, syncing with availability...');
        // Import here to avoid circular dependency
        const { AvailabilityService } = await import('./availabilityService');
        await AvailabilityService.syncFromNotificationSettings(userId);
      }
      
      return updatedSettings;
    } catch (error) {
      console.error('❌ Failed to update notification settings:', error);
      throw error;
    }
  }

  /**
   * Check if user should receive a specific type of notification
   */
  static async shouldReceiveNotification(
    userId: string, 
    notificationType: keyof Pick<NotificationSettings, 'new_matches' | 'new_messages' | 'profile_views' | 'super_likes'>
  ): Promise<boolean> {
    try {
      const settings = await this.getUserSettings(userId);
      
      // Check if push notifications are globally disabled
      if (!settings.push_enabled) {
        return false;
      }

      // Check if specific notification type is disabled
      if (!settings[notificationType]) {
        return false;
      }

      // Check quiet hours
      if (settings.quiet_hours_enabled) {
        const isQuietHours = this.isWithinQuietHours(
          settings.quiet_hours_start,
          settings.quiet_hours_end,
          settings.timezone
        );
        
        if (isQuietHours) {
          console.log('🔕 Notification blocked by quiet hours');
          return false;
        }
      }

      return true;
    } catch (error) {
      console.error('❌ Error checking notification permissions:', error);
      // Default to allowing notifications if there's an error
      return true;
    }
  }

  /**
   * Check if current time is within user's quiet hours
   */
  private static isWithinQuietHours(startTime: string, endTime: string, timezone: string): boolean {
    try {
      const now = new Date();
      const [startHour, startMin] = startTime.split(':').map(Number);
      const [endHour, endMin] = endTime.split(':').map(Number);

      const currentHour = now.getHours();
      const currentMin = now.getMinutes();
      const currentTimeMinutes = currentHour * 60 + currentMin;
      const startTimeMinutes = startHour * 60 + startMin;
      const endTimeMinutes = endHour * 60 + endMin;

      // Handle quiet hours that span midnight (e.g., 22:00 to 08:00)
      if (startTimeMinutes > endTimeMinutes) {
        return currentTimeMinutes >= startTimeMinutes || currentTimeMinutes <= endTimeMinutes;
      } else {
        return currentTimeMinutes >= startTimeMinutes && currentTimeMinutes <= endTimeMinutes;
      }
    } catch (error) {
      console.error('❌ Error checking quiet hours:', error);
      return false;
    }
  }

  /**
   * Get notification settings for sound and vibration
   */
  static async getSoundAndVibrationSettings(userId: string): Promise<{
    sound: boolean;
    vibration: boolean;
  }> {
    try {
      const settings = await this.getUserSettings(userId);
      return {
        sound: settings.sound_enabled,
        vibration: settings.vibration_enabled
      };
    } catch (error) {
      console.error('❌ Error getting sound/vibration settings:', error);
      return { sound: true, vibration: true }; // Default to enabled
    }
  }
}