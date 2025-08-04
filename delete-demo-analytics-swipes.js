const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function deleteDemoAnalyticsSwipes() {
  console.log('🗑️  Deleting analytics swipe events for demo users only...');
  
  // Get demo user IDs
  const { data: demoUsers } = await supabase
    .from('users')
    .select('id, username')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
    
  if (!demoUsers || demoUsers.length === 0) {
    console.log('❌ No demo users found');
    return;
  }
  
  const demoUserIds = demoUsers.map(u => u.id);
  console.log('🎭 Demo user IDs:', demoUserIds);
  
  // Delete analytics events where you swiped on demo users
  let totalDeleted = 0;
  
  for (const demoUser of demoUsers) {
    const { data: deletedEvents, error } = await supabase
      .from('analytics_events')
      .delete()
      .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .eq('event_type', 'swipe')
      .eq('event_data->profile_user_id', demoUser.id)
      .select();
      
    if (error) {
      console.log('❌ Error deleting events for', demoUser.username, ':', error.message);
    } else {
      const count = deletedEvents?.length || 0;
      totalDeleted += count;
      if (count > 0) {
        console.log('✅ Deleted', count, 'swipe events for', demoUser.username);
      }
    }
  }
  
  console.log('✅ Total deleted:', totalDeleted, 'demo user swipe events');
  
  // Check remaining swipe count
  const { data: remainingEvents } = await supabase
    .from('analytics_events')
    .select('id')
    .eq('user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
    .eq('event_type', 'swipe');
    
  console.log('📊 Your remaining total swipe events:', remainingEvents?.length || 0);
  console.log('✨ Demo user swipes cleared!');
}

deleteDemoAnalyticsSwipes();