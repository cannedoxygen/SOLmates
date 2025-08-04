const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function deleteCannedSwipesOnDemoUsers() {
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
  
  // Get demo users
  const { data: demoUsers } = await supabase
    .from('users')
    .select('id, username')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
  
  console.log('🎭 Found demo users:', demoUsers?.map(u => u.username));
  
  // Delete canned's swipes on each demo user
  for (const demo of demoUsers || []) {
    const { data: existingSwipe } = await supabase
      .from('swipes')
      .select('id, direction')
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', demo.id)
      .single();
      
    if (existingSwipe) {
      const { error } = await supabase
        .from('swipes')
        .delete()
        .eq('swiper_id', cannedUser.id)
        .eq('swiped_id', demo.id);
        
      if (!error) {
        console.log('✅ Deleted your', existingSwipe.direction, 'swipe on', demo.username);
      } else {
        console.log('❌ Error deleting swipe on', demo.username, ':', error.message);
      }
    } else {
      console.log('ℹ️  No existing swipe found on', demo.username);
    }
  }
  
  console.log('\n🎯 Status after cleanup:');
  
  // Show current status
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
      
    console.log('  -', demo.username + ':', 
      'Demo→Canned:', demoSwipe?.direction || 'none',
      '| Canned→Demo:', cannedSwipe?.direction || 'none'
    );
  }
  
  console.log('\n✨ Ready for demo! When you swipe right on Toly, you should get a match since he already likes you.');
}

deleteCannedSwipesOnDemoUsers();