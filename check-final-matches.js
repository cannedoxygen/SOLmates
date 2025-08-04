const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkFinalMatches() {
  try {
    console.log('📊 Final matches status:\n');

    // Get all users
    const { data: users } = await supabase
      .from('users')
      .select('*')
      .order('username');

    // Get all matches
    const { data: matches } = await supabase
      .from('matches')
      .select('*');

    const userMap = new Map(users.map(u => [u.id, u.username]));

    console.log(`Users: ${users.length}`);
    users.forEach(u => console.log(`  - ${u.username}`));

    console.log(`\nMatches: ${matches.length}`);
    matches.forEach(match => {
      const user1 = userMap.get(match.user1_id);
      const user2 = userMap.get(match.user2_id);
      console.log(`  ${user1} ↔️ ${user2}`);
    });

    // Check swipes
    const { data: swipes } = await supabase
      .from('swipes')
      .select('*')
      .eq('direction', 'right');

    console.log(`\nRight swipes: ${swipes.length}`);

    // Group swipes by user
    const swipesByUser = {};
    swipes.forEach(swipe => {
      const swiper = userMap.get(swipe.swiper_id);
      const swiped = userMap.get(swipe.swiped_id);
      
      if (!swipesByUser[swiper]) {
        swipesByUser[swiper] = [];
      }
      swipesByUser[swiper].push(swiped);
    });

    console.log('\nWho swiped right on whom:');
    Object.entries(swipesByUser).forEach(([swiper, swipedList]) => {
      console.log(`  ${swiper} → ${swipedList.join(', ')}`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

checkFinalMatches();