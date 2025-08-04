const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

// Initialize Supabase client
const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function testFixedMatching() {
  try {
    console.log('🧪 Testing Fixed Match Creation Logic...\n');

    // Get two test users
    const { data: users } = await supabase
      .from('users')
      .select('id, username')
      .limit(2);

    if (!users || users.length < 2) {
      console.log('Need at least 2 users to test');
      return;
    }

    const userA = users[0];
    const userB = users[1];

    console.log(`Test Users:`);
    console.log(`User A: ${userA.username} (${userA.id})`);
    console.log(`User B: ${userB.username} (${userB.id})\n`);

    // Test consistent ordering
    const user1_id = userA.id < userB.id ? userA.id : userB.id;
    const user2_id = userA.id < userB.id ? userB.id : userA.id;

    console.log(`Consistent ordering:`);
    console.log(`user1_id: ${user1_id}`);
    console.log(`user2_id: ${user2_id}\n`);

    // Check if match already exists
    const { data: existingMatch } = await supabase
      .from('matches')
      .select('*')
      .eq('user1_id', user1_id)
      .eq('user2_id', user2_id)
      .single();

    if (existingMatch) {
      console.log('✅ Match already exists:', existingMatch);
      console.log(`Created at: ${existingMatch.created_at}`);
      console.log(`Matched at: ${existingMatch.matched_at}`);
    } else {
      console.log('❌ No match exists between these users');
      
      // Check swipes between these users
      const { data: swipes } = await supabase
        .from('swipes')
        .select('*')
        .or(`and(swiper_id.eq.${userA.id},swiped_id.eq.${userB.id}),and(swiper_id.eq.${userB.id},swiped_id.eq.${userA.id})`);
      
      console.log(`\nSwipes between users: ${swipes?.length || 0}`);
      swipes?.forEach(swipe => {
        console.log(`- ${swipe.swiper_id} swiped ${swipe.direction} on ${swipe.swiped_id}`);
      });
    }

  } catch (error) {
    console.error('❌ Error:', error);
  }
}

// Run the test
testFixedMatching();