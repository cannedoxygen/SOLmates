import { PublicKey } from '@solana/web3.js';

export interface SeekerProfile {
  wallet: string;
  tags: string[];
  reputation: number;
  projects: number;
  collaborations: number;
  lastActive: Date;
}

export interface SeekerTag {
  name: string;
  category: 'skill' | 'interest' | 'role' | 'achievement';
  weight: number;
}

export class SeekerClient {
  private apiUrl: string;
  private apiKey: string;

  constructor() {
    this.apiUrl = process.env.EXPO_PUBLIC_SEEKER_API_URL || 'https://api.seeker.xyz';
    this.apiKey = process.env.EXPO_PUBLIC_SEEKER_API_KEY || '';
  }

  async getProfile(walletAddress: string): Promise<SeekerProfile | null> {
    try {
      // Mock Seeker profile for testing
      return {
        wallet: walletAddress,
        tags: ['React Native', 'Solana', 'Web3', 'Mobile Dev'],
        reputation: Math.floor(Math.random() * 1000),
        projects: Math.floor(Math.random() * 10),
        collaborations: Math.floor(Math.random() * 20),
        lastActive: new Date(),
      };
    } catch (error) {
      console.error('Failed to fetch Seeker profile:', error);
      return null;
    }
  }

  async getTags(walletAddress: string): Promise<SeekerTag[]> {
    try {
      // Mock tags for testing
      return [
        { name: 'Solana', category: 'skill', weight: 0.9 },
        { name: 'React Native', category: 'skill', weight: 0.8 },
        { name: 'DeFi', category: 'interest', weight: 0.7 },
        { name: 'Full Stack', category: 'role', weight: 0.6 },
      ];
    } catch (error) {
      console.error('Failed to fetch Seeker tags:', error);
      return [];
    }
  }

  async searchProfiles(filters: {
    tags?: string[];
    minReputation?: number;
    role?: string;
  }): Promise<SeekerProfile[]> {
    try {
      const params = new URLSearchParams();
      if (filters.tags?.length) {
        params.append('tags', filters.tags.join(','));
      }
      if (filters.minReputation) {
        params.append('minReputation', filters.minReputation.toString());
      }
      if (filters.role) {
        params.append('role', filters.role);
      }

      const response = await fetch(`${this.apiUrl}/search?${params}`, {
        headers: {
          'Authorization': `Bearer ${this.apiKey}`,
          'Content-Type': 'application/json',
        },
      });

      if (!response.ok) return [];

      const data = await response.json();
      return data.profiles || [];
    } catch (error) {
      console.error('Failed to search Seeker profiles:', error);
      return [];
    }
  }

  async getRecommendations(walletAddress: string, limit = 20): Promise<string[]> {
    try {
      // Mock recommendations for testing - return random wallet addresses
      const mockWallets = [];
      for (let i = 0; i < limit; i++) {
        // Generate mock wallet addresses
        const chars = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
        let wallet = '';
        for (let j = 0; j < 44; j++) {
          wallet += chars[Math.floor(Math.random() * chars.length)];
        }
        mockWallets.push(wallet);
      }
      return mockWallets;
    } catch (error) {
      console.error('Failed to get recommendations:', error);
      return [];
    }
  }
}

export const seekerClient = new SeekerClient();