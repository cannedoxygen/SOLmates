// Add mock users directly to Supabase
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

const mockUsers = [
  {
    username: "toly",
    display_name: "Toly",
    bio: "Co-Founder of Solana Labs. Award winning phone creator. NFA, don't trust me, mostly technical gibberish.",
    twitter_avatar_url: "https://pbs.twimg.com/profile_images/1587503498765869056/bFiocz3b_normal.jpg",
    twitter_username: "aeyakovenko",
    skills: ["Blockchain", "Mobile Development", "Solana", "Hardware", "Product Design"],
    looking_for: ["Developer", "Designer", "Community Manager"],
    experience_level: "Expert",
    location: "Solana Beach, CA",
    website_url: "http://solanamobile.com",
    wallet_address: `0x${Math.random().toString(16).substr(2, 40)}`,
    privy_user_id: `mock_toly_${Date.now()}`,
    profile_completed: true,
    is_active: true,
    reputation_score: 100
  },
  {
    username: "mike_s",
    display_name: "Mike S",
    bio: "dev rel @ solana mobile | ex-SWE @ meta",
    twitter_avatar_url: "https://pbs.twimg.com/profile_images/1780680323203469312/fz3qQgJP_normal.jpg",
    twitter_username: "somemobiledev",
    skills: ["Developer Relations", "Mobile Development", "Solana", "Software Engineering", "React Native"],
    looking_for: ["Developer", "Community Builder", "Content Creator"],
    experience_level: "Senior",
    location: "California",
    website_url: "https://docs.solanamobile.com",
    wallet_address: `0x${Math.random().toString(16).substr(2, 40)}`,
    privy_user_id: `mock_mike_${Date.now()}`,
    profile_completed: true,
    is_active: true,
    reputation_score: 85
  },
  {
    username: "mert_helius",
    display_name: "mert | helius.dev",
    bio: "ceo @heliuslabs, ex @coinbase — Solana RPCs, APIs, trading infra: http://helius.dev — listen to me yap w smart ppl https://youtube.com/@AccelerateWithMert",
    twitter_avatar_url: "https://pbs.twimg.com/profile_images/1761433516354830336/4ZIy1-JR_normal.jpg",
    twitter_username: "0xMert_",
    skills: ["Infrastructure", "RPC", "APIs", "Trading", "Solana", "Leadership"],
    looking_for: ["Developer", "Infrastructure Engineer", "Partner"],
    experience_level: "Expert",
    location: "San Francisco, CA",
    website_url: "https://helius.dev",
    github_url: "https://github.com/helius-labs",
    wallet_address: `0x${Math.random().toString(16).substr(2, 40)}`,
    privy_user_id: `mock_mert_${Date.now()}`,
    profile_completed: true,
    is_active: true,
    reputation_score: 95
  }
];

async function addDemoUsers() {
  try {
    console.log('📦 Adding demo users to Supabase...\n');
    
    // Get canned oxygen user first
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    if (!cannedUser) {
      console.error('❌ Could not find canned oxygen user');
      return;
    }
    
    console.log('✅ Found canned oxygen:', cannedUser.id);
    
    for (const mockUser of mockUsers) {
      console.log(`\n👤 Processing ${mockUser.username}...`);
      
      // Check if user already exists
      const { data: existingUser } = await supabase
        .from('users')
        .select('id, username')
        .eq('username', mockUser.username)
        .single();
      
      if (existingUser) {
        console.log(`  ⏭️ User ${mockUser.username} already exists, skipping...`);
        continue;
      }
      
      // Create user without user_number (let database handle it)
      const userData = {
        username: mockUser.username,
        display_name: mockUser.display_name,
        bio: mockUser.bio,
        twitter_avatar_url: mockUser.twitter_avatar_url,
        twitter_username: mockUser.twitter_username,
        skills: mockUser.skills,
        looking_for: mockUser.looking_for,
        experience_level: mockUser.experience_level,
        location: mockUser.location,
        website_url: mockUser.website_url,
        github_url: mockUser.github_url,
        wallet_address: mockUser.wallet_address,
        privy_user_id: mockUser.privy_user_id,
        profile_completed: mockUser.profile_completed,
        is_active: mockUser.is_active,
        reputation_score: mockUser.reputation_score,
        created_at: new Date().toISOString()
      };
      
      const { data: newUser, error } = await supabase
        .from('users')
        .insert([userData])
        .select()
        .single();
      
      if (error) {
        console.error(`  ❌ Failed to create ${mockUser.username}:`, error.message);
        continue;
      }
      
      console.log(`  ✅ Created user ${mockUser.username} (ID: ${newUser.id})`);
      
      // Have them swipe right on canned oxygen
      const { error: swipeError } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: newUser.id,
          swiped_id: cannedUser.id,
          direction: 'right',
          created_at: new Date(Date.now() - Math.random() * 86400000).toISOString() // Random time in last 24h
        }]);
      
      if (!swipeError) {
        console.log(`  ✅ ${mockUser.username} swiped right on canned oxygen`);
      } else if (swipeError.code === '23505') {
        console.log(`  ⏭️ ${mockUser.username} already swiped on canned oxygen`);
      }
    }
    
    console.log('\n✅ All demo users added successfully!');
    console.log('🎯 These users will appear in your discover stack');
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

addDemoUsers();