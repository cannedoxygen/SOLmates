import { supabase } from '../supabase/client';
import { UserSafetyService } from './userSafetyService';
import { UserMetricsService } from './userMetricsService';

export interface SupabaseUserProfile {
  id: string;
  privy_user_id: string;
  wallet_address?: string;
  username?: string;
  display_name?: string;
  bio?: string;
  avatar_url?: string;
  skills?: string[];
  looking_for?: string[];
  interests?: string[];
  experience_level?: string;
  availability?: string;
  location?: string;
  timezone?: string;
  twitter_username?: string;
  twitter_name?: string;
  twitter_avatar_url?: string;
  github_url?: string;
  website_url?: string;
  twitter_url?: string;
  profile_completed: boolean;
  reputation_score: number;
  response_time?: string;
  last_seen?: string;
  is_active: boolean;
  created_at: string;
  updated_at: string;
}

export interface ProfileUpdateData {
  username?: string;
  bio?: string;
  skills?: string[];
  looking_for?: string[];
  interests?: string[];
  experience_level?: string;
  availability?: string;
  location?: string;
  timezone?: string;
  github_url?: string;
  website_url?: string;
  twitter_url?: string;
}

export class ProfileService {
  
  /**
   * Create or update user profile when Privy user logs in
   * This is called automatically on login to sync Privy data with Supabase
   * Now creates a complete profile using Twitter data as defaults
   */
  static async syncPrivyUser(privyUser: any, walletAddress?: string): Promise<SupabaseUserProfile> {
    try {
      // Extract Twitter data from Privy user
      const twitterAccount = privyUser.linked_accounts?.find(
        (account: any) => account.type === 'twitter_oauth'
      );

      // Create a basic profile using Twitter data - user will complete it in onboarding
      const profileData = {
        privy_user_id: privyUser.id,
        wallet_address: walletAddress,
        username: twitterAccount?.name || twitterAccount?.username || 'Anonymous User',
        bio: '', // Leave empty for user to fill
        skills: [], // Leave empty for user to select
        looking_for: [], // Leave empty for user to select
        twitter_username: twitterAccount?.username,
        twitter_name: twitterAccount?.name,
        twitter_avatar_url: twitterAccount?.profile_picture_url,
        profile_completed: false, // Always false - user must complete onboarding
        updated_at: new Date().toISOString(),
      };

      console.log('🔄 Syncing Privy user with Supabase:', {
        privy_user_id: privyUser.id,
        twitter_username: twitterAccount?.username,
        wallet_address: walletAddress,
      });

      // Try to get existing user first
      const { data: existingUsers, error: fetchError } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', privyUser.id);

      if (fetchError) {
        throw fetchError;
      }

      const existingUser = existingUsers && existingUsers.length > 0 ? existingUsers[0] : null;

      console.log('🔍 Sync - Existing user check:', {
        found: !!existingUser,
        array_length: existingUsers?.length,
        user_id: existingUser?.id
      });

      if (existingUser) {
        // Update existing user with latest Privy data
        const { data: updatedUser, error: updateError } = await supabase
          .from('users')
          .update(profileData)
          .eq('id', existingUser.id)
          .select()
          .single();

        if (updateError) throw updateError;
        
        console.log('✅ Updated existing user in Supabase:', updatedUser.id);
        return updatedUser;
      } else {
        // Create new user
        console.log('🔧 Creating new user during sync...');
        const { data: newUser, error: createError } = await supabase
          .from('users')
          .insert([{
            ...profileData,
            is_active: true,
            reputation_score: 0,
            profile_completed: false, // Set to false so they go through onboarding
            created_at: new Date().toISOString(),
          }])
          .select()
          .single();

        if (createError) {
          console.error('❌ Create error during sync:', createError);
          throw createError;
        }
        
        console.log('✅ Created new user in Supabase:', newUser.id);
        return newUser;
      }
    } catch (error) {
      console.error('❌ Failed to sync Privy user with Supabase:', error);
      throw error;
    }
  }

