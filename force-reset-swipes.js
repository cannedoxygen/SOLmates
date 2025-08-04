const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function forceResetSwipes() {
  try {
    console.log('🔄 Force resetting all swipes and matches...\n');

    // Get all users first
    const { data: users } = await supabase
      .from('users')
      .select('*')
      .order('username');

    console.log('Users:', users.map(u => u.username).join(', '));

    // 1. Delete ALL swipes
    console.log('\n1. Deleting all swipes...');
    const { data: allSwipes } = await supabase.from('swipes').select('id');
    console.log(`Found ${allSwipes.length} swipes to delete`);
    
    const { error: deleteSwipesError } = await supabase
      .from('swipes')
      .delete()
      .gte('id', '00000000-0000-0000-0000-000000000000');
    
    if (deleteSwipesError) {
      console.error('Error deleting swipes:', deleteSwipesError);
    } else {
      console.log('✅ All swipes deleted');
    }

    // 2. Delete ALL matches  
    console.log('\n2. Deleting all matches...');
    const { data: allMatches } = await supabase.from('matches').select('id');
    console.log(`Found ${allMatches.length} matches to delete`);
    
    const { error: deleteMatchesError } = await supabase
      .from('matches')
      .delete()
      .gte('id', '00000000-0000-0000-0000-000000000000');
    
    if (deleteMatchesError) {
      console.error('Error deleting matches:', deleteMatchesError);
    } else {
      console.log('✅ All matches deleted');
    }

    // 3. Verify deletion
    const { data: remainingSwipes } = await supabase.from('swipes').select('*');
    const { data: remainingMatches } = await supabase.from('matches').select('*');
    console.log(`\nRemaining swipes: ${remainingSwipes.length}`);
    console.log(`Remaining matches: ${remainingMatches.length}`);

    if (remainingSwipes.length > 0 || remainingMatches.length > 0) {
      console.log('❌ Not all data was deleted, stopping...');
      return;
    }

    // 4. Now recreate proper swipes
    console.log('\n3. Creating proper swipes (everyone → everyone except T-101)...\n');
    
    const t101 = users.find(u => u.username === 'T-101');
    const swipesToCreate = [];

    for (const swiper of users) {
      for (const swiped of users) {
        // Skip self-swipes
        if (swiper.id === swiped.id) continue;
        
        // Skip swiping on T-101 (but T-101 can swipe on others)
        if (t101 && swiped.id === t101.id) continue;

        swipesToCreate.push({
          swiper_id: swiper.id,
          swiped_id: swiped.id,
          direction: 'right',
          created_at: new Date().toISOString()
        });
      }
    }

    console.log(`Creating ${swipesToCreate.length} swipes...`);
    
    // Insert all swipes at once
    const { error: insertError } = await supabase
      .from('swipes')
      .insert(swipesToCreate);

    if (insertError) {
      console.error('Error creating swipes:', insertError);
      return;
    }

    console.log('✅ All swipes created');

    // 5. Create matches for mutual swipes
    console.log('\n4. Creating matches...');
    
    const matchesToCreate = [];
    const createdMatches = new Set();

    for (const swipe1 of swipesToCreate) {
      // Look for reciprocal swipe
      const reciprocal = swipesToCreate.find(swipe2 => 
        swipe2.swiper_id === swipe1.swiped_id && 
        swipe2.swiped_id === swipe1.swiper_id
      );

      if (reciprocal) {
        // Create match (ensure consistent ordering)
        const user1_id = swipe1.swiper_id < swipe1.swiped_id ? swipe1.swiper_id : swipe1.swiped_id;
        const user2_id = swipe1.swiper_id < swipe1.swiped_id ? swipe1.swiped_id : swipe1.swiper_id;
        const matchKey = `${user1_id}-${user2_id}`;

        if (!createdMatches.has(matchKey)) {
          matchesToCreate.push({
            user1_id: user1_id,
            user2_id: user2_id,
            user1_liked: true,
            user2_liked: true,
            matched_at: new Date().toISOString(),
            created_at: new Date().toISOString()
          });
          createdMatches.add(matchKey);
        }
      }
    }

    console.log(`Creating ${matchesToCreate.length} matches...`);
    
    if (matchesToCreate.length > 0) {
      const { error: matchInsertError } = await supabase
        .from('matches')
        .insert(matchesToCreate);

      if (matchInsertError) {
        console.error('Error creating matches:', matchInsertError);
      } else {
        console.log('✅ All matches created');
      }
    }

    // 6. Show final results
    console.log('\n📊 Final Results:');
    
    const { data: finalSwipes } = await supabase.from('swipes').select('*');
    const { data: finalMatches } = await supabase.from('matches').select('*');
    const userMap = new Map(users.map(u => [u.id, u.username]));

    console.log(`\nSwipes: ${finalSwipes.length}`);
    console.log(`Matches: ${finalMatches.length}`);
    
    console.log('\nMatches:');
    finalMatches.forEach(match => {
      const user1 = userMap.get(match.user1_id);
      const user2 = userMap.get(match.user2_id);
      console.log(`  ${user1} ↔️ ${user2}`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

forceResetSwipes();