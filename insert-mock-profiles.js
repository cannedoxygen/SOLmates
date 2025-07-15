// Simple Node.js script to insert mock profiles
// Run with: node insert-mock-profiles.js

const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

// Function to generate unique wallet addresses
function generateWalletAddress() {
  const chars = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
  let result = '';
  for (let i = 0; i < 44; i++) {
    result += chars.charAt(Math.floor(Math.random() * chars.length));
  }
  return result;
}

const mockProfiles = [
  {
    privy_user_id: `mock_user_solanamobile_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
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
  },
  {
    privy_user_id: `mock_user_aeyakovenko_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
    username: 'aeyakovenko',
    display_name: 'Anatoly Yakovenko',
    bio: 'Co-founder @solana. Building high-performance blockchain infrastructure. Former Qualcomm. Passionate about consensus algorithms and distributed systems.',
    twitter_username: 'aeyakovenko',
    twitter_name: 'Anatoly Yakovenko',
    twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1526664761077731329/Y-53lNsL_400x400.jpg',
    skills: ['Blockchain Architecture', 'Distributed Systems', 'Consensus Algorithms', 'Systems Programming', 'Rust', 'C++', 'Protocol Design'],
    interests: ['High Performance Computing', 'Cryptography', 'Network Protocols', 'Open Source', 'Decentralization'],
    looking_for: ['Core Engineers', 'Protocol Researchers', 'Systems Architects', 'Blockchain Developers', 'Technical Advisors'],
    location: 'San Francisco, CA',
    twitter_url: 'https://twitter.com/aeyakovenko',
    website_url: 'https://solana.com',
    experience_level: 'expert',
    availability: 'full-time',
    verified: true,
    reputation_score: 98,
    profile_completed: true,
    is_active: true
  },
  {
    privy_user_id: `mock_user_solana_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
    username: 'solana',
    display_name: 'Solana',
    bio: 'A high-performance blockchain supporting builders around the world creating crypto apps that scale today. 🌐 Built by @solanalabs',
    twitter_username: 'solana',
    twitter_name: 'Solana',
    twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1583266018916220928/8AxaJcsN_400x400.jpg',
    skills: ['Blockchain Development', 'DeFi', 'Smart Contracts', 'Web3', 'Ecosystem Growth', 'Developer Relations', 'Community Building'],
    interests: ['Decentralization', 'DeFi Innovation', 'NFTs', 'Gaming', 'DePIN', 'RealFi', 'Developer Tools'],
    looking_for: ['Developers', 'Validators', 'Ecosystem Partners', 'Community Managers', 'Technical Writers', 'DevRel Engineers'],
    location: 'Global',
    twitter_url: 'https://twitter.com/solana',
    website_url: 'https://solana.com',
    experience_level: 'expert',
    availability: 'full-time',
    verified: true,
    reputation_score: 97,
    profile_completed: true,
    is_active: true
  },
  {
    privy_user_id: `mock_user_solanaspaces_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
    username: 'solanaspaces',
    display_name: 'Solana Spaces',
    bio: 'The first physical retail, education, and community space dedicated to Solana. Experience Web3 IRL. 🏪⚡',
    twitter_username: 'solanaspaces',
    twitter_name: 'Solana Spaces',
    twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1635703048234917890/eAq5rO7u_400x400.jpg',
    skills: ['Retail Experience', 'Community Building', 'Web3 Education', 'Event Management', 'Customer Experience', 'Marketing', 'Brand Strategy'],
    interests: ['Physical Retail', 'Web3 Adoption', 'Community Events', 'Education', 'Customer Onboarding', 'Experiential Marketing'],
    looking_for: ['Community Managers', 'Event Coordinators', 'Educators', 'Retail Partners', 'Marketing Specialists', 'UX Designers'],
    location: 'New York, NY',
    twitter_url: 'https://twitter.com/solanaspaces',
    website_url: 'https://solanaspaces.com',
    experience_level: 'advanced',
    availability: 'full-time',
    verified: true,
    reputation_score: 88,
    profile_completed: true,
    is_active: true
  },
  {
    privy_user_id: `mock_user_pumpdotfun_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
    username: 'pumpdotfun',
    display_name: 'pump.fun',
    bio: 'the fun way to trade. built on solana. 🚀💰 Trade memecoins, create tokens, and ride the pump!',
    twitter_username: 'pumpdotfun',
    twitter_name: 'pump.fun',
    twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1756399564382461952/jJ7nk5xT_400x400.jpg',
    skills: ['DeFi Development', 'Token Economics', 'Trading Platforms', 'Solana Development', 'Smart Contracts', 'Product Strategy'],
    interests: ['Memecoins', 'DeFi Trading', 'Token Creation', 'Liquidity Pools', 'Community Tokens', 'Viral Marketing'],
    looking_for: ['DeFi Developers', 'Token Economists', 'Community Builders', 'Growth Hackers', 'Frontend Engineers', 'Product Managers'],
    location: 'Remote',
    twitter_url: 'https://twitter.com/pumpdotfun',
    website_url: 'https://pump.fun',
    experience_level: 'expert',
    availability: 'flexible',
    verified: true,
    reputation_score: 92,
    profile_completed: true,
    is_active: true
  },
  {
    privy_user_id: `mock_user_solflare_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
    username: 'solflare',
    display_name: 'Solflare',
    bio: 'Non-custodial Solana wallet. Your keys, your crypto. Available on web, mobile & browser extension. 🔑⚡',
    twitter_username: 'solflare',
    twitter_name: 'Solflare',
    twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1644041588568313856/3Znh8UvY_400x400.jpg',
    skills: ['Wallet Development', 'Security Engineering', 'Mobile Development', 'Browser Extensions', 'Cryptography', 'UX Design'],
    interests: ['Self-Custody', 'Security', 'DeFi Integration', 'NFT Management', 'Multi-Platform', 'User Experience'],
    looking_for: ['Security Engineers', 'Mobile Developers', 'Frontend Engineers', 'UX Designers', 'Product Managers', 'DevOps Engineers'],
    location: 'Global',
    twitter_url: 'https://twitter.com/solflare',
    website_url: 'https://solflare.com',
    experience_level: 'expert',
    availability: 'full-time',
    verified: true,
    reputation_score: 94,
    profile_completed: true,
    is_active: true
  },
  {
    privy_user_id: `mock_user_backpack_${Math.floor(Math.random() * 1000000)}`,
    wallet_address: generateWalletAddress(),
    username: 'backpack',
    display_name: 'Backpack',
    bio: 'A home for your xNFTs. The crypto super app. Built by @madlads and @coral_xyz 🎒✨',
    twitter_username: 'backpack',
    twitter_name: 'Backpack',
    twitter_avatar_url: 'https://pbs.twimg.com/profile_images/1678840180628459528/iu5I2F8-_400x400.jpg',
    skills: ['App Development', 'xNFT Platform', 'Wallet Infrastructure', 'Multi-Chain', 'Product Design', 'Developer Tools'],
    interests: ['xNFTs', 'Multi-Chain Apps', 'Developer Experience', 'App Ecosystem', 'Cross-Platform', 'Innovation'],
    looking_for: ['App Developers', 'xNFT Creators', 'Product Engineers', 'Platform Engineers', 'Developer Advocates', 'Community Builders'],
    location: 'San Francisco, CA',
    twitter_url: 'https://twitter.com/backpack',
    website_url: 'https://backpack.app',
    experience_level: 'expert',
    availability: 'full-time',
    verified: true,
    reputation_score: 93,
    profile_completed: true,
    is_active: true
  }
];

async function insertMockProfiles() {
  try {
    console.log('🚀 Inserting mock profiles...');
    
    for (const profile of mockProfiles) {
      console.log(`📝 Checking if ${profile.display_name} exists...`);
      
      // Check if profile already exists
      const { data: existing, error: checkError } = await supabase
        .from('users')
        .select('id, username')
        .eq('username', profile.username)
        .single();

      if (checkError && checkError.code !== 'PGRST116') {
        console.error(`❌ Error checking ${profile.display_name}:`, checkError);
        continue;
      }

      if (existing) {
        console.log(`⏭️  ${profile.display_name} already exists, skipping...`);
        continue;
      }

      // Insert new profile
      const { data, error } = await supabase
        .from('users')
        .insert([profile])
        .select();

      if (error) {
        console.error(`❌ Error creating ${profile.display_name}:`, error);
      } else {
        console.log(`✅ Created ${profile.display_name} with ID:`, data[0]?.id);
      }
    }
    
    console.log('🎉 Mock profile insertion completed!');
    
  } catch (error) {
    console.error('❌ Failed to insert mock profiles:', error);
  }
}

insertMockProfiles();