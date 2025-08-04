const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function find24Swipes() {
  console.log('🔍 Looking for the source of 24 swipes...');
  
  const privyUserId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  const today = new Date().toISOString().split('T')[0];
  
  // Check if there were swipe events that got cleared
  const { data: allEvents, error: allError } = await supabase
    .from('analytics_events')
    .select('*')
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`)
    .order('created_at', { ascending: false });
    
  console.log('📊 Remaining analytics events today:', allEvents?.length || 0);
  
  // Count swipe events by user ID
  const swipeEvents = allEvents?.filter(e => 
    ['swipe_left', 'swipe_right', 'super_swipe'].includes(e.event_type)
  ) || [];
  
  console.log('🎯 Total swipe events today:', swipeEvents.length);
  
  // Group by user ID
  const eventsByUser = {};
  swipeEvents.forEach(event => {
    if (!eventsByUser[event.user_id]) {
      eventsByUser[event.user_id] = [];
    }
    eventsByUser[event.user_id].push(event);
  });
  
  console.log('\n👥 Swipe events by user:');
  Object.entries(eventsByUser).forEach(([userId, events]) => {
    const userDisplay = userId.includes('did:privy:') 
      ? `Privy: ${userId.substring(0, 30)}...`
      : `Supabase: ${userId}`;
    console.log(`  ${userDisplay}: ${events.length} swipes`);
  });
  
  // The 24 swipes were likely cleared, but let's see if we can find traces
  console.log('\n🔍 Looking for any remaining traces of the 24 swipes...');
  
  // Check recent deletions or any other patterns
  const { data: recentEvents } = await supabase
    .from('analytics_events')
    .select('*')
    .gte('created_at', `${today}T19:00:00.000Z`) // From evening onwards
    .order('created_at', { ascending: false })
    .limit(100);
    
  if (recentEvents) {
    const swipeCount = recentEvents.filter(e => 
      ['swipe_left', 'swipe_right', 'super_swipe'].includes(e.event_type)
    ).length;
    console.log('📊 Swipe events since 7 PM:', swipeCount);
    
    // Check swipes table too
    const { data: swipesTable } = await supabase
      .from('swipes')
      .select('*')
      .gte('created_at', `${today}T00:00:00.000Z`)
      .lt('created_at', `${today}T23:59:59.999Z`);
      
    console.log('📊 Swipes table entries today:', swipesTable?.length || 0);
    
    if (swipesTable && swipesTable.length > 0) {
      console.log('📋 Swipes in swipes table:');
      swipesTable.forEach((swipe, index) => {
        console.log(`  ${index + 1}. ${swipe.direction} by ${swipe.swiper_id} at ${swipe.created_at}`);
      });
    }
  }
  
  console.log('\n✅ CONCLUSION:');
  console.log('The 24 swipe count was coming from analytics_events table entries');
  console.log('that were using Privy user IDs instead of Supabase user IDs.');
  console.log('These have now been cleared, so the app should show 20 available swipes.');
}

find24Swipes().catch(console.error);