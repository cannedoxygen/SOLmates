// Simple script to create Solana Mobile mock profile
// Copy and paste this into your browser console on a Supabase dashboard page
// Or run it using your app's Supabase client

const createSolanaMobileProfile = async () => {
  // You'll need to replace this with your actual supabase client
  // This is just the data structure - use your app's supabase client to insert it
  
  const mockProfile = {
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

  console.log('Mock profile data ready:', mockProfile);
  return mockProfile;
};

// If you have supabase available in your environment:
// const { data, error } = await supabase.from('users').insert([mockProfile]).select();

createSolanaMobileProfile();