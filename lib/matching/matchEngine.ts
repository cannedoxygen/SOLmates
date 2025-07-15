import { seekerClient, SeekerProfile } from '../seeker/client';
import { supabase } from '../supabase/client';
import { AnalyticsService } from '../services/analyticsService';

export interface MatchScore {
  userId: string;
  score: number;
  reasons: string[];
}

export interface UserProfile {
  id: string;
  username: string;
  bio: string;
  avatar_url?: string;
  skills: string[];
  looking_for: string[];
  wallet_address: string;
  reputation_score?: number;
}

export class MatchEngine {
  private currentUserId: string;
  private currentUserProfile: UserProfile;
  private currentUserSeeker: SeekerProfile | null = null;

  constructor(userId: string, userProfile: UserProfile) {
    this.currentUserId = userId;
    this.currentUserProfile = userProfile;
  }

  async initialize() {
    this.currentUserSeeker = await seekerClient.getProfile(
      this.currentUserProfile.wallet_address
    );
  }

  calculateMatchScore(targetUser: UserProfile, targetSeeker?: SeekerProfile): MatchScore {
    let score = 0;
    const reasons: string[] = [];

    // Skill matching (40% weight)
    const skillMatch = this.calculateSkillMatch(targetUser);
    score += skillMatch * 40;
    if (skillMatch > 0.5) {
      reasons.push(`${Math.round(skillMatch * 100)}% skill match`);
    }

    // Looking for matching (30% weight)
    const lookingForMatch = this.calculateLookingForMatch(targetUser);
    score += lookingForMatch * 30;
    if (lookingForMatch > 0.5) {
      reasons.push('Mutual collaboration interests');
    }

    // Seeker reputation (20% weight)
    if (targetSeeker || targetUser.reputation_score) {
      const reputation = targetSeeker?.reputation || targetUser.reputation_score || 0;
      const repScore = Math.min(reputation / 100, 1);
      score += repScore * 20;
      if (repScore > 0.5) {
        reasons.push(`High reputation: ${reputation}`);
      }
    }

    // Activity level (10% weight)
    if (targetSeeker) {
      const daysSinceActive = 
        (Date.now() - targetSeeker.lastActive.getTime()) / (1000 * 60 * 60 * 24);
      const activityScore = daysSinceActive < 7 ? 1 : daysSinceActive < 30 ? 0.5 : 0;
      score += activityScore * 10;
      if (activityScore > 0.5) {
        reasons.push('Recently active');
      }
    }

    return {
      userId: targetUser.id,
      score: Math.round(score),
      reasons,
    };
  }

  private calculateSkillMatch(targetUser: UserProfile): number {
    const userSkills = new Set(this.currentUserProfile.skills);
    const targetSkills = new Set(targetUser.skills);
    
    // Check if target has skills user is looking for
    const wantedSkills = this.currentUserProfile.looking_for
      .filter(role => targetUser.skills.some(skill => 
        skill.toLowerCase().includes(role.toLowerCase()) ||
        role.toLowerCase().includes(skill.toLowerCase())
      ));

    const commonSkills = [...userSkills].filter(skill => targetSkills.has(skill));
    
    const matchScore = 
      (commonSkills.length * 0.3) + 
      (wantedSkills.length * 0.7);
    
    const maxScore = 
      (Math.min(userSkills.size, targetSkills.size) * 0.3) + 
      (this.currentUserProfile.looking_for.length * 0.7);

    return maxScore > 0 ? matchScore / maxScore : 0;
  }

  private calculateLookingForMatch(targetUser: UserProfile): number {
    // Check if what they're looking for matches what we have
    const weHaveWhatTheyWant = targetUser.looking_for.some(role =>
      this.currentUserProfile.skills.some(skill =>
        skill.toLowerCase().includes(role.toLowerCase()) ||
        role.toLowerCase().includes(skill.toLowerCase())
      )
    );

    // Check if what we're looking for matches what they have
    const theyHaveWhatWeWant = this.currentUserProfile.looking_for.some(role =>
      targetUser.skills.some(skill =>
        skill.toLowerCase().includes(role.toLowerCase()) ||
        role.toLowerCase().includes(skill.toLowerCase())
      )
    );

    if (weHaveWhatTheyWant && theyHaveWhatWeWant) return 1;
    if (weHaveWhatTheyWant || theyHaveWhatWeWant) return 0.5;
    return 0;
  }

