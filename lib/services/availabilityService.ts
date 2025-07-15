import { supabase } from '../supabase/client';
import { NotificationSettingsService } from './notificationSettingsService';

export interface AvailabilitySettings {
  id?: string;
  user_id: string;
  
  // Working hours (same as quiet hours from notifications)
  working_hours_enabled: boolean;
  working_hours_start: string; // HH:MM format
  working_hours_end: string;   // HH:MM format
  
  // Availability status
  availability_status: 'full-time' | 'part-time' | 'weekends' | 'flexible';
  
  // Timezone
  timezone: string;
  
  created_at?: string;
  updated_at?: string;
}

export const DEFAULT_AVAILABILITY_SETTINGS: Omit<AvailabilitySettings, 'user_id'> = {
  working_hours_enabled: false,
  working_hours_start: '09:00',
  working_hours_end: '17:00',
  availability_status: 'flexible',
  timezone: 'UTC'
};

export class AvailabilityService {
  
  /**
   * Get user's availability settings, creating defaults if they don't exist
   */
  static async getUserAvailability(userId: string): Promise<AvailabilitySettings> {
    try {
      // First try to get notification settings to sync quiet hours
      const notificationSettings = await NotificationSettingsService.getUserSettings(userId);
      
      // Check if we have availability settings in profile
      const { data: profile, error } = await supabase
        .from('users')
        .select('availability, timezone')
        .eq('privy_user_id', userId)
        .maybeSingle();
      
      if (error) {
        console.error('❌ Error fetching availability from profile:', error);
      }
      
      // Create availability settings from notification settings as primary source
      const availabilitySettings: AvailabilitySettings = {
        user_id: userId,
        working_hours_enabled: notificationSettings.quiet_hours_enabled,
        // Invert quiet hours to working hours (quiet 22:00-08:00 = working 08:00-22:00)
        working_hours_start: notificationSettings.quiet_hours_end,
        working_hours_end: notificationSettings.quiet_hours_start,
        availability_status: (profile?.availability as any) || 'flexible',
        timezone: profile?.timezone || notificationSettings.timezone || 'UTC'
      };
      
      console.log('✅ Built availability settings from notification settings:', availabilitySettings);
      return availabilitySettings;
    } catch (error) {
      console.error('❌ Failed to get user availability settings:', error);
      throw error;
    }
  }
  
  /**
   * Sync working hours from notification settings when quiet hours change
   */
  static async syncFromNotificationSettings(userId: string): Promise<void> {
    try {
      console.log('🔄 Syncing availability from notification settings for user:', userId);
      
      const notificationSettings = await NotificationSettingsService.getUserSettings(userId);
      
      // Calculate working hours from quiet hours
      // If quiet hours are 22:00-08:00, working hours are 08:00-22:00
      const workingStart = notificationSettings.quiet_hours_end;
      const workingEnd = notificationSettings.quiet_hours_start;
      
      // Update user profile with synced hours
      const { error } = await supabase
        .from('users')
        .update({
          timezone: notificationSettings.timezone,
          updated_at: new Date().toISOString()
        })
        .eq('privy_user_id', userId);
      
      if (error) {
        console.error('❌ Failed to sync availability to profile:', error);
      } else {
        console.log('✅ Synced availability to profile:', {
          working_hours: `${workingStart} - ${workingEnd}`,
          timezone: notificationSettings.timezone
        });
      }
    } catch (error) {
      console.error('❌ Failed to sync availability from notification settings:', error);
    }
  }
  
  /**
   * Update availability status (full-time, part-time, etc.)
   */
  static async updateAvailabilityStatus(userId: string, status: AvailabilitySettings['availability_status']): Promise<void> {
    try {
      const { error } = await supabase
        .from('users')
        .update({
          availability: status,
          updated_at: new Date().toISOString()
        })
        .eq('privy_user_id', userId);
      
      if (error) {
        console.error('❌ Failed to update availability status:', error);
        throw error;
      }
      
      console.log('✅ Updated availability status:', status);
    } catch (error) {
      console.error('❌ Failed to update availability status:', error);
      throw error;
    }
  }
  
  /**
   * Check if user is currently available based on their working hours
   */
  static isUserCurrentlyAvailable(settings: AvailabilitySettings): boolean {
    if (!settings.working_hours_enabled) {
      return true; // Always available if no working hours set
    }
    
    try {
      const now = new Date();
      const [startHour, startMin] = settings.working_hours_start.split(':').map(Number);
      const [endHour, endMin] = settings.working_hours_end.split(':').map(Number);
      
      const currentHour = now.getHours();
      const currentMin = now.getMinutes();
      const currentTimeMinutes = currentHour * 60 + currentMin;
      const startTimeMinutes = startHour * 60 + startMin;
      const endTimeMinutes = endHour * 60 + endMin;
      
      // Handle working hours that span midnight
      if (startTimeMinutes > endTimeMinutes) {
        return currentTimeMinutes >= startTimeMinutes || currentTimeMinutes <= endTimeMinutes;
      } else {
        return currentTimeMinutes >= startTimeMinutes && currentTimeMinutes <= endTimeMinutes;
      }
    } catch (error) {
      console.error('❌ Error checking availability hours:', error);
      return true; // Default to available
    }
  }
}