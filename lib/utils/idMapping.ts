/**
 * ID Mapping Utilities
 * 
 * Handles conversion between Privy IDs (did:privy:xxx) and Supabase UUIDs
 * for consistent user identification across the app.
 */

import { ProfileService } from '../services/profileService';

export type PrivyUserId = string; // did:privy:xxx format
export type SupabaseUserId = string; // UUID format

/**
 * Check if an ID is a Privy ID format
 */
export function isPrivyId(id: string): id is PrivyUserId {
  return id.startsWith('did:privy:');
}

/**
 * Check if an ID is a Supabase UUID format
 */
export function isSupabaseId(id: string): id is SupabaseUserId {
  // Basic UUID v4 pattern check
  const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
  return uuidRegex.test(id);
}

/**
 * Convert Privy ID to Supabase UUID
 * Uses ProfileService to look up the user's Supabase ID
 */
export async function privyToSupabaseId(privyUserId: PrivyUserId): Promise<SupabaseUserId | null> {
  try {
    console.log('🔄 Converting Privy ID to Supabase ID:', privyUserId);
    
    const profile = await ProfileService.getUserProfile(privyUserId);
    if (!profile) {
      console.error('❌ No profile found for Privy ID:', privyUserId);
      return null;
    }
    
    console.log('✅ Converted to Supabase ID:', profile.id);
    return profile.id;
  } catch (error) {
    console.error('❌ Failed to convert Privy ID to Supabase ID:', error);
    return null;
  }
}

/**
 * Convert Supabase UUID to Privy ID
 * Uses ProfileService to look up the user's Privy ID
 */
export async function supabaseToPrivyId(supabaseUserId: SupabaseUserId): Promise<PrivyUserId | null> {
  try {
    console.log('🔄 Converting Supabase ID to Privy ID:', supabaseUserId);
    
    const profile = await ProfileService.getUserProfileById(supabaseUserId);
    if (!profile) {
      console.error('❌ No profile found for Supabase ID:', supabaseUserId);
      return null;
    }
    
    console.log('✅ Converted to Privy ID:', profile.privy_user_id);
    return profile.privy_user_id;
  } catch (error) {
    console.error('❌ Failed to convert Supabase ID to Privy ID:', error);
    return null;
  }
}

/**
 * Ensure we have a Supabase UUID for database operations
 * Returns the ID if already Supabase format, converts if Privy format
 */
export async function ensureSupabaseId(userId: string): Promise<SupabaseUserId | null> {
  if (isSupabaseId(userId)) {
    return userId;
  }
  
  if (isPrivyId(userId)) {
    return await privyToSupabaseId(userId);
  }
  
  console.error('❌ Invalid user ID format:', userId);
  return null;
}

/**
 * Ensure we have a Privy ID for external operations
 * Returns the ID if already Privy format, converts if Supabase format
 */
export async function ensurePrivyId(userId: string): Promise<PrivyUserId | null> {
  if (isPrivyId(userId)) {
    return userId;
  }
  
  if (isSupabaseId(userId)) {
    return await supabaseToPrivyId(userId);
  }
  
  console.error('❌ Invalid user ID format:', userId);
  return null;
}

/**
 * Batch convert multiple Privy IDs to Supabase IDs
 * More efficient than individual conversions
 */
export async function batchPrivyToSupabaseIds(privyUserIds: PrivyUserId[]): Promise<Map<PrivyUserId, SupabaseUserId>> {
  const results = new Map<PrivyUserId, SupabaseUserId>();
  
  const conversions = await Promise.allSettled(
    privyUserIds.map(async (privyId) => {
      const supabaseId = await privyToSupabaseId(privyId);
      return { privyId, supabaseId };
    })
  );
  
  conversions.forEach((result) => {
    if (result.status === 'fulfilled' && result.value.supabaseId) {
      results.set(result.value.privyId, result.value.supabaseId);
    }
  });
  
  return results;
}

/**
 * Create a standardized user reference with both ID types
 * Useful for components that need both IDs
 */
export interface UserReference {
  privyId: PrivyUserId;
  supabaseId: SupabaseUserId;
  username: string;
  avatar_url?: string;
}

/**
 * Create UserReference from a user profile
 */
export function createUserReference(profile: any): UserReference {
  return {
    privyId: profile.privy_user_id,
    supabaseId: profile.id,
    username: profile.username || profile.twitter_username || 'Unknown',
    avatar_url: profile.avatar_url || profile.twitter_avatar_url,
  };
}