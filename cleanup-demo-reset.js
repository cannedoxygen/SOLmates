const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function cleanupDemoReset() {
  // Get canned user
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  if (!cannedUser) {
    console.log('❌ Could not find canned user');
    return;
  }
  
  console.log('🔍 Canned user ID:', cannedUser.id);
  
  // Get Toly user
  const { data: tolyUser } = await supabase
    .from('users')
    .select('id, username')
    .eq('username', 'toly')
    .single();
    
  if (!tolyUser) {
    console.log('❌ Could not find Toly user');
    return;
  }
  
  console.log('🎭 Toly user ID:', tolyUser.id);
  
  // 1. Delete Toly match
  console.log('\n🗑️  Deleting Toly match...');
  const { data: tolyMatch, error: matchDeleteError } = await supabase
    .from('matches')
    .delete()
    .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${tolyUser.id}),and(user1_id.eq.${tolyUser.id},user2_id.eq.${cannedUser.id})`)
    .select();
    
  if (matchDeleteError) {
    console.log('❌ Error deleting Toly match:', matchDeleteError.message);
  } else if (tolyMatch && tolyMatch.length > 0) {
    console.log('✅ Deleted Toly match:', tolyMatch[0].id);
  } else {
    console.log('ℹ️  No Toly match found to delete');
  }
  
  // 2. Delete all canned's swipes on demo users
  console.log('\n🗑️  Deleting canned swipes on demo users...');
  const { data: demoUsers } = await supabase
    .from('users')
    .select('id, username')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
  
  for (const demo of demoUsers || []) {
    const { data: deletedSwipes, error: swipeDeleteError } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', demo.id)
      .select();
      
    if (swipeDeleteError) {
      console.log('❌ Error deleting swipe on', demo.username, ':', swipeDeleteError.message);
    } else if (deletedSwipes && deletedSwipes.length > 0) {
      console.log('✅ Deleted your swipe on', demo.username);
    } else {
      console.log('ℹ️  No swipe found on', demo.username);
    }
  }
  
  // 3. Show final status
  console.log('\n🎯 Final demo status:');
  for (const demo of demoUsers || []) {
    // Check if demo user swiped on canned
    const { data: demoSwipe } = await supabase
      .from('swipes')
      .select('direction')
      .eq('swiper_id', demo.id)
      .eq('swiped_id', cannedUser.id)
      .single();
      
    // Check if canned swiped on demo user (should be none now)
    const { data: cannedSwipe } = await supabase
      .from('swipes')
      .select('direction')
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', demo.id)
      .single();
      
    // Check for matches
    const { data: match } = await supabase
      .from('matches')
      .select('id')
      .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${demo.id}),and(user1_id.eq.${demo.id},user2_id.eq.${cannedUser.id})`)
      .single();
      
    console.log('  -', demo.username + ':', 
      'Demo→Canned:', demoSwipe?.direction || 'none',
      '| Canned→Demo:', cannedSwipe?.direction || 'none',
      '| Match:', match ? 'YES' : 'NO'
    );
  }
  
  console.log('\n✨ Demo reset complete! You can now swipe on demo users for fresh matches.');
}

cleanupDemoReset();