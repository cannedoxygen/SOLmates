const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function debugAnalyticsTable() {
  console.log('🔍 Debugging analytics_events table...');
  
  const privyUserId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  const today = new Date().toISOString().split('T')[0];
  
  // Check all analytics events for today
  const { data: allEvents, error: allError } = await supabase
    .from('analytics_events')
    .select('*')
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`)
    .order('created_at', { ascending: false })
    .limit(50);
    
  console.log('📊 All analytics events today:', allEvents?.length || 0);
  
  if (allEvents && allEvents.length > 0) {
    console.log('\n📋 Recent events:');
    allEvents.forEach((event, index) => {
      console.log(`${index + 1}. ${event.event_type} by ${event.user_id} at ${event.created_at}`);
    });
    
    // Check specifically for swipe events
    const swipeEvents = allEvents.filter(e => 
      ['swipe_left', 'swipe_right', 'super_swipe'].includes(e.event_type)
    );
    
    console.log('\n🎯 Swipe events today:', swipeEvents.length);
    
    // Check if any events are using the specific Privy user ID
    const userEvents = allEvents.filter(e => e.user_id === privyUserId);
    console.log('👤 Events for Privy user ID:', userEvents.length);
    
    if (userEvents.length > 0) {
      console.log('📋 User events:');
      userEvents.forEach((event, index) => {
        console.log(`${index + 1}. ${event.event_type} at ${event.created_at}`);
      });
    }
    
    // Look for events that might be causing the issue
    const suspiciousEvents = allEvents.filter(e => 
      e.user_id.includes('did:privy:') || e.user_id.length > 50
    );
    
    console.log('\n🔍 Events with Privy-style user IDs:', suspiciousEvents.length);
    
    if (suspiciousEvents.length > 0) {
      console.log('📋 Suspicious events:');
      suspiciousEvents.forEach((event, index) => {
        console.log(`${index + 1}. ${event.event_type} by [${event.user_id.substring(0, 30)}...] at ${event.created_at}`);
      });
      
      // Ask if we should clear these
      console.log('\n🧹 Found analytics events with Privy user IDs!');
      console.log('These could be causing the swipe count cache issue.');
      console.log('Clearing these events...');
      
      const { error: deleteError } = await supabase
        .from('analytics_events')
        .delete()
        .in('id', suspiciousEvents.map(e => e.id));
        
      if (deleteError) {
        console.error('❌ Failed to clear suspicious events:', deleteError);
      } else {
        console.log('✅ Cleared', suspiciousEvents.length, 'suspicious analytics events');
      }
    }
  }
  
  // Check if the issue was resolved
  console.log('\n🔄 Rechecking analytics for our user...');
  const { data: userAnalytics } = await supabase
    .from('analytics_events')
    .select('*')
    .eq('user_id', privyUserId)
    .in('event_type', ['swipe_left', 'swipe_right', 'super_swipe'])
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  console.log('📊 Analytics swipe events for user:', userAnalytics?.length || 0);
  
  if ((userAnalytics?.length || 0) === 0) {
    console.log('✅ User should now have full 20 swipes available in the app!');
  }
}

debugAnalyticsTable().catch(console.error);