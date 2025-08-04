const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function findAndCreateMissingMatches() {
  try {
    console.log('🔍 Finding mutual right swipes without matches...\n');

    // Get all right swipes
    const { data: swipes, error: swipesError } = await supabase
      .from('swipes')
      .select('*')
      .eq('direction', 'right')
      .order('created_at', { ascending: true });

    if (swipesError) throw swipesError;

    console.log(`Found ${swipes.length} right swipes total\n`);

    // Group swipes by user pairs
    const swipeMap = new Map();
    
    swipes.forEach(swipe => {
      const key = [swipe.swiper_id, swipe.swiped_id].sort().join('-');
      if (!swipeMap.has(key)) {
        swipeMap.set(key, []);
      }
      swipeMap.get(key).push(swipe);
    });

    // Find mutual swipes
    const mutualSwipes = [];
    
    for (const [key, swipeList] of swipeMap.entries()) {
      if (swipeList.length >= 2) {
        // Check if we have swipes in both directions
        const [user1, user2] = key.split('-');
        const hasUser1ToUser2 = swipeList.some(s => s.swiper_id === user1 && s.swiped_id === user2);
        const hasUser2ToUser1 = swipeList.some(s => s.swiper_id === user2 && s.swiped_id === user1);
        
        if (hasUser1ToUser2 && hasUser2ToUser1) {
          mutualSwipes.push({
            user1_id: user1,
            user2_id: user2,
            swipes: swipeList
          });
        }
      }
    }

    console.log(`Found ${mutualSwipes.length} mutual right swipes\n`);

    // Check which ones don't have matches
    const missingMatches = [];
    
    for (const mutual of mutualSwipes) {
      const { data: existingMatch } = await supabase
        .from('matches')
        .select('*')
        .eq('user1_id', mutual.user1_id)
        .eq('user2_id', mutual.user2_id)
        .single();
      
      if (!existingMatch) {
        missingMatches.push(mutual);
      }
    }

    console.log(`Found ${missingMatches.length} missing matches that need to be created\n`);

    // Get user details for logging
    const userIds = [...new Set(missingMatches.flatMap(m => [m.user1_id, m.user2_id]))];
    const { data: users } = await supabase
      .from('users')
      .select('id, username, display_name')
      .in('id', userIds);
    
    const userMap = new Map(users.map(u => [u.id, u.username || u.display_name || 'Unknown']));

    // Create the missing matches
    for (const missing of missingMatches) {
      const user1Name = userMap.get(missing.user1_id);
      const user2Name = userMap.get(missing.user2_id);
      
      console.log(`Creating match: ${user1Name} ↔️ ${user2Name}`);
      
      const { data: newMatch, error: matchError } = await supabase
        .from('matches')
        .insert([{
          user1_id: missing.user1_id,
          user2_id: missing.user2_id,
          user1_liked: true,
          user2_liked: true,
          matched_at: new Date().toISOString(),
          created_at: new Date().toISOString()
        }])
        .select();
      
      if (matchError) {
        console.error(`  ❌ Error creating match: ${matchError.message}`);
      } else {
        console.log(`  ✅ Match created successfully!`);
      }
    }

    console.log(`\n✨ Done! Created ${missingMatches.length} missing matches.`);

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the fix
findAndCreateMissingMatches();