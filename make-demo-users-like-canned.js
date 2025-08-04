const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function makeDemoUsersSwipeRight() {
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  const { data: demoUsers } = await supabase
    .from('users')
    .select('id, username')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
  
  console.log('Making demo users swipe right on canned...');
  
  for (const demo of demoUsers) {
    // Check if they already swiped
    const { data: existingSwipe } = await supabase
      .from('swipes')
      .select('id')
      .eq('swiper_id', demo.id)
      .eq('swiped_id', cannedUser.id)
      .single();
      
    if (!existingSwipe) {
      const { error } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: demo.id,
          swiped_id: cannedUser.id,
          direction: 'right',
          created_at: new Date().toISOString()
        }]);
        
      if (!error) {
        console.log('✅', demo.username, 'now likes you!');
      } else {
        console.log('❌ Error with', demo.username, ':', error.message);
      }
    } else {
      console.log('⚠️', demo.username, 'already swiped on you');
    }
  }
  
  console.log('🎯 Now swipe right on Toly to get a match!');
  console.log('🎯 You need to swipe right on Mike and Mert again since you swiped left before');
}

makeDemoUsersSwipeRight();