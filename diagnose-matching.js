const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function diagnoseMatchingIssues() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  console.log('🔍 Canned user ID:', cannedUser?.id);
  
  // Check current matches
  const { data: matches } = await supabase
    .from('matches')
    .select('*')
    .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
  console.log('💕 Current matches:', matches?.length || 0);
  if (matches && matches.length > 0) {
    matches.forEach(match => {
      const otherUserId = match.user1_id === cannedUser.id ? match.user2_id : match.user1_id;
      console.log('  - Match with:', otherUserId, '| Matched at:', match.matched_at);
    });
  }
  
  // Check who has swiped right on canned
  const { data: rightSwipesOnCanned } = await supabase
    .from('swipes')
    .select('swiper_id, swiped_id, direction, created_at')
    .eq('swiped_id', cannedUser.id)
    .eq('direction', 'right');
    
  console.log('👉 People who swiped RIGHT on canned:', rightSwipesOnCanned?.length || 0);
  if (rightSwipesOnCanned && rightSwipesOnCanned.length > 0) {
    for (const swipe of rightSwipesOnCanned) {
      // Get username of swiper
      const { data: swiper } = await supabase
        .from('users')
        .select('username')
        .eq('id', swipe.swiper_id)
        .single();
      console.log('  -', swiper?.username, 'swiped right on you at', new Date(swipe.created_at).toLocaleString());
    }
  }
  
  // Check canned's swipes
  const { data: cannedSwipes } = await supabase
    .from('swipes')
    .select('swiper_id, swiped_id, direction, created_at')
    .eq('swiper_id', cannedUser.id);
    
  console.log('👈👉 Canned has swiped on:', cannedSwipes?.length || 0, 'people');
  if (cannedSwipes && cannedSwipes.length > 0) {
    for (const swipe of cannedSwipes) {
      // Get username of swiped user
      const { data: swiped } = await supabase
        .from('users')
        .select('username')
        .eq('id', swipe.swiped_id)
        .single();
      console.log('  - You swiped', swipe.direction, 'on', swiped?.username, 'at', new Date(swipe.created_at).toLocaleString());
    }
  }
  
  // Check demo users specifically
  console.log('\n🎭 DEMO USERS STATUS:');
  const demoUsers = ['toly', 'mike_s', 'mert_helius'];
  for (const username of demoUsers) {
    const { data: demoUser } = await supabase
      .from('users')
      .select('id, username')
      .eq('username', username)
      .single();
      
    if (demoUser) {
      // Check if demo user swiped on canned
      const { data: demoSwipe } = await supabase
        .from('swipes')
        .select('direction')
        .eq('swiper_id', demoUser.id)
        .eq('swiped_id', cannedUser.id)
        .single();
        
      // Check if canned swiped on demo user
      const { data: cannedSwipeOnDemo } = await supabase
        .from('swipes')
        .select('direction')
        .eq('swiper_id', cannedUser.id)
        .eq('swiped_id', demoUser.id)
        .single();
        
      console.log('  -', username + ':', 
        'Demo→Canned:', demoSwipe?.direction || 'none',
        '| Canned→Demo:', cannedSwipeOnDemo?.direction || 'none'
      );
    }
  }
  
  // Check Precious specifically  
  console.log('\n💎 PRECIOUS STATUS:');
  const { data: precious } = await supabase
    .from('users')
    .select('id, username')
    .eq('username', 'Preciou70331026')
    .single();
    
  if (precious) {
    const { data: preciousMatch } = await supabase
      .from('matches')
      .select('*')
      .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${precious.id}),and(user1_id.eq.${precious.id},user2_id.eq.${cannedUser.id})`)
      .single();
      
    console.log('  - Match with Precious exists:', !!preciousMatch);
    if (preciousMatch) {
      console.log('    Match ID:', preciousMatch.id, '| Matched at:', preciousMatch.matched_at);
    }
    
    // Check swipes between you and precious
    const { data: preciousSwipes } = await supabase
      .from('swipes')
      .select('swiper_id, swiped_id, direction')
      .or(`and(swiper_id.eq.${cannedUser.id},swiped_id.eq.${precious.id}),and(swiper_id.eq.${precious.id},swiped_id.eq.${cannedUser.id})`);
      
    console.log('  - Swipes between you and Precious:');
    preciousSwipes?.forEach(swipe => {
      const isFromCanned = swipe.swiper_id === cannedUser.id;
      console.log('    -', isFromCanned ? 'Canned→Precious:' : 'Precious→Canned:', swipe.direction);
    });
  }
}

diagnoseMatchingIssues();