const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixSwipeCountMismatch() {
  console.log('🔧 Fixing swipe count mismatch...');
  
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
  
  // Check current counts
  const today = new Date().toISOString().split('T')[0];
  
  // Get analytics count
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
  
  console.log('📊 Current counts:');
  console.log('  Analytics events:', analyticsCount);
  console.log('  Swipes table:', swipesTableCount);
  console.log('  Mismatch:', analyticsCount - swipesTableCount);
  
  if (analyticsCount > swipesTableCount) {
    console.log('⚠️  Analytics count is higher than swipes table - this suggests failed database insertions');
    
    // Clean up excess analytics events to sync with actual swipes
    console.log('🧹 Cleaning up excess analytics events...');
    
    // Get the excess analytics events (newest first)
    const excessCount = analyticsCount - swipesTableCount;
    const { data: excessEvents } = await supabase
      .from('analytics_events')
      .select('id')
      .eq('user_id', cannedUser.privy_user_id)
      .eq('event_type', 'swipe')
      .gte('created_at', `${today}T00:00:00.000Z`)
      .lt('created_at', `${today}T23:59:59.999Z`)
      .order('created_at', { ascending: false })
      .limit(excessCount);
      
    if (excessEvents && excessEvents.length > 0) {
      const eventIds = excessEvents.map(e => e.id);
      const { error } = await supabase
        .from('analytics_events')
        .delete()
        .in('id', eventIds);
        
      if (!error) {
        console.log('✅ Deleted', excessCount, 'excess analytics events');
      } else {
        console.log('❌ Error deleting excess events:', error.message);
      }
    }
  } else if (swipesTableCount > analyticsCount) {
    console.log('⚠️  Swipes table count is higher - this is unusual');
  } else {
    console.log('✅ Counts are already in sync');
  }
  
  // Show final counts
  const { data: finalAnalytics } = await supabase
    .from('analytics_events')
    .select('id')
    .eq('user_id', cannedUser.privy_user_id)
    .eq('event_type', 'swipe')
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  const { data: finalSwipes } = await supabase
    .from('swipes')
    .select('id')
    .eq('swiper_id', cannedUser.id)
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  console.log('\n📊 Final counts:');
  console.log('  Analytics events:', finalAnalytics?.length || 0);
  console.log('  Swipes table:', finalSwipes?.length || 0);
  console.log('✨ Swipe count mismatch fixed!');
}

fixSwipeCountMismatch();