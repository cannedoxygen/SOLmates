// Add mock users from mock-data directory
const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function addMockUsers() {
  try {
    console.log('📦 Adding mock users to database...\n');
    
    // Read users.json
    const usersPath = path.join(__dirname, 'mock-data', 'users.json');
    if (!fs.existsSync(usersPath)) {
      console.error('❌ mock-data/users.json not found');
      console.log('📝 Please add user data to mock-data/users.json first');
      return;
    }
    
    const mockUsers = JSON.parse(fs.readFileSync(usersPath, 'utf8'));
    console.log(`📋 Found ${mockUsers.length} mock users to add\n`);
    
    for (const mockUser of mockUsers) {
      console.log(`👤 Processing ${mockUser.username}...`);
      
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
      
      // Generate a unique wallet address for the mock user
      const walletAddress = `0x${Math.random().toString(16).substr(2, 40)}`;
      
      // Create user profile
      const userData = {
        username: mockUser.username,
        display_name: mockUser.display_name || mockUser.username,
        bio: mockUser.bio || 'Mock user for demo',
        avatar_url: mockUser.avatar_url || null,
        twitter_avatar_url: mockUser.twitter_avatar_url || null,
        twitter_username: mockUser.twitter_username || null,
        twitter_name: mockUser.twitter_name || mockUser.display_name,
        skills: mockUser.skills || [],
        looking_for: mockUser.looking_for || [],
        experience_level: mockUser.experience_level || 'Intermediate',
        interests: mockUser.interests || [],
        location: mockUser.location || null,
        timezone: mockUser.timezone || 'UTC',
        github_url: mockUser.github_url || null,
        website_url: mockUser.website_url || null,
        twitter_url: mockUser.twitter_url || null,
        wallet_address: walletAddress,
        privy_user_id: `mock_${mockUser.username}_${Date.now()}`,
        profile_completed: true,
        is_active: true,
        reputation_score: mockUser.reputation_score || 0,
        created_at: new Date().toISOString()
      };
      
      const { data: newUser, error } = await supabase
        .from('users')
        .insert([userData])
        .select()
        .single();
      
      if (error) {
        console.error(`  ❌ Failed to create ${mockUser.username}:`, error.message);
      } else {
        console.log(`  ✅ Created user ${mockUser.username} (ID: ${newUser.id})`);
        
        // If specified, have this mock user swipe right on canned oxygen
        if (mockUser.swipe_on_canned_oxygen) {
          const { data: cannedUser } = await supabase
            .from('users')
            .select('id')
            .or('username.ilike.%canned%,display_name.ilike.%canned%')
            .single();
          
          if (cannedUser) {
            const { error: swipeError } = await supabase
              .from('swipes')
              .insert([{
                swiper_id: newUser.id,
                swiped_id: cannedUser.id,
                direction: 'right',
                created_at: new Date().toISOString()
              }]);
            
            if (!swipeError) {
              console.log(`  ✅ ${mockUser.username} swiped right on canned oxygen`);
            }
          }
        }
      }
    }
    
    console.log('\n✅ Mock users added successfully!');
    console.log('💡 Note: Profile images should be uploaded separately to your storage solution');
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

addMockUsers();