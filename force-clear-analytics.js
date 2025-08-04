const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function forceClearAnalytics() {
  console.log('🔍 Force clearing ALL analytics for canned user...');
  
  // Check for ALL analytics events (not just today)
  const { data: allEvents } = await supabase
    .from('analytics_events')
    .select('id, event_type, created_at')
    .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa');
    
  console.log('📊 Found', allEvents?.length || 0, 'total analytics events');
  
  if (allEvents && allEvents.length > 0) {
    console.log('Event types:', [...new Set(allEvents.map(e => e.event_type))]);
    
    // Delete ALL analytics events for this user
    const { error } = await supabase
      .from('analytics_events')
      .delete()
      .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa');
      
    if (error) {
      console.log('❌ Error:', error.message);
    } else {
      console.log('✅ Deleted all analytics events');
    }
  }
  
  // Also check with the internal Supabase user ID
  const { data: allEventsById } = await supabase
    .from('analytics_events')
    .select('id, event_type, created_at')
    .eq('user_id', '9b56178a-42c1-42c9-bb7a-495cd31339c1');
    
  console.log('📊 Found', allEventsById?.length || 0, 'events by Supabase ID');
  
  if (allEventsById && allEventsById.length > 0) {
    const { error } = await supabase
      .from('analytics_events')
      .delete()
      .eq('user_id', '9b56178a-42c1-42c9-bb7a-495cd31339c1');
      
    if (error) {
      console.log('❌ Error:', error.message);
    } else {
      console.log('✅ Deleted events by Supabase ID');
    }
  }
  
  console.log('✨ Force clear complete!');
}

forceClearAnalytics();