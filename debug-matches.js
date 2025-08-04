const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

// Initialize Supabase client
const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugMatches() {
  try {
    console.log('🔍 Debugging Swipes and Matches...\n');

    // Get all swipes
    const { data: swipes, error: swipesError } = await supabase
      .from('swipes')
      .select('*')
      .order('created_at', { ascending: false })
      .limit(20);

    if (swipesError) {
      console.error('❌ Error fetching swipes:', swipesError);
      return;
    }

    console.log(`📊 Found ${swipes.length} recent swipes:\n`);
    
    // Group swipes by pairs to find potential matches
    const swipePairs = {};
    
    swipes.forEach(swipe => {
      const key1 = `${swipe.swiper_id}-${swipe.swiped_id}`;
      const key2 = `${swipe.swiped_id}-${swipe.swiper_id}`;
      
      if (!swipePairs[key1]) swipePairs[key1] = [];
      swipePairs[key1].push(swipe);
      
      // Check for reciprocal swipe
      if (swipePairs[key2]) {
        console.log('🎯 Found potential match pair:');
        console.log(`  User 1: ${swipe.swiper_id} swiped ${swipe.direction} on User 2: ${swipe.swiped_id}`);
        const reciprocal = swipePairs[key2].find(s => s.direction === 'right' || s.direction === 'super');
        if (reciprocal) {
          console.log(`  User 2: ${reciprocal.swiper_id} swiped ${reciprocal.direction} on User 1: ${reciprocal.swiped_id}`);
          console.log('  ✅ This should create a match!\n');
        }
      }
    });

    // Get all matches
    const { data: matches, error: matchesError } = await supabase
      .from('matches')
      .select('*')
      .order('created_at', { ascending: false })
      .limit(10);

    if (matchesError) {
      console.error('❌ Error fetching matches:', matchesError);
      return;
    }

    console.log(`\n📊 Found ${matches.length} matches:\n`);
    matches.forEach(match => {
      console.log(`Match ${match.id}:`);
      console.log(`  User 1: ${match.user1_id} (liked: ${match.user1_liked})`);
      console.log(`  User 2: ${match.user2_id} (liked: ${match.user2_liked})`);
      console.log(`  Matched at: ${match.matched_at || 'Not matched yet'}`);
      console.log(`  Created at: ${match.created_at}\n`);
    });

    // Check for mutual right swipes without matches
    console.log('\n🔍 Checking for mutual right swipes without matches...\n');
    
    const rightSwipes = swipes.filter(s => s.direction === 'right' || s.direction === 'super');
    
    for (const swipe of rightSwipes) {
      // Check if there's a reciprocal swipe
      const reciprocal = swipes.find(s => 
        s.swiper_id === swipe.swiped_id && 
        s.swiped_id === swipe.swiper_id && 
        (s.direction === 'right' || s.direction === 'super')
      );
      
      if (reciprocal) {
        // Check if there's a match for this pair
        const match = matches.find(m => 
          (m.user1_id === swipe.swiper_id && m.user2_id === swipe.swiped_id) ||
          (m.user1_id === swipe.swiped_id && m.user2_id === swipe.swiper_id)
        );
        
        if (!match) {
          console.log('⚠️  Found mutual right swipes WITHOUT a match:');
          console.log(`  User ${swipe.swiper_id} ❤️ User ${swipe.swiped_id} (${swipe.created_at})`);
          console.log(`  User ${reciprocal.swiper_id} ❤️ User ${reciprocal.swiped_id} (${reciprocal.created_at})`);
          console.log('  ❌ No match record found!\n');
        }
      }
    }

  } catch (error) {
    console.error('❌ Error during debug:', error);
  }
}

// Run the debug
debugMatches();