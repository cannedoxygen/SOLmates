const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkCannedOxygenSwipes() {
  try {
    console.log('🔍 Checking canned oxygen swipes...\n');

    // First find canned oxygen user
    const { data: cannedUser, error: userError } = await supabase
      .from('users')
      .select('*')
      .eq('username', 'Canned Oxygen')
      .single();

    if (userError || !cannedUser) {
      console.error('Could not find canned oxygen user');
      return;
    }

    console.log(`Found user: ${cannedUser.username} (${cannedUser.id})\n`);

    // Get all swipes by canned oxygen
    const { data: cannedSwipes, error: swipesError } = await supabase
      .from('swipes')
      .select('*')
      .eq('swiper_id', cannedUser.id)
      .order('created_at', { ascending: false });

    if (swipesError) throw swipesError;

    console.log(`Total swipes by canned oxygen: ${cannedSwipes.length}`);
    
    // Get details of users swiped on
    const swipedUserIds = cannedSwipes.map(s => s.swiped_id);
    const { data: swipedUsers } = await supabase
      .from('users')
      .select('id, username, display_name')
      .in('id', swipedUserIds);

    const userMap = new Map(swipedUsers.map(u => [u.id, u.username || u.display_name || 'Unknown']));

    console.log('\nPeople canned oxygen swiped RIGHT on:');
    const rightSwipes = cannedSwipes.filter(s => s.direction === 'right');
    rightSwipes.forEach(swipe => {
      const userName = userMap.get(swipe.swiped_id);
      console.log(`  ✅ ${userName} (${swipe.swiped_id}) - ${new Date(swipe.created_at).toLocaleString()}`);
    });

    // Now check if any of them swiped back
    console.log('\n🔍 Checking who swiped back on canned oxygen...');
    
    for (const rightSwipe of rightSwipes) {
      const userName = userMap.get(rightSwipe.swiped_id);
      
      // Check if this user swiped back
      const { data: reciprocalSwipe } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', rightSwipe.swiped_id)
        .eq('swiped_id', cannedUser.id)
        .eq('direction', 'right')
        .single();
      
      if (reciprocalSwipe) {
        console.log(`\n💕 MUTUAL RIGHT SWIPE with ${userName}!`);
        console.log(`   Canned swiped on ${new Date(rightSwipe.created_at).toLocaleString()}`);
        console.log(`   ${userName} swiped back on ${new Date(reciprocalSwipe.created_at).toLocaleString()}`);
        
        // Check if match exists
        const user1_id = cannedUser.id < rightSwipe.swiped_id ? cannedUser.id : rightSwipe.swiped_id;
        const user2_id = cannedUser.id < rightSwipe.swiped_id ? rightSwipe.swiped_id : cannedUser.id;
        
        const { data: match } = await supabase
          .from('matches')
          .select('*')
          .eq('user1_id', user1_id)
          .eq('user2_id', user2_id)
          .single();
        
        if (match) {
          console.log(`   ✅ Match exists!`);
        } else {
          console.log(`   ❌ NO MATCH RECORD - Creating one now...`);
          
          // Create the match
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
            console.error(`   Failed to create match: ${matchError.message}`);
          } else {
            console.log(`   ✅ Match created successfully!`);
          }
        }
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the check
checkCannedOxygenSwipes();