import { supabase } from '../supabase/client';
import { ProfileService, type SupabaseUserProfile } from './profileService';
import { UserSafetyService } from './userSafetyService';
import { AnalyticsService } from './analyticsService';

export interface CompatibilityScore {
  user_id: string;
  score: number;
  breakdown: {
    skills_match: number;
    looking_for_match: number;
    activity_match: number;
    reputation_bonus: number;
    total: number;
  };
}

export interface SmartMatch extends SupabaseUserProfile {
  compatibility_score: number;
  match_reasons: string[];
}

export class AdvancedMatchingService {
  
  /**
   * Get smart matches for a user using compatibility scoring
   */
  static async getSmartMatches(
    userId: string,
    limit = 20,
    minScore = 30
  ): Promise<SmartMatch[]> {
    try {
      console.log('🧠 Computing smart matches for user:', userId);

      // Get user's profile and preferences
      const userProfile = await ProfileService.getUserProfile(userId);
      if (!userProfile) {
        throw new Error('User profile not found');
      }

      // Get filtered discovery users (excluding blocked users)
      const discoveryUsers = await UserSafetyService.getFilteredDiscoveryUsers(userId, 100);
      
      // Calculate compatibility scores
      const scoredUsers = await Promise.all(
        discoveryUsers.map(async (candidateUser) => {
          const score = await this.calculateCompatibilityScore(userProfile, candidateUser);
          return {
            user: candidateUser,
            score: score
          };
        })
      );

      // Filter by minimum score and sort by compatibility
      const qualifiedMatches = scoredUsers
        .filter(({ score }) => score.score >= minScore)
        .sort((a, b) => b.score.score - a.score.score)
        .slice(0, limit);

      // Convert to SmartMatch format
      const smartMatches: SmartMatch[] = qualifiedMatches.map(({ user, score }) => ({
        ...user,
        compatibility_score: score.score,
        match_reasons: this.generateMatchReasons(userProfile, user, score)
      }));

      console.log(`✅ Found ${smartMatches.length} smart matches`);
      return smartMatches;
    } catch (error) {
      console.error('❌ Failed to get smart matches:', error);
      throw error;
    }
  }

  /**
   * Calculate compatibility score between two users
   */
  static async calculateCompatibilityScore(
    user: SupabaseUserProfile,
    candidate: SupabaseUserProfile
  ): Promise<CompatibilityScore> {
    const breakdown = {
      skills_match: 0,
      looking_for_match: 0,
      activity_match: 0,
      reputation_bonus: 0,
      total: 0
    };

    // 1. Skills Match (40% weight)
    breakdown.skills_match = this.calculateSkillsMatch(user, candidate) * 0.4;

    // 2. Looking For Match (40% weight)
    breakdown.looking_for_match = this.calculateLookingForMatch(user, candidate) * 0.4;

    // 3. Activity Match (15% weight)
    breakdown.activity_match = await this.calculateActivityMatch(user, candidate) * 0.15;

    // 4. Reputation Bonus (5% weight)
    breakdown.reputation_bonus = this.calculateReputationBonus(candidate) * 0.05;

    // Calculate total score
    breakdown.total = breakdown.skills_match + 
                     breakdown.looking_for_match + 
                     breakdown.activity_match + 
                     breakdown.reputation_bonus;

    return {
      user_id: candidate.privy_user_id,
      score: Math.round(breakdown.total),
      breakdown
    };
  }

  /**
   * Calculate how well user's skills match what candidate is looking for
   */
  private static calculateSkillsMatch(
    user: SupabaseUserProfile,
    candidate: SupabaseUserProfile
  ): number {
    const userSkills = user.skills || [];
    const candidateLookingFor = candidate.looking_for || [];
    
    if (userSkills.length === 0 || candidateLookingFor.length === 0) {
      return 0;
    }

    // Find intersection between user's skills and what candidate wants
    const matches = userSkills.filter(skill => 
      candidateLookingFor.some(lookingFor => 
        this.skillsAreRelated(skill, lookingFor)
      )
    );

    // Calculate match percentage
    const matchRatio = matches.length / candidateLookingFor.length;
    return Math.min(matchRatio * 100, 100);
  }

  /**
   * Calculate how well candidate's skills match what user is looking for
   */
  private static calculateLookingForMatch(
    user: SupabaseUserProfile,
    candidate: SupabaseUserProfile
  ): number {
    const userLookingFor = user.looking_for || [];
    const candidateSkills = candidate.skills || [];
    
    if (userLookingFor.length === 0 || candidateSkills.length === 0) {
      return 0;
    }

    // Find intersection between what user wants and candidate's skills
    const matches = userLookingFor.filter(lookingFor => 
      candidateSkills.some(skill => 
        this.skillsAreRelated(lookingFor, skill)
      )
    );

    // Calculate match percentage
    const matchRatio = matches.length / userLookingFor.length;
    return Math.min(matchRatio * 100, 100);
  }

  /**
   * Calculate activity compatibility (similar activity levels match better)
   */
  private static async calculateActivityMatch(
    user: SupabaseUserProfile,
    candidate: SupabaseUserProfile
  ): Promise<number> {
    try {
      const [userEngagement, candidateEngagement] = await Promise.all([
        AnalyticsService.getUserEngagement(user.privy_user_id),
        AnalyticsService.getUserEngagement(candidate.privy_user_id)
      ]);

      if (!userEngagement || !candidateEngagement) {
        return 50; // Neutral score if no data
      }

      // Compare engagement scores (0-100)
      const scoreDiff = Math.abs(userEngagement.engagement_score - candidateEngagement.engagement_score);
      
      // Higher activity match for similar engagement levels
      return Math.max(0, 100 - scoreDiff);
    } catch (error) {
      console.error('Failed to calculate activity match:', error);
      return 50; // Neutral score on error
    }
  }

