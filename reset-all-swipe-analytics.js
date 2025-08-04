const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function resetAllSwipeAnalytics() {
  console.log('🗑️  Resetting ALL your swipe analytics...');
  
  // First check how many events exist
  const { data: existingEvents } = await supabase
    .from('analytics_events')
    .select('id, created_at')
    .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
    .eq('event_type', 'swipe');
    
  console.log('📊 Found', existingEvents?.length || 0, 'existing swipe events');
  
  if (existingEvents && existingEvents.length > 0) {
    // Delete ALL swipe analytics events for your user
    const { data: deletedEvents, error } = await supabase
      .from('analytics_events')
      .delete()
      .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .eq('event_type', 'swipe')
      .select();
      
    if (error) {
      console.log('❌ Error deleting analytics events:', error.message);
    } else {
      console.log('✅ Deleted', deletedEvents?.length || 0, 'swipe analytics events');
    }
  }
  
  // Verify they're gone
  const { data: remainingEvents } = await supabase
    .from('analytics_events')
    .select('id')
    .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
    .eq('event_type', 'swipe');
    
  console.log('📊 Remaining swipe events:', remainingEvents?.length || 0);
  
  if ((remainingEvents?.length || 0) === 0) {
    console.log('✅ SUCCESS: All swipe analytics cleared!');
    console.log('🎯 You should now have 20/20 swipes available');
  } else {
    console.log('⚠️  Some events might still remain');
  }
}

resetAllSwipeAnalytics();