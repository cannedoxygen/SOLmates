const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function cleanAnalyticsSwipes() {
  console.log('🧹 Cleaning up analytics swipe events...');
  
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
  
  console.log('🔍 Canned user:', cannedUser.privy_user_id);
  
  const today = new Date().toISOString().split('T')[0];
  
  // Get current analytics events
  const { data: analyticsEvents } = await supabase
    .from('analytics_events')
    .select('id, created_at')
    .eq('user_id', cannedUser.privy_user_id)
    .eq('event_type', 'swipe')
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  // Get current swipes table count
  const { data: swipesTableRows } = await supabase
    .from('swipes')
    .select('id')
    .eq('swiper_id', cannedUser.id)
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  const analyticsCount = analyticsEvents?.length || 0;
  const swipesTableCount = swipesTableRows?.length || 0;
  
  console.log('📊 Current counts:');
  console.log('  Analytics events:', analyticsCount);
  console.log('  Swipes table:', swipesTableCount);
  
  if (analyticsCount > 0) {
    console.log('🗑️  Deleting ALL analytics swipe events for today...');
    
    const { error } = await supabase
      .from('analytics_events')
      .delete()
      .eq('user_id', cannedUser.privy_user_id)
      .eq('event_type', 'swipe')
      .gte('created_at', `${today}T00:00:00.000Z`)
      .lt('created_at', `${today}T23:59:59.999Z`);
      
    if (!error) {
      console.log('✅ Deleted', analyticsCount, 'analytics swipe events');
    } else {
      console.log('❌ Error deleting analytics events:', error.message);
    }
  }
  
  // Verify final counts
  const { data: finalAnalytics } = await supabase
    .from('analytics_events')
    .select('id')
    .eq('user_id', cannedUser.privy_user_id)
    .eq('event_type', 'swipe')
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  console.log('\n📊 Final counts:');
  console.log('  Analytics events:', finalAnalytics?.length || 0);
  console.log('  Swipes table:', swipesTableCount);
  console.log('✨ You now have 20 fresh swipes for demo!');
}

cleanAnalyticsSwipes();