  /**
   * Update user profile data (bio, skills, looking_for)
   * This is called when user completes onboarding or edits profile
   */
  static async updateUserProfile(privyUserId: string, updates: ProfileUpdateData): Promise<SupabaseUserProfile> {
    try {
      // Check if this completes the profile
      const profileCompleted = !!(updates.bio && updates.skills?.length && updates.looking_for?.length);
      
      const updateData = {
        ...updates,
        profile_completed: profileCompleted,
        updated_at: new Date().toISOString(),
      };

      // Remove null/undefined values to avoid unnecessary updates
      Object.keys(updateData).forEach(key => {
        if (updateData[key] === null || updateData[key] === undefined) {
          delete updateData[key];
        }
      });

      console.log('📝 Updating user profile:', {
        privy_user_id: privyUserId,
        profile_completed: profileCompleted,
        updates: Object.keys(updates),
        updateData: updateData,
      });

      // First, check if user exists
      const { data: existingUsers, error: fetchError } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', privyUserId);

      if (fetchError) {
        throw fetchError;
      }

      const existingUser = existingUsers && existingUsers.length > 0 ? existingUsers[0] : null;

      console.log('🔍 Existing user check:', {
        found: !!existingUser,
        array_length: existingUsers?.length,
        user_id: existingUser?.id,
        privy_user_id: privyUserId
      });

      if (existingUser) {
        // Remove username from update if it's the same as existing to avoid unique constraint issues
        if (updateData.username && updateData.username === existingUser.username) {
          delete updateData.username;
          console.log('🔄 Skipping username update (same as existing)');
        }

        // Update existing user by ID instead of privy_user_id for better reliability
        console.log('🔄 Updating existing user:', existingUser.id);
        console.log('🔄 Update data:', updateData);
        
        const { data: updatedUser, error: updateError } = await supabase
          .from('users')
          .update(updateData)
          .eq('id', existingUser.id)
          .select()
          .single();

        if (updateError) {
          console.error('❌ Update error:', updateError);
          console.error('❌ Update data:', updateData);
          console.error('❌ Existing user ID:', existingUser.id);
          console.error('❌ Error code:', updateError.code);
          console.error('❌ Error details:', updateError.details);
          throw updateError;
        }
        
        console.log('✅ Profile updated successfully:', updatedUser?.id);
        return updatedUser;
      } else {
        // Create new user with profile data
        console.log('🔧 Creating new user with profile data...');
        const { data: newUser, error: createError } = await supabase
          .from('users')
          .insert([{
            privy_user_id: privyUserId,
            ...updateData,
            is_active: true,
            reputation_score: 0,
            created_at: new Date().toISOString(),
          }])
          .select()
          .single();

        if (createError) {
          console.error('❌ Create error:', createError);
          throw createError;
        }
        
        console.log('✅ Profile created successfully:', newUser?.id);
        return newUser;
      }
    } catch (error) {
      console.error('❌ Failed to update user profile:', error);
      throw error;
    }
  }

  /**
   * Get user profile by Privy user ID with enhanced metrics
   */
  static async getUserProfile(privyUserId: string): Promise<SupabaseUserProfile | null> {
    try {
      console.log('🔍 Attempting to get user profile from Supabase for:', privyUserId);
      
      // First try to get user normally
      const { data: users, error } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', privyUserId);

      if (error) {
        console.error('❌ Error fetching user profile:', error);
        return null;
      }

      const user = users && users.length > 0 ? users[0] : null;
      
      if (user) {
        // Update last seen timestamp
        await UserMetricsService.updateLastSeen(user.id);
        
        // Get enhanced profile with calculated metrics
        const enhancedProfile = await UserMetricsService.getEnhancedUserProfile(user.id);
        
        console.log('✅ Successfully got enhanced user profile from Supabase:', {
          id: enhancedProfile?.id,
          username: enhancedProfile?.username,
          reputation_score: enhancedProfile?.reputation_score,
          response_time: enhancedProfile?.response_time,
          profile_completed: enhancedProfile?.profile_completed,
        });
        
        return enhancedProfile || user;
      }

      return null;
    } catch (error) {
      console.error('❌ Failed to get user profile:', error);
      return null;
    }
  }

  /**
   * Get users for discovery (excluding current user, only completed profiles)
   * @deprecated Use UserSafetyService.getFilteredDiscoveryUsers instead
   */
  static async getDiscoveryUsers(currentPrivyUserId: string, limit = 20): Promise<SupabaseUserProfile[]> {
    try {
      // Import here to avoid circular dependency
      return await UserSafetyService.getFilteredDiscoveryUsers(currentPrivyUserId, limit);
    } catch (error) {
      console.error('❌ Failed to get discovery users:', error);
      // Fallback to original method if safety service fails
      try {
        const { data: users, error } = await supabase
          .from('users')
          .select('*')
          .neq('privy_user_id', currentPrivyUserId)
          .eq('profile_completed', true)
          .eq('is_active', true)
          .order('created_at', { ascending: false })
          .limit(limit);

        if (error) throw error;
        
        console.log('🔍 Found discovery users (fallback):', users?.length || 0);
        return users || [];
      } catch (fallbackError) {
        console.error('❌ Fallback discovery also failed:', fallbackError);
        return [];
      }
    }
  }

