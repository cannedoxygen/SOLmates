// Create mutual matches by having all mock profiles swipe right on you
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

const YOUR_USER_ID = '9b56178a-42c1-42c9-bb7a-495cd31339c1';

async function createMutualMatches() {
  try {
    console.log('🎯 Creating mutual matches...');
    
    // 1. Get all mock profiles (users with specific usernames)
    const mockUsernames = ['solanamobile', 'aeyakovenko', 'solana', 'solanaspaces', 'pumpdotfun', 'solflare', 'backpack'];
    
    const { data: mockProfiles, error: profilesError } = await supabase
      .from('users')
      .select('id, username')
      .in('username', mockUsernames);

    if (profilesError) {
      console.error('❌ Error getting mock profiles:', profilesError);
      return;
    }

    console.log(`🔍 Found ${mockProfiles.length} mock profiles to match with`);

    // 2. Get your swipes to see who you swiped right on
    const { data: yourSwipes, error: swipesError } = await supabase
      .from('swipes')
      .select('swiped_id, direction')
      .eq('swiper_id', YOUR_USER_ID)
      .in('direction', ['right', 'super']);

    if (swipesError) {
      console.error('❌ Error getting your swipes:', swipesError);
      return;
    }

    const youSwipedRightOn = yourSwipes.map(swipe => swipe.swiped_id);
    console.log(`💕 You swiped right on ${youSwipedRightOn.length} profiles`);

    // 3. For each mock profile you swiped right on, make them swipe right back
    for (const profile of mockProfiles) {
      if (youSwipedRightOn.includes(profile.id)) {
        console.log(`💖 Making ${profile.username} swipe right back on you...`);
        
        // Check if they already swiped
        const { data: existingSwipe, error: checkError } = await supabase
          .from('swipes')
          .select('id')
          .eq('swiper_id', profile.id)
          .eq('swiped_id', YOUR_USER_ID)
          .single();

        if (checkError && checkError.code !== 'PGRST116') {
          console.error(`❌ Error checking existing swipe for ${profile.username}:`, checkError);
          continue;
        }

        if (existingSwipe) {
          console.log(`⏭️  ${profile.username} already swiped, skipping...`);
          continue;
        }

        // Create their swipe back
        const { error: swipeError } = await supabase
          .from('swipes')
          .insert([{
            swiper_id: profile.id,
            swiped_id: YOUR_USER_ID,
            direction: 'right',
            created_at: new Date().toISOString()
          }]);

        if (swipeError) {
          console.error(`❌ Error creating swipe for ${profile.username}:`, swipeError);
          continue;
        }

        // 4. Create the match record
        const { error: matchError } = await supabase
          .from('matches')
          .insert([{
            user1_id: YOUR_USER_ID < profile.id ? YOUR_USER_ID : profile.id, // smaller ID first
            user2_id: YOUR_USER_ID < profile.id ? profile.id : YOUR_USER_ID,
            user1_liked: true,
            user2_liked: true,
            matched_at: new Date().toISOString(),
            created_at: new Date().toISOString()
          }]);

        if (matchError && matchError.code !== '23505') { // ignore duplicate errors
          console.error(`❌ Error creating match with ${profile.username}:`, matchError);
          continue;
        }

        // 5. Create chat room
        const { error: chatError } = await supabase
          .from('chats')
          .insert([{
            user1_id: YOUR_USER_ID < profile.id ? YOUR_USER_ID : profile.id,
            user2_id: YOUR_USER_ID < profile.id ? profile.id : YOUR_USER_ID,
            created_at: new Date().toISOString()
          }]);

        if (chatError && chatError.code !== '23505') {
          console.error(`❌ Error creating chat with ${profile.username}:`, chatError);
          continue;
        }

        console.log(`✅ Created match and chat with ${profile.username}!`);
      }
    }

    console.log('🎉 All mutual matches created! Restart your app to see matches and chats.');
    
  } catch (error) {
    console.error('❌ Failed to create mutual matches:', error);
  }
}

createMutualMatches();