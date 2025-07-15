// Insert mock Solana Mobile profile into Supabase
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://xfkqaynokcynugwqnzpe.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhma3FheW5va2N5bnVnd3FuenBlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNTc3MTQ1MywiZXhwIjoyMDUxMzQ3NDUzfQ.T1gP8MRXRUxQYj7Bw7kJ_6hpgP2KbYQQFm6O5_ixeHE';

const supabase = createClient(supabaseUrl, supabaseKey);

async function insertMockProfile() {
  try {
    console.log('🚀 Creating mock Solana Mobile profile...');
    
    const { data, error } = await supabase
      .from('users')
      .insert([{
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
      }])
      .select();

    if (error) {
      console.error('❌ Error creating mock profile:', error);
      return;
    }

    console.log('✅ Mock Solana Mobile profile created successfully!');
    console.log('Profile data:', data[0]);
    
  } catch (error) {
    console.error('❌ Failed to create mock profile:', error);
  }
}

insertMockProfile();