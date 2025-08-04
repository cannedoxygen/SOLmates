const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function resetSwipeTimer() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  if (!cannedUser) {
    console.log('❌ Could not find your user');
    return;
  }
  
  console.log('Found user:', cannedUser.id);
  
  // Get today's date
  const today = new Date().toISOString().split('T')[0];
  console.log('Today is:', today);
  
  // Count today's swipes
  const { data: todaySwipes, count } = await supabase
    .from('swipes')
    .select('*', { count: 'exact' })
    .eq('swiper_id', cannedUser.id)
    .gte('created_at', today);
    
  console.log(`You have ${count} swipes today`);
  
  // Move all today's swipes to yesterday
  const yesterday = new Date();
  yesterday.setDate(yesterday.getDate() - 1);
  const yesterdayISO = yesterday.toISOString();
  
  const { error } = await supabase
    .from('swipes')
    .update({ created_at: yesterdayISO })
    .eq('swiper_id', cannedUser.id)
    .gte('created_at', today);
    
  if (!error) {
    console.log(`✅ Moved ${count} swipes to yesterday`);
    console.log('💰 You now have 20 fresh swipes!');
  } else {
    console.log('Error:', error);
  }
}

resetSwipeTimer();