  async getPotentialMatches(limit = 10): Promise<UserProfile[]> {
    try {
      // Get Seeker recommendations
      const recommendations = await seekerClient.getRecommendations(
        this.currentUserProfile.wallet_address,
        limit * 2
      );

      // Get users from database excluding already swiped
      const { data: swipedUsers } = await supabase
        .from('swipes')
        .select('target_user_id')
        .eq('user_id', this.currentUserId);

      const swipedIds = swipedUsers?.map(s => s.target_user_id) || [];

      // Query for potential matches
      let query = supabase
        .from('users')
        .select('*')
        .neq('id', this.currentUserId)
        .not('id', 'in', `(${swipedIds.join(',')})`)
        .limit(limit);

      // If we have recommendations, prioritize them
      if (recommendations.length > 0) {
        query = query.in('wallet_address', recommendations);
      }

      const { data: users, error } = await query;
      if (error) throw error;

      // Calculate match scores and sort
      const scoredUsers = await Promise.all(
        (users || []).map(async (user) => {
          const seekerProfile = await seekerClient.getProfile(user.wallet_address);
          const matchScore = this.calculateMatchScore(user, seekerProfile || undefined);
          return { user, score: matchScore.score };
        })
      );

      // Sort by score and return
      return scoredUsers
        .sort((a, b) => b.score - a.score)
        .map(item => item.user);
    } catch (error) {
      console.error('Failed to get potential matches:', error);
      return [];
    }
  }

  async recordSwipe(targetUserId: string, action: 'like' | 'pass') {
    try {
      const { error } = await supabase
        .from('swipes')
        .insert({
          user_id: this.currentUserId,
          target_user_id: targetUserId,
          action,
          created_at: new Date().toISOString(),
        });

      if (error) throw error;

      // Check for mutual match if liked
      if (action === 'like') {
        const { data: mutualSwipe } = await supabase
          .from('swipes')
          .select('*')
          .eq('user_id', targetUserId)
          .eq('target_user_id', this.currentUserId)
          .eq('action', 'like')
          .single();

        if (mutualSwipe) {
          // Create match record
          await this.createMatch(targetUserId);
          return true; // It's a match!
        }
      }

      return false;
    } catch (error) {
      console.error('Failed to record swipe:', error);
      return false;
    }
  }

  private async createMatch(targetUserId: string) {
    try {
      const matchId = [this.currentUserId, targetUserId].sort().join('-');
      
      const { error } = await supabase
        .from('matches')
        .insert({
          id: matchId,
          user1_id: this.currentUserId < targetUserId ? this.currentUserId : targetUserId,
          user2_id: this.currentUserId > targetUserId ? this.currentUserId : targetUserId,
          created_at: new Date().toISOString(),
        });

      if (error && error.code !== '23505') { // Ignore duplicate key errors
        throw error;
      }

      // Track match creation for both users
      await Promise.all([
        AnalyticsService.trackMatch(this.currentUserId, targetUserId, matchId),
        AnalyticsService.trackMatch(targetUserId, this.currentUserId, matchId)
      ]);

      // Create initial chat room
      await this.createChatRoom(matchId, targetUserId);
    } catch (error) {
      console.error('Failed to create match:', error);
    }
  }

  private async createChatRoom(matchId: string, targetUserId: string) {
    try {
      const { error } = await supabase
        .from('chat_rooms')
        .insert({
          match_id: matchId,
          participants: [this.currentUserId, targetUserId],
          created_at: new Date().toISOString(),
        });

      if (error) throw error;
    } catch (error) {
      console.error('Failed to create chat room:', error);
    }
  }
}

export async function createMatchEngine(
  userId: string,
  userProfile: UserProfile
): Promise<MatchEngine> {
  const engine = new MatchEngine(userId, userProfile);
  await engine.initialize();
  return engine;
}