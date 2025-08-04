const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function removeMikeMertSwipes() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  // Get Mike and Mert user IDs
  const { data: mikeUser } = await supabase
    .from('users')
    .select('id')
    .eq('username', 'mike_s')
    .single();
    
  const { data: mertUser } = await supabase
    .from('users')
    .select('id')
    .eq('username', 'mert_helius')
    .single();
  
  if (cannedUser && mikeUser) {
    const { error: mikeError } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', mikeUser.id);
      
    if (!mikeError) {
      console.log('✅ Deleted swipe on Mike - he will reappear');
    }
  }
  
  if (cannedUser && mertUser) {
    const { error: mertError } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', mertUser.id);
      
    if (!mertError) {
      console.log('✅ Deleted swipe on Mert - he will reappear');
    }
  }
  
  console.log('🎯 Mike and Mert should now reappear in your discover stack!');
}

removeMikeMertSwipes();