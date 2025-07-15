import { supabase } from '../supabase/client';

export type ReportType = 
  | 'inappropriate_content'
  | 'harassment' 
  | 'spam'
  | 'fake_profile'
  | 'scam_crypto'
  | 'other';

export type ReportStatus = 'pending' | 'under_review' | 'resolved' | 'dismissed';

export interface UserReport {
  id: string;
  reporter_id: string;
  reported_user_id: string;
  report_type: ReportType;
  report_reason?: string;
  evidence_text?: string;
  evidence_image_url?: string;
  status: ReportStatus;
  moderator_notes?: string;
  moderator_id?: string;
  created_at: string;
  updated_at: string;
}

export interface BlockedUser {
  id: string;
  blocker_id: string;
  blocked_user_id: string;
  reason?: string;
  created_at: string;
}

export interface UserSafetyStatus {
  id: string;
  privy_user_id: string;
  is_banned: boolean;
  is_flagged: boolean;
  warning_count: number;
  ban_reason?: string;
  ban_until?: string;
  created_at: string;
  updated_at: string;
}

export class UserSafetyService {
  
  /**
   * Report a user for inappropriate behavior
   */
  static async reportUser(
    reporterId: string,
    reportedUserId: string,
    reportType: ReportType,
    reason?: string,
    evidenceText?: string
  ): Promise<UserReport> {
    try {
      console.log('🚨 Reporting user:', {
        reporter_id: reporterId,
        reported_user_id: reportedUserId,
        report_type: reportType
      });

      const { data: report, error } = await supabase
        .from('user_reports')
        .insert([{
          reporter_id: reporterId,
          reported_user_id: reportedUserId,
          report_type: reportType,
          report_reason: reason,
          evidence_text: evidenceText,
          status: 'pending'
        }])
        .select()
        .single();

      if (error) throw error;

      console.log('✅ User report created:', report.id);
      return report;
    } catch (error) {
      console.error('❌ Failed to report user:', error);
      throw error;
    }
  }

  /**
   * Block a user
   */
  static async blockUser(
    blockerId: string,
    blockedUserId: string,
    reason?: string
  ): Promise<BlockedUser> {
    try {
      console.log('🚫 Blocking user:', {
        blocker_id: blockerId,
        blocked_user_id: blockedUserId
      });

      const { data: block, error } = await supabase
        .from('blocked_users')
        .insert([{
          blocker_id: blockerId,
          blocked_user_id: blockedUserId,
          reason: reason
        }])
        .select()
        .single();

      if (error) throw error;

      console.log('✅ User blocked:', block.id);
      return block;
    } catch (error) {
      console.error('❌ Failed to block user:', error);
      throw error;
    }
  }

  /**
   * Unblock a user
   */
  static async unblockUser(
    blockerId: string,
    blockedUserId: string
  ): Promise<void> {
    try {
      console.log('🔓 Unblocking user:', {
        blocker_id: blockerId,
        blocked_user_id: blockedUserId
      });

      const { error } = await supabase
        .from('blocked_users')
        .delete()
        .eq('blocker_id', blockerId)
        .eq('blocked_user_id', blockedUserId);

      if (error) throw error;

      console.log('✅ User unblocked');
    } catch (error) {
      console.error('❌ Failed to unblock user:', error);
      throw error;
    }
  }

  /**
   * Get list of users blocked by current user
   */
  static async getBlockedUsers(blockerId: string): Promise<BlockedUser[]> {
    try {
      const { data: blockedUsers, error } = await supabase
        .from('blocked_users')
        .select('*')
        .eq('blocker_id', blockerId)
        .order('created_at', { ascending: false });

      if (error) throw error;

      console.log('📋 Retrieved blocked users:', blockedUsers?.length || 0);
      return blockedUsers || [];
    } catch (error) {
      console.error('❌ Failed to get blocked users:', error);
      return [];
    }
  }

