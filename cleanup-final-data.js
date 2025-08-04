const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function cleanupFinalData() {
  try {
    console.log('🧹 Cleaning up data...\n');

    // Get all users
    const { data: users } = await supabase
      .from('users')
      .select('*')
      .order('username');

    console.log('Users:', users.map(u => u.username).join(', '));

    // 1. Delete self-matches and self-swipes
    console.log('\n1. Removing self-matches and self-swipes...');
    
    // Delete self-matches
    const { error: selfMatchError } = await supabase
      .from('matches')
      .delete()
      .eq('user1_id', 'user2_id');

    // Delete self-swipes
    for (const user of users) {
      const { error: selfSwipeError } = await supabase
        .from('swipes')
        .delete()
        .eq('swiper_id', user.id)
        .eq('swiped_id', user.id);
    }

    // 2. Clear all data and recreate properly
    console.log('\n2. Clearing all swipes and matches...');
    await supabase.from('swipes').delete().neq('id', '00000000-0000-0000-0000-000000000000');
    await supabase.from('matches').delete().neq('id', '00000000-0000-0000-0000-000000000000');

    // 3. Recreate swipes: everyone swipes right on everyone except T-101
    console.log('\n3. Recreating correct swipes...');
    
    const t101 = users.find(u => u.username === 'T-101');
    let swipesCreated = 0;
    let matchesCreated = 0;

    for (const swiper of users) {
      console.log(`\n${swiper.username} swiping:`);
      
      for (const swiped of users) {
        // Skip self-swipes
        if (swiper.id === swiped.id) continue;
        
        // Skip swiping on T-101 (except T-101 can swipe on others)
        if (t101 && swiped.id === t101.id) {
          console.log(`  ⏭️  Skipping T-101`);
          continue;
        }

        // Create swipe
        const { error: swipeError } = await supabase
          .from('swipes')
          .insert([{
            swiper_id: swiper.id,
            swiped_id: swiped.id,
            direction: 'right',
            created_at: new Date().toISOString()
          }]);

        if (swipeError) {
          console.error(`  ❌ Error swiping on ${swiped.username}: ${swipeError.message}`);
        } else {
          console.log(`  ✅ Swiped right on ${swiped.username}`);
          swipesCreated++;

          // Check if this creates a match (mutual right swipe)
          const { data: reciprocalSwipe } = await supabase
            .from('swipes')
            .select('*')
            .eq('swiper_id', swiped.id)
            .eq('swiped_id', swiper.id)
            .eq('direction', 'right')
            .single();

          if (reciprocalSwipe) {
            // Create match
            const user1_id = swiper.id < swiped.id ? swiper.id : swiped.id;
            const user2_id = swiper.id < swiped.id ? swiped.id : swiper.id;

            const { error: matchError } = await supabase
              .from('matches')
              .insert([{
                user1_id: user1_id,
                user2_id: user2_id,
                user1_liked: true,
                user2_liked: true,
                matched_at: new Date().toISOString(),
                created_at: new Date().toISOString()
              }]);

            if (!matchError) {
              console.log(`    💕 Match created with ${swiped.username}!`);
              matchesCreated++;
            }
          }
        }
      }
    }

    console.log(`\n\n🎉 Summary:`);
    console.log(`  - Swipes created: ${swipesCreated}`);
    console.log(`  - Matches created: ${matchesCreated}`);

    // 4. Show final results
    console.log('\n📊 Final results:');
    
    const { data: finalMatches } = await supabase
      .from('matches')
      .select('*');

    const userMap = new Map(users.map(u => [u.id, u.username]));

    console.log(`\nMatches (${finalMatches.length}):`);
    finalMatches.forEach(match => {
      const user1 = userMap.get(match.user1_id);
      const user2 = userMap.get(match.user2_id);
      console.log(`  ${user1} ↔️ ${user2}`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

cleanupFinalData();