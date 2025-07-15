import { supabase } from '../supabase/client';
import { AnalyticsService } from './analyticsService';
import { PremiumService } from './premiumService';

export interface SwipeData {
  id: string;
  swiper_id: string;
  swiped_id: string;
  direction: 'left' | 'right' | 'super';
  created_at: string;
}

export interface MatchData {
  id: string;
  user1_id: string;
  user2_id: string;
  user1_liked: boolean;
  user2_liked: boolean;
  matched_at?: string;
  created_at: string;
}

export interface ChatData {
  id: string;
  user1_id: string;
  user2_id: string;
  last_message?: string;
  last_message_at?: string;
  created_at: string;
}

export class MatchingService {
  
  /**
   * Record a swipe action and check for potential matches
   */
  static async recordSwipe(
    swiperId: string, 
    swipedId: string, 
    direction: 'left' | 'right' | 'super'
  ): Promise<{ swipe: SwipeData; match?: MatchData; newChat?: ChatData }> {
    try {
      console.log('📝 Recording swipe:', { swiperId, swipedId, direction });

      // Check if user can perform this action based on their limits
      const canSwipe = await PremiumService.canPerformAction(
        swiperId, 
        direction === 'super' ? 'super_swipe' : 'swipe'
      );

      if (!canSwipe) {
        const limits = await PremiumService.getUserLimits(swiperId);
        if (direction === 'super') {
          throw new Error(`No super swipes remaining. ${limits.is_premium ? 'You\'ve used all 5 today.' : 'Upgrade to Premium or purchase more.'}`);
        } else {
          throw new Error(`Daily swipe limit reached. ${limits.is_premium ? '' : 'Upgrade to Premium for unlimited swipes.'}`);
        }
      }

      // 1. Record the swipe
      const { data: swipeData, error: swipeError } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: swiperId,
          swiped_id: swipedId,
          direction,
          created_at: new Date().toISOString(),
        }])
        .select('*');

      if (swipeError) {
        // Check if it's a duplicate swipe (user already swiped on this person)
        if (swipeError.code === '23505') {
          console.log('⚠️  User already swiped on this person');
          throw new Error('Already swiped on this user');
        }
        console.error('❌ Swipe error:', swipeError);
        throw swipeError;
      }

      console.log('📊 Swipe response data:', swipeData);

      if (!swipeData || swipeData.length === 0) {
        // Even if response is empty, the swipe was saved (status 201)
        // Create a temporary swipe object for the return
        const tempSwipe = {
          id: `temp_${Date.now()}`,
          swiper_id: swiperId,
          swiped_id: swipedId,
          direction,
          created_at: new Date().toISOString()
        };
        console.log('⚠️  Using temporary swipe object due to empty response');
        
        // Continue with match checking
        if (direction === 'right' || direction === 'super') {
          const matchResult = await this.checkAndCreateMatch(swiperId, swipedId, direction);
          return {
            swipe: tempSwipe,
            ...matchResult
          };
        }
        
        return { swipe: tempSwipe };
      }

      const swipeRecord = swipeData[0];
      console.log('✅ Swipe recorded:', swipeRecord.id);

      // Track swipe analytics
      AnalyticsService.trackSwipe(swiperId, swipedId, direction);

      // 2. If it's a right swipe or super like, check for potential match
      if (direction === 'right' || direction === 'super') {
        const matchResult = await this.checkAndCreateMatch(swiperId, swipedId, direction);
        return {
          swipe: swipeRecord,
          ...matchResult
        };
      }

      return { swipe: swipeRecord };
    } catch (error) {
      console.error('❌ Failed to record swipe:', error);
      throw error;
    }
  }

  /**
   * Check if there's a mutual like and create a match if so
   */
  private static async checkAndCreateMatch(
    swiperId: string, 
    swipedId: string, 
    direction: 'right' | 'super'
  ): Promise<{ match?: MatchData; newChat?: ChatData }> {
    try {
      // Check if the swiped user has already liked the swiper
      const { data: reciprocalSwipe, error: reciprocalError } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', swipedId)
        .eq('swiped_id', swiperId)
        .in('direction', ['right', 'super'])
        .single();

      if (reciprocalError && reciprocalError.code !== 'PGRST116') {
        // PGRST116 = no rows found, which is expected if no reciprocal swipe
        throw reciprocalError;
      }

      if (!reciprocalSwipe) {
        console.log('💭 No reciprocal swipe found yet');
        return {};
      }

      console.log('🎉 Mutual like detected! Creating match...');

      // Create match record
      const { data: matchData, error: matchError } = await supabase
        .from('matches')
        .insert([{
          user1_id: swiperId < swipedId ? swiperId : swipedId, // Consistent ordering
          user2_id: swiperId < swipedId ? swipedId : swiperId,
          user1_liked: true,
          user2_liked: true,
          matched_at: new Date().toISOString(),
          created_at: new Date().toISOString(),
        }])
        .select('*');

      if (matchError) {
        console.error('❌ Failed to create match:', matchError);
        throw matchError;
      }

      console.log('📊 Match response data:', matchData);

      // Handle null response but successful creation
      const matchRecord = matchData && matchData.length > 0 ? matchData[0] : {
        id: `temp_match_${Date.now()}`,
        user1_id: swiperId < swipedId ? swiperId : swipedId,
        user2_id: swiperId < swipedId ? swipedId : swiperId,
        user1_liked: true,
        user2_liked: true,
        matched_at: new Date().toISOString(),
        created_at: new Date().toISOString()
      };

      console.log('✅ Match created:', matchRecord.id);

      // Track match analytics for both users
      AnalyticsService.trackMatch(swiperId, swipedId, matchRecord.id);
      AnalyticsService.trackMatch(swipedId, swiperId, matchRecord.id);

      // Create chat for the match
      const { data: chatData, error: chatError } = await supabase
        .from('chats')
        .insert([{
          user1_id: swiperId < swipedId ? swiperId : swipedId,
          user2_id: swiperId < swipedId ? swipedId : swiperId,
          created_at: new Date().toISOString(),
        }])
        .select('*');

      let chatRecord = null;
      if (chatError) {
        console.error('❌ Failed to create chat:', chatError);
        // Don't throw here - match is still valid even if chat creation fails
      } else {
        chatRecord = chatData && chatData.length > 0 ? chatData[0] : {
          id: `temp_chat_${Date.now()}`,
          user1_id: swiperId < swipedId ? swiperId : swipedId,
          user2_id: swiperId < swipedId ? swipedId : swiperId,
          created_at: new Date().toISOString()
        };
        console.log('✅ Chat created:', chatRecord.id);
      }

      return {
        match: matchRecord,
        newChat: chatRecord || undefined
      };
    } catch (error) {
      console.error('❌ Failed to check/create match:', error);
      throw error;
    }
  }

  /**
   * Get all matches for a user
   */
  static async getUserMatches(userId: string): Promise<MatchData[]> {
    try {
      const { data: matches, error } = await supabase
        .from('matches')
        .select(`
          *,
          user1:user1_id(id, username, avatar_url, twitter_avatar_url),
          user2:user2_id(id, username, avatar_url, twitter_avatar_url)
        `)
        .or(`user1_id.eq.${userId},user2_id.eq.${userId}`)
        .not('matched_at', 'is', null)
        .order('matched_at', { ascending: false });

      if (error) throw error;

      console.log('🔍 Found matches for user:', matches?.length || 0);
      return matches || [];
    } catch (error) {
      console.error('❌ Failed to get user matches:', error);
      return [];
    }
  }

  /**
   * Get match count for a user
   */
  static async getMatchCount(userId: string): Promise<number> {
    try {
      const { count, error } = await supabase
        .from('matches')
        .select('*', { count: 'exact', head: true })
        .or(`user1_id.eq.${userId},user2_id.eq.${userId}`)
        .not('matched_at', 'is', null);

      if (error) throw error;

      console.log('📊 Match count for user:', count || 0);
      return count || 0;
    } catch (error) {
      console.error('❌ Failed to get match count:', error);
      return 0;
    }
  }

  /**
   * Get users that the current user has already swiped on
   */
  static async getSwipedUserIds(userId: string): Promise<string[]> {
    try {
      const { data: swipes, error } = await supabase
        .from('swipes')
        .select('swiped_id')
        .eq('swiper_id', userId);

      if (error) throw error;

      const swipedIds = swipes?.map(swipe => swipe.swiped_id) || [];
      console.log('🔍 User has swiped on:', swipedIds.length, 'profiles');
      return swipedIds;
    } catch (error) {
      console.error('❌ Failed to get swiped user IDs:', error);
      return [];
    }
  }

  /**
   * Get discovery users excluding already swiped users and matches
   */
  static async getDiscoveryUsers(
    currentUserId: string, 
    limit = 20
  ): Promise<any[]> {
    try {
      // Get users the current user has already swiped on
      const swipedUserIds = await this.getSwipedUserIds(currentUserId);
      
      // Build the query
      let query = supabase
        .from('users')
        .select('*')
        .neq('id', currentUserId)
        .eq('profile_completed', true)
        .eq('is_active', true);

      // Exclude already swiped users if any exist
      if (swipedUserIds.length > 0) {
        query = query.not('id', 'in', `(${swipedUserIds.join(',')})`);
      }

      const { data: users, error } = await query
        .order('created_at', { ascending: false })
        .limit(limit);

      if (error) throw error;

      console.log('🔍 Found discovery users:', users?.length || 0);
      return users || [];
    } catch (error) {
      console.error('❌ Failed to get discovery users:', error);
      return [];
    }
  }

  /**
   * Check if two users have matched
   */
  static async areUsersMatched(user1Id: string, user2Id: string): Promise<boolean> {
    try {
      const { data: match, error } = await supabase
        .from('matches')
        .select('id')
        .or(
          `and(user1_id.eq.${user1Id},user2_id.eq.${user2Id}),and(user1_id.eq.${user2Id},user2_id.eq.${user1Id})`
        )
        .not('matched_at', 'is', null)
        .single();

      if (error && error.code !== 'PGRST116') {
        throw error;
      }

      return !!match;
    } catch (error) {
      console.error('❌ Failed to check if users are matched:', error);
      return false;
    }
  }

  /**
   * Get chat between two users
   */
  static async getChatBetweenUsers(user1Id: string, user2Id: string): Promise<ChatData | null> {
    try {
      const { data: chat, error } = await supabase
        .from('chats')
        .select('*')
        .or(
          `and(user1_id.eq.${user1Id},user2_id.eq.${user2Id}),and(user1_id.eq.${user2Id},user2_id.eq.${user1Id})`
        )
        .single();

      if (error && error.code !== 'PGRST116') {
        throw error;
      }

      return chat || null;
    } catch (error) {
      console.error('❌ Failed to get chat between users:', error);
      return null;
    }
  }
}