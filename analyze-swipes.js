const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function analyzeSwipes() {
  try {
    console.log('📊 Analyzing all swipes in the database...\n');

    // Get all swipes
    const { data: swipes, error: swipesError } = await supabase
      .from('swipes')
      .select('*')
      .order('created_at', { ascending: false });

    if (swipesError) throw swipesError;

    // Get all users
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('id, username, display_name, privy_user_id');

    if (usersError) throw usersError;

    const userMap = new Map(users.map(u => [u.id, {
      username: u.username || u.display_name || 'Unknown',
      privyId: u.privy_user_id
    }]));

    console.log(`Total swipes: ${swipes.length}\n`);

    // Group by direction
    const byDirection = {};
    swipes.forEach(swipe => {
      if (!byDirection[swipe.direction]) {
        byDirection[swipe.direction] = [];
      }
      byDirection[swipe.direction].push(swipe);
    });

    console.log('Swipes by direction:');
    Object.entries(byDirection).forEach(([direction, swipeList]) => {
      console.log(`  ${direction}: ${swipeList.length}`);
    });

    console.log('\nDetailed swipes:');
    swipes.forEach(swipe => {
      const swiper = userMap.get(swipe.swiper_id);
      const swiped = userMap.get(swipe.swiped_id);
      console.log(`  ${swiper?.username} (${swipe.swiper_id.slice(0, 8)}...) ${swipe.direction === 'right' ? '👉' : '👈'} ${swiped?.username} (${swipe.swiped_id.slice(0, 8)}...)`);
    });

    // Check for potential matches (mutual right swipes)
    console.log('\n🔍 Checking for mutual right swipes...');
    const rightSwipes = byDirection['right'] || [];
    
    for (const swipe of rightSwipes) {
      // Check if there's a reciprocal right swipe
      const reciprocal = rightSwipes.find(s => 
        s.swiper_id === swipe.swiped_id && 
        s.swiped_id === swipe.swiper_id
      );
      
      if (reciprocal) {
        const swiper = userMap.get(swipe.swiper_id);
        const swiped = userMap.get(swipe.swiped_id);
        console.log(`\n  💕 Mutual right swipe found!`);
        console.log(`     ${swiper?.username} ↔️ ${swiped?.username}`);
        
        // Check if match exists
        const user1_id = swipe.swiper_id < swipe.swiped_id ? swipe.swiper_id : swipe.swiped_id;
        const user2_id = swipe.swiper_id < swipe.swiped_id ? swipe.swiped_id : swipe.swiper_id;
        
        const { data: match } = await supabase
          .from('matches')
          .select('*')
          .eq('user1_id', user1_id)
          .eq('user2_id', user2_id)
          .single();
        
        if (match) {
          console.log(`     ✅ Match exists: ${match.id}`);
        } else {
          console.log(`     ❌ No match record found!`);
        }
      }
    }

    // Check existing matches
    console.log('\n📋 Existing matches:');
    const { data: matches } = await supabase
      .from('matches')
      .select('*');
    
    if (matches && matches.length > 0) {
      matches.forEach(match => {
        const user1 = userMap.get(match.user1_id);
        const user2 = userMap.get(match.user2_id);
        console.log(`  ${user1?.username} ↔️ ${user2?.username} (created: ${new Date(match.created_at).toLocaleString()})`);
      });
    } else {
      console.log('  No matches found');
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the analysis
analyzeSwipes();