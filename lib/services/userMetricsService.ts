import { supabase } from '../supabase/client';

export interface UserMetrics {
  total_swipes: number;
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

export class UserMetricsService {
  
  /**
   * Calculate response time based on user activity
   */
  static calculateResponseTime(lastSeen?: string, messageActivity?: number): string {
    if (!lastSeen) return 'Unknown';
    
    const lastSeenDate = new Date(lastSeen);
    const now = new Date();
    const hoursAgo = (now.getTime() - lastSeenDate.getTime()) / (1000 * 60 * 60);
    
    // Factor in message activity (higher activity = faster response)
    const activityMultiplier = messageActivity ? Math.min(messageActivity / 50, 1) : 0.5;
    const adjustedHours = hoursAgo / (1 + activityMultiplier);
    
    if (adjustedHours < 1) return 'Within 1 hour';
    if (adjustedHours < 4) return 'Within 2-4 hours';
    if (adjustedHours < 12) return 'Within 12 hours';
    if (adjustedHours < 24) return 'Within 1 day';
    if (adjustedHours < 72) return 'Within 3 days';
    return 'Slow to respond';
  }
  
  /**
   * Calculate reputation score based on multiple factors
   */
  static calculateReputationScore(
    baseScore: number = 0,
    matches: number = 0,
    messagesSent: number = 0,
    messagesReceived: number = 0,
    profileViews: number = 0,
    responseRate: number = 0
  ): number {
    let score = baseScore;
    
    // Activity bonuses
    score += Math.min(matches * 2, 50); // Up to 50 points for matches
    score += Math.min(messagesSent * 0.5, 25); // Up to 25 points for messaging
    score += Math.min(messagesReceived * 0.5, 25); // Up to 25 points for receiving messages
    score += Math.min(profileViews * 0.1, 20); // Up to 20 points for profile views
    
    // Response rate bonus (up to 30 points)
    score += responseRate * 30;
    
    // Cap at 100
    return Math.min(Math.round(score), 100);
  }
  
  /**
   * Get user metrics from database
   */
  static async getUserMetrics(userId: string): Promise<UserMetrics | null> {
    try {
      const { data, error } = await supabase
        .from('user_metrics')
        .select('*')
        .eq('user_id', userId)
        .single();
      
      if (error && error.code !== 'PGRST116') { // PGRST116 = no rows returned
        console.error('Failed to get user metrics:', error);
        return null;
      }
      
      return data || {
        total_swipes: 0,
        total_matches: 0,
        total_messages_sent: 0,
        total_messages_received: 0,
        profile_views: 0,
        match_rate: 0,
        response_rate: 0,
        last_active: new Date().toISOString(),
        total_sessions: 0,
        avg_session_duration: 0,
      };
    } catch (error) {
      console.error('Failed to get user metrics:', error);
      return null;
    }
  }
  
  /**
   * Update user's response time based on recent activity
   */
  static async updateUserResponseTime(userId: string): Promise<void> {
    try {
      // Get user's last seen and message activity
      const { data: user, error: userError } = await supabase
        .from('users')
        .select('last_seen')
        .eq('id', userId)
        .single();
      
      if (userError || !user) return;
      
      // Get user metrics for message activity
      const metrics = await this.getUserMetrics(userId);
      const messageActivity = metrics ? metrics.total_messages_sent + metrics.total_messages_received : 0;
      
      // Calculate response time
      const responseTime = this.calculateResponseTime(user.last_seen, messageActivity);
      
      // Update user's response time
      await supabase
        .from('users')
        .update({ response_time: responseTime })
        .eq('id', userId);
        
    } catch (error) {
      console.error('Failed to update user response time:', error);
    }
  }
  
  /**
   * Update user's reputation score based on activity
   */
  static async updateUserReputation(userId: string): Promise<void> {
    try {
      // Get current user data
      const { data: user, error: userError } = await supabase
        .from('users')
        .select('reputation_score')
        .eq('id', userId)
        .single();
      
      if (userError || !user) return;
      
      // Get user metrics
      const metrics = await this.getUserMetrics(userId);
      if (!metrics) return;
      
      // Calculate new reputation score
      const newScore = this.calculateReputationScore(
        user.reputation_score,
        metrics.total_matches,
        metrics.total_messages_sent,
        metrics.total_messages_received,
        metrics.profile_views,
        metrics.response_rate
      );
      
      // Update reputation score if it changed
      if (newScore !== user.reputation_score) {
        await supabase
          .from('users')
          .update({ reputation_score: newScore })
          .eq('id', userId);
      }
      
    } catch (error) {
      console.error('Failed to update user reputation:', error);
    }
  }
  
  /**
   * Update last seen timestamp for a user
   */
  static async updateLastSeen(userId: string): Promise<void> {
    try {
      await supabase
        .from('users')
        .update({ last_seen: new Date().toISOString() })
        .eq('id', userId);
    } catch (error) {
      console.error('Failed to update last seen:', error);
    }
  }
  
  /**
   * Get enhanced user profile with calculated metrics
   */
  static async getEnhancedUserProfile(userId: string): Promise<any> {
    try {
      // Get user data
      const { data: user, error: userError } = await supabase
        .from('users')
        .select('*')
        .eq('id', userId)
        .single();
      
      if (userError || !user) return null;
      
      // Get user metrics
      const metrics = await this.getUserMetrics(userId);
      
      // Calculate dynamic response time
      const messageActivity = metrics ? metrics.total_messages_sent + metrics.total_messages_received : 0;
      const dynamicResponseTime = this.calculateResponseTime(user.last_seen, messageActivity);
      
      // Calculate dynamic reputation
      const dynamicReputation = metrics ? this.calculateReputationScore(
        user.reputation_score,
        metrics.total_matches,
        metrics.total_messages_sent,
        metrics.total_messages_received,
        metrics.profile_views,
        metrics.response_rate
      ) : user.reputation_score;
      
      return {
        ...user,
        response_time: dynamicResponseTime,
        reputation_score: dynamicReputation,
        metrics: metrics,
      };
    } catch (error) {
      console.error('Failed to get enhanced user profile:', error);
      return null;
    }
  }
}