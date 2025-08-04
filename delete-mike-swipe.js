const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function deleteSwipeOnMike() {
  // Get your user ID and Mike's user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  const { data: mikeUser } = await supabase
    .from('users')
    .select('id')
    .eq('username', 'mike_s')
    .single();
  
  if (cannedUser && mikeUser) {
    console.log(`Deleting swipe: ${cannedUser.id} -> ${mikeUser.id}`);
    
    const { error } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', mikeUser.id);
      
    if (!error) {
      console.log('✅ Deleted swipe on Mike - he should reappear in your stack');
    } else {
      console.log('Error:', error);
    }
  }
}

deleteSwipeOnMike();