  /**
   * Calculate reputation bonus for high-reputation users
   */
  private static calculateReputationBonus(candidate: SupabaseUserProfile): number {
    const reputation = candidate.reputation_score || 0;
    
    if (reputation >= 100) return 100;
    if (reputation >= 50) return 75;
    if (reputation >= 25) return 50;
    if (reputation >= 10) return 25;
    return 0;
  }

  /**
   * Check if two skills/roles are related
   */
  private static skillsAreRelated(skill1: string, skill2: string): boolean {
    const s1 = skill1.toLowerCase();
    const s2 = skill2.toLowerCase();
    
    // Exact match
    if (s1 === s2) return true;
    
    // Related skill mappings
    const relatedSkills = {
      'developer': ['frontend', 'backend', 'fullstack', 'web3', 'smart contracts', 'defi'],
      'designer': ['ui/ux', 'graphic design', 'product design', 'visual design'],
      'artist': ['graphic design', 'visual design', 'nft creator', 'digital art'],
      'kol': ['influencer', 'content creator', 'marketing', 'community'],
      'content creator': ['marketing', 'social media', 'community', 'kol'],
      'community': ['discord mod', 'community manager', 'raider'],
      'trader': ['defi', 'degen', 'alpha caller'],
      'business': ['strategy', 'partnerships', 'bizdev', 'founder'],
      'co-founder': ['founder', 'entrepreneur', 'business', 'strategy'],
      'collaborator': ['partner', 'teammate', 'contributor'],
      'freelancer': ['consultant', 'contractor', 'specialist']
    };

    // Check if skills are in related categories
    for (const [category, related] of Object.entries(relatedSkills)) {
      if ((s1.includes(category) || related.some(r => s1.includes(r))) &&
          (s2.includes(category) || related.some(r => s2.includes(r)))) {
        return true;
      }
    }

    // Partial string matching for compound skills
    return s1.includes(s2) || s2.includes(s1);
  }

  /**
   * Generate human-readable match reasons
   */
  private static generateMatchReasons(
    user: SupabaseUserProfile,
    candidate: SupabaseUserProfile,
    score: CompatibilityScore
  ): string[] {
    const reasons: string[] = [];
    
    // Skills match reasons
    if (score.breakdown.skills_match > 60) {
      const userSkills = user.skills || [];
      const candidateLookingFor = candidate.looking_for || [];
      const matchingSkills = userSkills.filter(skill => 
        candidateLookingFor.some(lookingFor => this.skillsAreRelated(skill, lookingFor))
      );
      
      if (matchingSkills.length > 0) {
        reasons.push(`Your ${matchingSkills[0]} skills match what they're looking for`);
      }
    }

    // Looking for match reasons
    if (score.breakdown.looking_for_match > 60) {
      const userLookingFor = user.looking_for || [];
      const candidateSkills = candidate.skills || [];
      const matchingNeeds = userLookingFor.filter(lookingFor => 
        candidateSkills.some(skill => this.skillsAreRelated(lookingFor, skill))
      );
      
      if (matchingNeeds.length > 0) {
        reasons.push(`They have the ${matchingNeeds[0]} skills you need`);
      }
    }

    // Activity level reasons
    if (score.breakdown.activity_match > 70) {
      reasons.push('Similar activity levels for good collaboration');
    }

    // Reputation reasons
    if (score.breakdown.reputation_bonus > 50) {
      reasons.push('High reputation in the community');
    }

    // High overall compatibility
    if (score.score > 80) {
      reasons.push('Excellent overall compatibility match');
    } else if (score.score > 60) {
      reasons.push('Strong potential for collaboration');
    }

    return reasons.slice(0, 2); // Limit to top 2 reasons
  }

  /**
   * Get trending matches (users with high match rates recently)
   */
  static async getTrendingMatches(userId: string, limit = 10): Promise<SmartMatch[]> {
    try {
      // Get trending user IDs from analytics
      const trendingUserIds = await AnalyticsService.getTrendingUsers(limit * 2);
      
      if (trendingUserIds.length === 0) {
        // Fallback to smart matches if no trending data
        return this.getSmartMatches(userId, limit);
      }

      // Get profiles for trending users
      const trendingProfiles = await Promise.all(
        trendingUserIds.map(async (trendingUserId) => {
          if (trendingUserId === userId) return null; // Skip self
          
          try {
            const profile = await ProfileService.getUserProfile(trendingUserId);
            return profile;
          } catch (error) {
            console.error('Failed to load trending user profile:', error);
            return null;
          }
        })
      );

      const validProfiles = trendingProfiles.filter(p => p !== null) as SupabaseUserProfile[];
      
      // Filter out blocked users
      const userProfile = await ProfileService.getUserProfile(userId);
      if (!userProfile) return [];

      const scoredTrending = await Promise.all(
        validProfiles.map(async (profile) => {
          // Check if user is blocked
          const isBlocked = await UserSafetyService.checkMutualBlocks(userId, profile.privy_user_id);
          if (isBlocked) return null;

          const score = await this.calculateCompatibilityScore(userProfile, profile);
          return {
            ...profile,
            compatibility_score: score.score,
            match_reasons: ['🔥 Trending in the community', ...this.generateMatchReasons(userProfile, profile, score).slice(0, 1)]
          };
        })
      );

      const validTrending = scoredTrending.filter(m => m !== null) as SmartMatch[];
      
      return validTrending
        .sort((a, b) => b.compatibility_score - a.compatibility_score)
        .slice(0, limit);
    } catch (error) {
      console.error('❌ Failed to get trending matches:', error);
      // Fallback to smart matches
      return this.getSmartMatches(userId, limit);
    }
  }
}