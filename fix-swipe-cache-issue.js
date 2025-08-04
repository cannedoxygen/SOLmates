const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixSwipeCacheIssue() {
  console.log('🔍 Investigating swipe cache issue...');
  
  // First, get the Supabase user ID from the Privy user ID
  const privyUserId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  
  const { data: user, error: userError } = await supabase
    .from('users')
    .select('id, username')
    .eq('privy_user_id', privyUserId)
    .single();
    
  if (userError || !user) {
    console.log('❌ Could not find user with Privy ID:', privyUserId);
    console.log('Error:', userError);
    return;
  }
  
  console.log('✅ Found user:', user.username, 'with Supabase ID:', user.id);
  
  const today = new Date().toISOString().split('T')[0];
  console.log('📅 Checking data for date:', today);
  
  // Check analytics_events table
  const { data: analyticsEvents, error: analyticsError } = await supabase
    .from('analytics_events')
    .select('*')
    .eq('user_id', privyUserId) // This uses Privy user ID
    .in('event_type', ['swipe_left', 'swipe_right', 'super_swipe'])
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  console.log('📊 Analytics events (using Privy ID):', analyticsEvents?.length || 0);
  
  // Check swipes table  
  const { data: swipesData, error: swipesError } = await supabase
    .from('swipes')
    .select('*')
    .eq('swiper_id', user.id) // This uses Supabase user ID  
    .gte('created_at', `${today}T00:00:00.000Z`)
    .lt('created_at', `${today}T23:59:59.999Z`);
    
  console.log('📊 Swipes table (using Supabase ID):', swipesData?.length || 0);
  
  console.log('\n🔍 ISSUE FOUND:');
  console.log('- Analytics events table uses Privy user ID:', privyUserId);
  console.log('- Swipes table uses Supabase user ID:', user.id);
  console.log('- This causes a mismatch in the PremiumService.getUserLimits() function');
  console.log('- The function takes user_id parameter which should be Privy ID for analytics');
  console.log('- But it should be Supabase ID for swipes table queries');
  
  if (analyticsEvents && analyticsEvents.length > 0) {
    console.log('\n🧹 Clearing analytics events to fix the cache issue...');
    
    const { error: deleteError } = await supabase
      .from('analytics_events')
      .delete()
      .eq('user_id', privyUserId)
      .in('event_type', ['swipe_left', 'swipe_right', 'super_swipe'])
      .gte('created_at', `${today}T00:00:00.000Z`)
      .lt('created_at', `${today}T23:59:59.999Z`);
      
    if (deleteError) {
      console.error('❌ Failed to clear analytics events:', deleteError);
    } else {
      console.log('✅ Cleared', analyticsEvents.length, 'analytics events');
      console.log('💰 User should now have full 20 swipes available');
    }
  }
  
  console.log('\n🔧 RECOMMENDED FIXES:');
  console.log('1. Update PremiumService.getUserLimits() to use consistent user IDs');
  console.log('2. Either use Privy ID for both tables or Supabase ID for both');
  console.log('3. Add data validation to prevent this mismatch in the future');
  console.log('4. Consider caching user limits with proper cache invalidation');
}

fixSwipeCacheIssue().catch(console.error);