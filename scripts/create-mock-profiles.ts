import { supabase } from '../lib/supabase/client';

interface MockProfile {
  privy_user_id: string;
  wallet_address: string;
  username: string;
  display_name: string;
  bio: string;
  twitter_username: string;
  twitter_name: string;
  twitter_avatar_url: string;
  skills: string[];
  interests: string[];
  looking_for: string[];
  location: string;
  twitter_url: string;
  website_url?: string;
  experience_level: 'beginner' | 'intermediate' | 'advanced' | 'expert';
  availability: 'full-time' | 'part-time' | 'weekends' | 'flexible';
  verified: boolean;
  reputation_score: number;
  profile_completed: boolean;
  is_active: boolean;
}

const solanaMobileProfile: MockProfile = {
  privy_user_id: `mock_user_solanamobile_${Math.floor(Math.random() * 1000000)}`,
  wallet_address: '7BgBvyjrZX8YYdZ4KjN3qN8pN9yTQKW1rP2jV5cQ3hWx',
  username: 'solanamobile',
  display_name: 'Solana Mobile',
  bio: 'Building the future of mobile Web3 📱⚡ Creators of Saga phone and Seeker. Bringing crypto to your pocket with native Solana integration.',
  twitter_username: 'solanamobile',
  twitter_name: 'Solana Mobile',
  twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1598103201574912000/d7jMFI7k_400x400.jpg',
  skills: ['Mobile Development', 'Blockchain', 'Solana', 'Hardware', 'Product Design', 'Web3 UX', 'Cryptocurrency', 'DeFi'],
  interests: ['Mobile Innovation', 'Crypto Adoption', 'DeFi', 'NFTs', 'Developer Tools', 'Web3 Gaming'],
  looking_for: ['Technical Co-founder', 'Mobile Engineers', 'Product Managers', 'Business Development', 'Marketing Partners'],
  location: 'Global',
  twitter_url: 'https://twitter.com/solanamobile',
  website_url: 'https://solanamobile.com',
  experience_level: 'expert',
  availability: 'full-time',
  verified: true,
  reputation_score: 95,
  profile_completed: true,
  is_active: true
};

export async function createMockProfile(profile: MockProfile): Promise<void> {
  try {
    console.log('🚀 Creating mock profile for:', profile.display_name);
    
    const { data, error } = await supabase
      .from('users')
      .insert([profile])
      .select();

    if (error) {
      console.error('❌ Error creating mock profile:', error);
      throw error;
    }

    console.log('✅ Mock profile created successfully!');
    console.log('Profile ID:', data[0]?.id);
    console.log('Privy User ID:', data[0]?.privy_user_id);
    
  } catch (error) {
    console.error('❌ Failed to create mock profile:', error);
    throw error;
  }
}

// Export the profile for use in other scripts
export { solanaMobileProfile };

// If running directly
if (require.main === module) {
  createMockProfile(solanaMobileProfile)
    .then(() => {
      console.log('✅ Mock profile creation completed!');
      process.exit(0);
    })
    .catch((error) => {
      console.error('❌ Mock profile creation failed:', error);
      process.exit(1);
    });
}