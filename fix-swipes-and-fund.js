const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixSwipesAndFund() {
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
  
  // Delete your last 2 swipes
  const { data: recentSwipes } = await supabase
    .from('swipes')
    .select('id, swiped_id, direction, created_at')
    .eq('swiper_id', cannedUser.id)
    .order('created_at', { ascending: false })
    .limit(2);
  
  if (recentSwipes && recentSwipes.length > 0) {
    console.log('\\nDeleting last swipes:');
    for (const swipe of recentSwipes) {
      const { error } = await supabase
        .from('swipes')
        .delete()
        .eq('id', swipe.id);
        
      if (!error) {
        console.log(`✅ Deleted swipe: ${swipe.direction} on ${swipe.swiped_id}`);
      }
    }
  }
  
  // Fund 20 swipes by updating daily_swipes_used
  const { error: updateError } = await supabase
    .from('users')
    .update({ 
      daily_swipes_used: 0,  // Reset to 0 (gives you full 20 swipes)
      last_swipe_reset: new Date().toISOString()
    })
    .eq('id', cannedUser.id);
    
  if (!updateError) {
    console.log('\\n💰 Funded you with 20 fresh swipes!');
    console.log('✅ Reset daily_swipes_used to 0');
  } else {
    console.log('Error funding swipes:', updateError);
  }
}

fixSwipesAndFund();