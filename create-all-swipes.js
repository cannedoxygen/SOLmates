const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function createAllSwipes() {
  try {
    console.log('🎯 Creating swipes for all users (everyone swipes right on everyone except T-101)...\n');

    // Get all users
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('*')
      .order('created_at', { ascending: true });

    if (usersError) throw usersError;

    console.log(`Found ${users.length} users:\n`);
    users.forEach(user => {
      console.log(`  - ${user.username} (${user.id})`);
    });

    // Find T-101 user
    const t101User = users.find(u => u.username === 'T-101');
    if (!t101User) {
      console.log('\n❌ T-101 not found, continuing anyway...');
    } else {
      console.log(`\n✅ Found T-101: ${t101User.id}`);
    }

    console.log('\n📝 Creating swipes...\n');

    let swipesCreated = 0;
    let matchesCreated = 0;

    // For each user
    for (const swiper of users) {
      console.log(`\n${swiper.username} is swiping:`);
      
      // Swipe on all other users except T-101
      for (const swiped of users) {
        // Skip self-swipes
        if (swiper.id === swiped.id) continue;
        
        // Skip swiping on T-101
        if (t101User && swiped.id === t101User.id) {
          console.log(`  ⏭️  Skipping T-101`);
          continue;
        }

        // Check if swipe already exists
        const { data: existingSwipe } = await supabase
          .from('swipes')
          .select('*')
          .eq('swiper_id', swiper.id)
          .eq('swiped_id', swiped.id)
          .single();

        if (existingSwipe) {
          console.log(`  ✓ Already swiped on ${swiped.username}`);
          continue;
        }

        // Create the swipe
        const { data: newSwipe, error: swipeError } = await supabase
          .from('swipes')
          .insert([{
            swiper_id: swiper.id,
            swiped_id: swiped.id,
            direction: 'right',
            created_at: new Date().toISOString()
          }])
          .select();

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
            // Create match if it doesn't exist
            const user1_id = swiper.id < swiped.id ? swiper.id : swiped.id;
            const user2_id = swiper.id < swiped.id ? swiped.id : swiper.id;

            const { data: existingMatch } = await supabase
              .from('matches')
              .select('*')
              .eq('user1_id', user1_id)
              .eq('user2_id', user2_id)
              .single();

            if (!existingMatch) {
              const { data: newMatch, error: matchError } = await supabase
                .from('matches')
                .insert([{
                  user1_id: user1_id,
                  user2_id: user2_id,
                  user1_liked: true,
                  user2_liked: true,
                  matched_at: new Date().toISOString(),
                  created_at: new Date().toISOString()
                }])
                .select();

              if (matchError) {
                console.error(`    ❌ Error creating match: ${matchError.message}`);
              } else {
                console.log(`    💕 Match created with ${swiped.username}!`);
                matchesCreated++;
              }
            }
          }
        }
      }
    }

    console.log('\n\n🎉 Summary:');
    console.log(`  - Swipes created: ${swipesCreated}`);
    console.log(`  - Matches created: ${matchesCreated}`);

    // Show final state
    console.log('\n\n📊 Final matches:');
    const { data: allMatches } = await supabase
      .from('matches')
      .select('*');

    if (allMatches && allMatches.length > 0) {
      for (const match of allMatches) {
        const user1 = users.find(u => u.id === match.user1_id);
        const user2 = users.find(u => u.id === match.user2_id);
        console.log(`  ${user1?.username} ↔️ ${user2?.username}`);
      }
    } else {
      console.log('  No matches found');
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the script
createAllSwipes();