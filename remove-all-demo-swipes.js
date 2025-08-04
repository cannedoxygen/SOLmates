const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function removeAllDemoSwipes() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  // Get demo user IDs
  const { data: users } = await supabase
    .from('users')
    .select('id, username')
    .in('username', ['mike_s', 'mert_helius', 'toly']);
  
  console.log('Users found:');
  console.log('Canned:', cannedUser?.id);
  users?.forEach(user => console.log('-', user.username, user.id));
  
  if (!cannedUser || !users || users.length === 0) {
    console.log('❌ Could not find required users');
    return;
  }
  
  let deletedCount = 0;
  
  for (const user of users) {
    // Delete swipes FROM demo users TO canned (so they can swipe on you again)
    const { error } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', user.id)
      .eq('swiped_id', cannedUser.id);
      
    if (!error) {
      console.log('✅ Deleted', user.username + 's swipe on you - they can swipe on you again');
      deletedCount++;
    } else {
      console.log('❌ Error deleting', user.username + 's swipe:', error.message);
    }
  }
  
  console.log('🎯 Deleted', deletedCount, 'swipes from demo users. They can now swipe on you again!');
}

removeAllDemoSwipes();