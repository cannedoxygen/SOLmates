// Add mock users with minimal fields to avoid permission issues
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
    privy_user_id: `mock_toly_${Date.now()}`
  },
  {
    username: "mike_s",
    display_name: "Mike S", 
    bio: "dev rel @ solana mobile | ex-SWE @ meta",
    twitter_avatar_url: "https://pbs.twimg.com/profile_images/1780680323203469312/fz3qQgJP_normal.jpg",
    twitter_username: "somemobiledev",
    skills: ["Developer Relations", "Mobile Development", "Solana", "Software Engineering", "React Native"],
    looking_for: ["Developer", "Community Builder", "Content Creator"],
    privy_user_id: `mock_mike_${Date.now() + 1}`
  },
  {
    username: "mert_helius",
    display_name: "mert | helius.dev",
    bio: "ceo @heliuslabs, ex @coinbase — Solana RPCs, APIs, trading infra: http://helius.dev",
    twitter_avatar_url: "https://pbs.twimg.com/profile_images/1761433516354830336/4ZIy1-JR_normal.jpg",
    twitter_username: "0xMert_",
    skills: ["Infrastructure", "RPC", "APIs", "Trading", "Solana", "Leadership"],
    looking_for: ["Developer", "Infrastructure Engineer", "Partner"],
    privy_user_id: `mock_mert_${Date.now() + 2}`
  }
];

async function addDemoUsers() {
  try {
    console.log('📦 Adding demo users with minimal fields...\n');
    
    // First, let's check the table structure
    console.log('🔍 Checking users table structure...');
    const { data: testInsert, error: testError } = await supabase
      .from('users')
      .select('*')
      .limit(1);
    
    if (testError) {
      console.error('❌ Error accessing users table:', testError);
      return;
    }
    
    // Get canned oxygen user
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
        console.log(`  ⏭️ User ${mockUser.username} already exists`);
        
        // Still create swipe if it doesn't exist
        const { error: swipeError } = await supabase
          .from('swipes')
          .insert([{
            swiper_id: existingUser.id,
            swiped_id: cannedUser.id,
            direction: 'right',
            created_at: new Date(Date.now() - Math.random() * 86400000).toISOString()
          }]);
        
        if (!swipeError) {
          console.log(`  ✅ ${mockUser.username} swiped right on canned oxygen`);
        } else if (swipeError.code === '23505') {
          console.log(`  ⏭️ ${mockUser.username} already swiped on canned oxygen`);
        }
        continue;
      }
      
      // Try minimal insert first
      console.log('  🔧 Attempting minimal insert...');
      const { data: newUser, error } = await supabase
        .from('users')
        .insert([{
          username: mockUser.username,
          privy_user_id: mockUser.privy_user_id,
          wallet_address: `0x${Math.random().toString(16).substr(2, 40)}`
        }])
        .select()
        .single();
      
      if (error) {
        console.error(`  ❌ Failed minimal insert:`, error.message);
        console.error(`  Error details:`, error);
        continue;
      }
      
      console.log(`  ✅ Created user ${mockUser.username} with ID: ${newUser.id}`);
      
      // Now update with additional fields
      console.log('  🔧 Updating user profile...');
      const { error: updateError } = await supabase
        .from('users')
        .update({
          display_name: mockUser.display_name,
          bio: mockUser.bio,
          twitter_avatar_url: mockUser.twitter_avatar_url,
          twitter_username: mockUser.twitter_username,
          skills: mockUser.skills,
          looking_for: mockUser.looking_for,
          profile_completed: true,
          is_active: true
        })
        .eq('id', newUser.id);
      
      if (updateError) {
        console.error(`  ⚠️ Failed to update profile:`, updateError.message);
      } else {
        console.log(`  ✅ Updated ${mockUser.username}'s profile`);
      }
      
      // Have them swipe right on canned oxygen
      const { error: swipeError } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: newUser.id,
          swiped_id: cannedUser.id,
          direction: 'right',
          created_at: new Date(Date.now() - Math.random() * 86400000).toISOString()
        }]);
      
      if (!swipeError) {
        console.log(`  ✅ ${mockUser.username} swiped right on canned oxygen`);
      } else {
        console.error(`  ❌ Failed to create swipe:`, swipeError.message);
      }
    }
    
    console.log('\n✅ Process completed!');
    console.log('🎯 Check your discover stack for new users');
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

addDemoUsers();