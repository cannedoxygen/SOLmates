import { supabase } from '../supabase/client';

export type EventType = 
  | 'app_open'
  | 'profile_view'
  | 'profile_edit'
  | 'swipe_left'
  | 'swipe_right'
  | 'super_swipe'
  | 'match_created'
  | 'message_sent'
  | 'message_received'
  | 'chat_opened'
  | 'user_reported'
  | 'user_blocked'
  | 'settings_changed'
  | 'wallet_connected'
  | 'tip_sent'
  | 'tip_received'
  | 'project_created'
  | 'task_created';

export interface AnalyticsEvent {
  id: string;
  user_id: string;
  event_type: EventType;
  event_data?: Record<string, any>;
  session_id?: string;
  created_at: string;
}

export interface UserMetrics {
  total_swipes: number;
  total_super_swipes: number;
  total_matches: number;
  total_messages_sent: number;
  total_messages_received: number;
  profile_views: number;
  match_rate: number;
  response_rate: number;
  last_active: string;
  total_sessions: number;
  avg_session_duration: number;
}

export interface AppMetrics {
  daily_active_users: number;
  weekly_active_users: number;
  monthly_active_users: number;
  total_users: number;
  total_matches: number;
  total_messages: number;
  avg_swipes_per_session: number;
  match_conversion_rate: number;
}

export class AnalyticsService {
  /**
   * Get current session ID from SessionManager
   */
  private static getSessionId(): string | null {
    // Import here to avoid circular dependency
    const { SessionManager } = require('./sessionManager');
    return SessionManager.getInstance().getCurrentSessionId();
  }

  /**
   * Track an analytics event
   */
  static async trackEvent(
    userId: string,
    eventType: EventType,
    eventData?: Record<string, any>
  ): Promise<void> {
    try {
      const sessionId = this.getSessionId();
      
      console.log('📊 Tracking event:', {
        user_id: userId,
        event_type: eventType,
        event_data: eventData,
        session_id: sessionId
      });

      const { error } = await supabase
        .from('analytics_events')
        .insert([{
          user_id: userId,
          event_type: eventType,
          event_data: eventData,
          session_id: sessionId,
          created_at: new Date().toISOString()
        }]);

      if (error) throw error;

      // Update session activity
      const { SessionManager } = require('./sessionManager');
      SessionManager.getInstance().updateActivity();
    } catch (error) {
      console.error('❌ Failed to track event:', error);
      // Don't throw error to prevent breaking app functionality
    }
  }

  /**
   * Track swipe event
   */
  static async trackSwipe(
    userId: string,
    swipedUserId: string,
    direction: 'left' | 'right' | 'super'
  ): Promise<void> {
    const eventType: EventType = direction === 'left' ? 'swipe_left' : 
                                  direction === 'right' ? 'swipe_right' : 'super_swipe';
    
    await this.trackEvent(userId, eventType, {
      swiped_user_id: swipedUserId,
      direction: direction
    });
  }

  /**
   * Track match creation
   */
  static async trackMatch(
    userId: string,
    matchedUserId: string,
    matchId: string
  ): Promise<void> {
    await this.trackEvent(userId, 'match_created', {
      matched_user_id: matchedUserId,
      match_id: matchId
    });
  }

  /**
   * Track message events
   */
  static async trackMessage(
    userId: string,
    recipientId: string,
    messageType: 'sent' | 'received',
    chatId: string
  ): Promise<void> {
    const eventType: EventType = messageType === 'sent' ? 'message_sent' : 'message_received';
    
    await this.trackEvent(userId, eventType, {
      recipient_id: recipientId,
      chat_id: chatId
    });
  }

  /**
   * Track profile interactions
   */
  static async trackProfileView(
    viewerId: string,
    profileUserId: string
  ): Promise<void> {
    await this.trackEvent(viewerId, 'profile_view', {
      profile_user_id: profileUserId
    });
  }

  /**
   * Track wallet interactions
   */
  static async trackWalletEvent(
    userId: string,
    eventType: 'wallet_connected' | 'tip_sent' | 'tip_received',
    eventData?: Record<string, any>
  ): Promise<void> {
    await this.trackEvent(userId, eventType, eventData);
  }

  /**
   * Get user metrics
   */
  static async getUserMetrics(userId: string): Promise<UserMetrics | null> {
    try {
      const { data, error } = await supabase
        .rpc('get_user_metrics', { input_user_id: userId });

      if (error) throw error;

      // The function now returns JSON, so data is the object directly
      return data;
    } catch (error) {
      console.error('❌ Failed to get user metrics:', error);
      return null;
    }
  }

  /**
   * Get app-wide metrics (for admin dashboard)
   */
  static async getAppMetrics(): Promise<AppMetrics | null> {
    try {
      const { data, error } = await supabase
        .rpc('get_app_metrics');

      if (error) throw error;

      return data;
    } catch (error) {
      console.error('❌ Failed to get app metrics:', error);
      return null;
    }
  }

  /**
   * Get user engagement insights
   */
  static async getUserEngagement(userId: string): Promise<{
    weekly_swipes: number;
    weekly_matches: number;
    weekly_messages: number;
    weekly_super_likes: number;
    engagement_score: number;
    streak_days: number;
  } | null> {
    try {
      const { data, error } = await supabase
        .rpc('get_user_engagement', { input_user_id: userId });

      if (error) throw error;

      // The function now returns JSON, so data is the object directly
      return data;
    } catch (error) {
      console.error('❌ Failed to get user engagement:', error);
      return null;
    }
  }

  /**
   * Get trending matches (users with high match rates)
   */
  static async getTrendingUsers(limit = 10): Promise<string[]> {
    try {
      const { data, error } = await supabase
        .rpc('get_trending_users', { result_limit: limit });

      if (error) throw error;

      return data || [];
    } catch (error) {
      console.error('❌ Failed to get trending users:', error);
      return [];
    }
  }
}