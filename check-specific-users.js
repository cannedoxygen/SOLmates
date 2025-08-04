const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkSpecificUsers() {
  try {
    console.log('🔍 Checking specific users...\n');

    // Check these Privy IDs
    const privyIds = [
      { handle: '@Preciou70331026', id: 'cmdrfcdby00usl50jtr0pai6g' },
      { handle: '@unbello2211', id: 'cmdr2e4gl00m4jl5dc09iy' }
    ];

    for (const privyUser of privyIds) {
      console.log(`\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━`);
      console.log(`Checking ${privyUser.handle} (${privyUser.id})`);
      console.log(`━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━`);

      // Find the user in database
      const { data: user, error: userError } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', privyUser.id)
        .single();

      if (userError || !user) {
        console.log(`❌ User not found in database`);
        continue;
      }

      console.log(`✅ Found user: ${user.username} (ID: ${user.id})\n`);

      // Get all their swipes
      const { data: userSwipes, error: swipesError } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', user.id)
        .order('created_at', { ascending: false });

      if (swipesError) throw swipesError;

      console.log(`Total swipes: ${userSwipes.length}`);
      
      // Get details of users they swiped on
      const swipedUserIds = userSwipes.map(s => s.swiped_id);
      const { data: swipedUsers } = await supabase
        .from('users')
        .select('id, username, display_name')
        .in('id', swipedUserIds);

      const userMap = new Map(swipedUsers.map(u => [u.id, u.username || u.display_name || 'Unknown']));

      // Show right swipes
      const rightSwipes = userSwipes.filter(s => s.direction === 'right');
      if (rightSwipes.length > 0) {
        console.log(`\nPeople ${user.username} swiped RIGHT on:`);
        rightSwipes.forEach(swipe => {
          const userName = userMap.get(swipe.swiped_id);
          console.log(`  ✅ ${userName} - ${new Date(swipe.created_at).toLocaleString()}`);
        });
      }

      // Check for mutual right swipes
      console.log(`\n🔍 Checking for mutual right swipes...`);
      
      for (const rightSwipe of rightSwipes) {
        const swipedUserName = userMap.get(rightSwipe.swiped_id);
        
        // Check if this user swiped back
        const { data: reciprocalSwipe } = await supabase
          .from('swipes')
          .select('*')
          .eq('swiper_id', rightSwipe.swiped_id)
          .eq('swiped_id', user.id)
          .eq('direction', 'right')
          .single();
        
        if (reciprocalSwipe) {
          console.log(`\n💕 MUTUAL RIGHT SWIPE with ${swipedUserName}!`);
          console.log(`   ${user.username} swiped on ${new Date(rightSwipe.created_at).toLocaleString()}`);
          console.log(`   ${swipedUserName} swiped back on ${new Date(reciprocalSwipe.created_at).toLocaleString()}`);
          
          // Check if match exists
          const user1_id = user.id < rightSwipe.swiped_id ? user.id : rightSwipe.swiped_id;
          const user2_id = user.id < rightSwipe.swiped_id ? rightSwipe.swiped_id : user.id;
          
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

      // Also check who swiped on them
      console.log(`\n📥 Checking who swiped on ${user.username}...`);
      const { data: swipesOnUser } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiped_id', user.id)
        .eq('direction', 'right');

      if (swipesOnUser && swipesOnUser.length > 0) {
        console.log(`${swipesOnUser.length} people swiped right on ${user.username}`);
        
        // Get swiper details
        const swiperIds = swipesOnUser.map(s => s.swiper_id);
        const { data: swipers } = await supabase
          .from('users')
          .select('id, username')
          .in('id', swiperIds);
        
        const swiperMap = new Map(swipers.map(u => [u.id, u.username]));
        
        swipesOnUser.forEach(swipe => {
          const swiperName = swiperMap.get(swipe.swiper_id);
          console.log(`  👈 ${swiperName} swiped right on ${user.username}`);
        });
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the check
checkSpecificUsers();