  /**
   * Convert Supabase user to UserProfile format for UI components
   */
  static convertToUserProfile(supabaseUser: SupabaseUserProfile): any {
    const username = supabaseUser.username || supabaseUser.twitter_username || 'Unknown User';
    const twitter_avatar = ProfileService.getHighResTwitterImage(supabaseUser.twitter_avatar_url);
    const generated_avatar = ProfileService.generateAvatarUrl(username);
    const final_avatar = twitter_avatar || supabaseUser.avatar_url || generated_avatar;
    
    return {
      id: supabaseUser.id,
      username: username,
      bio: (supabaseUser.bio || `Twitter: @${supabaseUser.twitter_username || 'unknown'}`).replace(/\n/g, ' '),
      avatar_url: final_avatar,
      twitter_avatar_url: supabaseUser.twitter_avatar_url,
      skills: Array.isArray(supabaseUser.skills) && supabaseUser.skills.length > 0 ? supabaseUser.skills : ['No skills listed'],
      looking_for: Array.isArray(supabaseUser.looking_for) && supabaseUser.looking_for.length > 0 ? supabaseUser.looking_for : ['Open to opportunities'],
      interests: Array.isArray(supabaseUser.interests) && supabaseUser.interests.length > 0 ? supabaseUser.interests : [],
      experience_level: supabaseUser.experience_level || 'beginner',
      availability: supabaseUser.availability || 'flexible',
      location: supabaseUser.location,
      timezone: supabaseUser.timezone,
      wallet_address: supabaseUser.wallet_address || 'no-wallet',
      reputation_score: supabaseUser.reputation_score || 0,
      response_time: supabaseUser.response_time || 'Unknown',
      github_url: supabaseUser.github_url,
      website_url: supabaseUser.website_url,
      twitter_url: supabaseUser.twitter_url,
    };
  }

  /**
   * Get high-resolution Twitter profile image with fallbacks
   */
  static getHighResTwitterImage(url?: string): string | undefined {
    if (!url || typeof url !== 'string') {
      return undefined;
    }
    
    // Return the Twitter profile image directly from Privy
    // Replace size modifiers to get higher resolution
    return url.replace(/_normal\.(jpg|jpeg|png)$/i, '_400x400.$1')
              .replace(/_bigger\.(jpg|jpeg|png)$/i, '_400x400.$1')
              .replace(/_mini\.(jpg|jpeg|png)$/i, '_400x400.$1');
  }

  /**
   * Generate a deterministic avatar URL based on username
   */
  static generateAvatarUrl(username: string): string {
    // Use DiceBear API with PNG format (React Native doesn't support SVG)
    const cleanUsername = encodeURIComponent(username.replace(/[^a-zA-Z0-9]/g, ''));
    return `https://api.dicebear.com/7.x/avataaars/png?seed=${cleanUsername}&backgroundColor=9945FF,7B3FF2,14F195&size=400`;
  }

  /**
   * Get user profile by Supabase user ID (internal use)
   */
  static async getUserProfileById(userId: string): Promise<SupabaseUserProfile | null> {
    try {
      console.log('🔍 Attempting to get user profile by Supabase ID:', userId);
      
      const { data: users, error } = await supabase
        .from('users')
        .select('*')
        .eq('id', userId);

      if (error) {
        console.error('❌ Error fetching user profile by ID:', error);
        return null;
      }

      const user = users && users.length > 0 ? users[0] : null;
      console.log('✅ Successfully got user profile by ID:', user?.username);
      return user || null;
    } catch (error) {
      console.error('❌ Failed to get user profile by ID:', error);
      return null;
    }
  }

  /**
   * Check if user has completed their profile
   */
  static isProfileComplete(user: SupabaseUserProfile | null): boolean {
    if (!user) return false;
    return !!(user.bio && user.skills?.length && user.looking_for?.length);
  }
}