  /**
   * Check if user A has blocked user B
   */
  static async isUserBlocked(
    blockerId: string,
    blockedUserId: string
  ): Promise<boolean> {
    try {
      const { data: blocks, error } = await supabase
        .from('blocked_users')
        .select('id')
        .eq('blocker_id', blockerId)
        .eq('blocked_user_id', blockedUserId);

      if (error) throw error;

      return (blocks?.length || 0) > 0;
    } catch (error) {
      console.error('❌ Failed to check if user is blocked:', error);
      return false;
    }
  }

  /**
   * Check if two users have blocked each other (for filtering matches)
   */
  static async checkMutualBlocks(
    userId1: string,
    userId2: string
  ): Promise<boolean> {
    try {
      const { data: blocks, error } = await supabase
        .from('blocked_users')
        .select('id')
        .or(`and(blocker_id.eq.${userId1},blocked_user_id.eq.${userId2}),and(blocker_id.eq.${userId2},blocked_user_id.eq.${userId1})`);

      if (error) throw error;

      return (blocks?.length || 0) > 0;
    } catch (error) {
      console.error('❌ Failed to check mutual blocks:', error);
      return false;
    }
  }

  /**
   * Get user's safety status
   */
  static async getUserSafetyStatus(privyUserId: string): Promise<UserSafetyStatus | null> {
    try {
      const { data: status, error } = await supabase
        .from('user_safety_status')
        .select('*')
        .eq('privy_user_id', privyUserId)
        .single();

      if (error && error.code !== 'PGRST116') throw error; // Ignore "not found" error

      return status || null;
    } catch (error) {
      console.error('❌ Failed to get user safety status:', error);
      return null;
    }
  }

  /**
   * Get filtered discovery users (excluding blocked users and banned users)
   */
  static async getFilteredDiscoveryUsers(
    currentUserId: string,
    limit = 20
  ): Promise<any[]> {
    try {
      // First get blocked user IDs
      const blockedUsers = await this.getBlockedUsers(currentUserId);
      const blockedUserIds = blockedUsers.map(block => block.blocked_user_id);
      
      // Also get users who blocked current user
      const { data: blockingUsers, error: blockError } = await supabase
        .from('blocked_users')
        .select('blocker_id')
        .eq('blocked_user_id', currentUserId);

      if (blockError) throw blockError;

      const blockingUserIds = blockingUsers?.map(block => block.blocker_id) || [];
      
      // Combine all users to exclude
      const excludedUserIds = [
        currentUserId,
        ...blockedUserIds,
        ...blockingUserIds
      ];

      console.log('🔍 Excluding users from discovery:', excludedUserIds.length);

      // Get users excluding blocked/banned users
      const { data: users, error } = await supabase
        .from('users')
        .select(`
          *,
          user_safety_status (
            is_banned,
            is_flagged
          )
        `)
        .not('privy_user_id', 'in', `(${excludedUserIds.map(id => `"${id}"`).join(',')})`)
        .eq('profile_completed', true)
        .eq('is_active', true)
        .order('created_at', { ascending: false })
        .limit(limit);

      if (error) throw error;

      // Filter out banned users
      const filteredUsers = users?.filter(user => 
        !user.user_safety_status?.is_banned
      ) || [];

      console.log('✅ Filtered discovery users:', filteredUsers.length);
      return filteredUsers;
    } catch (error) {
      console.error('❌ Failed to get filtered discovery users:', error);
      return [];
    }
  }

  /**
   * Get user's reports (reports they made)
   */
  static async getUserReports(reporterId: string): Promise<UserReport[]> {
    try {
      const { data: reports, error } = await supabase
        .from('user_reports')
        .select('*')
        .eq('reporter_id', reporterId)
        .order('created_at', { ascending: false });

      if (error) throw error;

      return reports || [];
    } catch (error) {
      console.error('❌ Failed to get user reports:', error);
      return [];
    }
  }
}