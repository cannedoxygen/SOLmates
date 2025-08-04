const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function checkSwipeCount() {
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
  
  const today = new Date().toISOString().split('T')[0];
  
  // Count today's swipes
  const { count: todaySwipes } = await supabase
    .from('swipes')
    .select('*', { count: 'exact' })
    .eq('swiper_id', cannedUser.id)
    .gte('created_at', today);
    
  // Calculate remaining (same logic as the app)
  const remainingSwipes = Math.max(0, 20 - (todaySwipes || 0));
  
  console.log(`📊 Swipe Status:`);
  console.log(`Today's swipes used: ${todaySwipes || 0}`);
  console.log(`Swipes remaining: ${remainingSwipes}/20`);
  
  if (remainingSwipes === 20) {
    console.log('💰 You have a full tank of swipes!');
  } else if (remainingSwipes > 0) {
    console.log(`✅ You can still swipe ${remainingSwipes} more times today`);
  } else {
    console.log('❌ You are out of swipes for today');
  }
}

checkSwipeCount();