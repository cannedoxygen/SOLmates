import { supabase } from '../supabase';

export interface Achievement {
  id: string;
  user_id: string;
  achievement_type: 'early_adopter' | 'collaborator' | 'mentor' | 'creator';
  earned_at: string;
  metadata?: {
    signup_rank?: number;
    project_count?: number;
    mentee_count?: number;
    innovation_score?: number;
  };
}

export interface AchievementDefinition {
  name: string;
  icon: string;
  color: string;
  description: string;
  requirement: string;
}

export const ACHIEVEMENT_DEFINITIONS: Record<string, AchievementDefinition> = {
  early_adopter: {
    name: 'Early Adopter',
    icon: 'rocket',
    color: '#FF6B6B',
    description: 'First 100 users',
    requirement: 'Join Solmates as one of the first 100 users'
  },
  collaborator: {
    name: 'Collaborator',
    icon: 'people',
    color: '#14F195',
    description: '10+ successful projects',
    requirement: 'Complete 10 or more collaborative projects'
  },
  mentor: {
    name: 'Mentor',
    icon: 'school',
    color: '#FFD700',
    description: 'Helped 5+ developers',
    requirement: 'Collaborate with 5 or more beginner developers'
  },
  creator: {
    name: 'Creator',
    icon: 'bulb',
    color: '#9945FF',
    description: 'Built innovative solutions',
    requirement: 'Use 10+ different technologies across projects'
  }
};

export class AchievementService {
  /**
   * Get user's earned achievements
   */
  static async getUserAchievements(userId: string): Promise<Achievement[]> {
    try {
      const { data, error } = await supabase
        .from('user_achievements')
        .select('*')
        .eq('user_id', userId)
        .order('earned_at', { ascending: false });

      if (error) throw error;
      return data || [];
    } catch (error) {
      console.error('Failed to get user achievements:', error);
      return [];
    }
  }

  /**
   * Check and update achievements for a user
   */
  static async checkUserAchievements(userId: string): Promise<any> {
    try {
      const { data, error } = await supabase.rpc('check_user_achievements', {
        user_id: userId
      });

      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Failed to check user achievements:', error);
      return null;
    }
  }

  /**
   * Get user's signup rank
   */
  static async getUserSignupRank(userId: string): Promise<number | null> {
    try {
      const { data, error } = await supabase.rpc('get_user_signup_rank', {
        user_id: userId
      });

      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Failed to get user signup rank:', error);
      return null;
    }
  }

  /**
   * Get achievement definition with user's earned status
   */
  static async getUserAchievementStatus(userId: string): Promise<Array<AchievementDefinition & { earned: boolean; earnedAt?: string; metadata?: any }>> {
    try {
      const earnedAchievements = await this.getUserAchievements(userId);
      const earnedMap = new Map(earnedAchievements.map(a => [a.achievement_type, a]));

      return Object.entries(ACHIEVEMENT_DEFINITIONS).map(([type, definition]) => {
        const earned = earnedMap.get(type as any);
        return {
          ...definition,
          earned: !!earned,
          earnedAt: earned?.earned_at,
          metadata: earned?.metadata
        };
      });
    } catch (error) {
      console.error('Failed to get user achievement status:', error);
      return [];
    }
  }

  /**
   * Format achievement description with dynamic data
   */
  static formatAchievementDescription(achievementType: string, metadata?: any): string {
    const definition = ACHIEVEMENT_DEFINITIONS[achievementType];
    if (!definition || !metadata) return definition?.description || '';

    switch (achievementType) {
      case 'early_adopter':
        return `User #${metadata.signup_rank} - First 100 users`;
      case 'collaborator':
        return `${metadata.project_count} successful projects`;
      case 'mentor':
        return `Helped ${metadata.mentee_count} developers`;
      case 'creator':
        return `Used ${metadata.innovation_score} technologies`;
      default:
        return definition.description;
    }
  }

  /**
   * Check if user qualifies for early adopter
   */
  static async isEarlyAdopter(userId: string): Promise<boolean> {
    try {
      const rank = await this.getUserSignupRank(userId);
      return rank !== null && rank <= 100;
    } catch (error) {
      console.error('Failed to check early adopter status:', error);
      return false;
    }
  }

  /**
   * Get achievement progress for display
   */
  static async getAchievementProgress(userId: string): Promise<Record<string, any>> {
    try {
      // Get current stats
      const [signupRank, projectCount, achievements] = await Promise.all([
        this.getUserSignupRank(userId),
        this.getUserProjectCount(userId),
        this.getUserAchievements(userId)
      ]);

      const earnedTypes = new Set(achievements.map(a => a.achievement_type));

      return {
        early_adopter: {
          earned: earnedTypes.has('early_adopter'),
          progress: signupRank ? Math.min(signupRank, 100) : 0,
          requirement: 100,
          description: signupRank ? `User #${signupRank}` : 'Calculating...'
        },
        collaborator: {
          earned: earnedTypes.has('collaborator'),
          progress: projectCount,
          requirement: 10,
          description: `${projectCount}/10 projects completed`
        },
        mentor: {
          earned: earnedTypes.has('mentor'),
          progress: 0, // Would need additional query
          requirement: 5,
          description: 'Help beginner developers'
        },
        creator: {
          earned: earnedTypes.has('creator'),
          progress: 0, // Would need additional query
          requirement: 10,
          description: 'Use diverse technologies'
        }
      };
    } catch (error) {
      console.error('Failed to get achievement progress:', error);
      return {};
    }
  }

  /**
   * Helper to get user's completed project count
   */
  private static async getUserProjectCount(userId: string): Promise<number> {
    try {
      const { count, error } = await supabase
        .from('projects')
        .select('*', { count: 'exact', head: true })
        .eq('created_by', userId)
        .eq('status', 'completed');

      if (error) throw error;
      return count || 0;
    } catch (error) {
      console.error('Failed to get project count:', error);
      return 0;
    }
  }
}