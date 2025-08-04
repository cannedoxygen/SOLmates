const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function checkCurrentSwipes() {
  // Get canned user
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id, privy_user_id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  if (!cannedUser) {
    console.log('❌ Could not find canned user');
    return;
  }
  
  console.log('🔍 Checking swipes for:', cannedUser.privy_user_id);
  
  const today = new Date().toISOString().split('T')[0];
  
  // Get analytics count (what the app uses for limits)
  const { data: analyticsEvents } = await supabase
    .from('analytics_events')
    .select('id')
    .eq('user_id', cannedUser.privy_user_id)
    .eq('event_type', 'swipe')
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  // Get swipes table count
  const { data: swipesTableRows } = await supabase
    .from('swipes')
    .select('id')
    .eq('swiper_id', cannedUser.id)
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  const analyticsCount = analyticsEvents?.length || 0;
  const swipesTableCount = swipesTableRows?.length || 0;
  
  console.log('📊 Today\'s swipe counts:');
  console.log('  Analytics events (used for limits):', analyticsCount);
  console.log('  Swipes table (database records):', swipesTableCount);
  
  const dailyLimit = 20;
  const remaining = Math.max(0, dailyLimit - analyticsCount);
  
  console.log('\n🎯 Swipe limits:');
  console.log('  Daily limit:', dailyLimit);
  console.log('  Used today:', analyticsCount);
  console.log('  Remaining:', remaining);
  
  if (remaining > 0) {
    console.log('✅ You have', remaining, 'swipes left today!');
  } else {
    console.log('❌ You\'ve used all your swipes for today');
  }
}

checkCurrentSwipes();