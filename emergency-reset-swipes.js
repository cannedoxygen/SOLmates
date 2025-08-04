const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

// Import PremiumService functionality
class PremiumService {
  static async emergencyResetSwipes(userId, date) {
    try {
      const targetDate = date || new Date().toISOString().split('T')[0];
      console.log('🚨 Emergency reset for user:', userId, 'date:', targetDate);
      
      // Clear analytics events
      const { error: analyticsError } = await supabase
        .from('analytics_events')
        .delete()
        .eq('user_id', userId)
        .in('event_type', ['swipe_left', 'swipe_right', 'super_swipe'])
        .gte('created_at', `${targetDate}T00:00:00.000Z`)
        .lt('created_at', `${targetDate}T23:59:59.999Z`);

      if (analyticsError) throw analyticsError;

      // Clear swipes table  
      const { error: swipesError } = await supabase
        .from('swipes')
        .delete()
        .eq('swiper_id', userId)
        .gte('created_at', `${targetDate}T00:00:00.000Z`)
        .lt('created_at', `${targetDate}T23:59:59.999Z`);

      if (swipesError) throw swipesError;

      console.log('✅ Emergency reset complete - user has fresh 20 swipes');
    } catch (error) {
      console.error('❌ Failed to perform emergency reset:', error);
      throw error;
    }
  }

  static async getUserLimits(userId) {
    try {
      const today = new Date().toISOString().split('T')[0];
      
      // Get today's usage from analytics (primary count)
      const { data: todayEvents } = await supabase
        .from('analytics_events')
        .select('event_type')
        .eq('user_id', userId)
        .gte('created_at', `${today}T00:00:00.000Z`)
        .lt('created_at', `${today}T23:59:59.999Z`);

      const analyticsSwipes = todayEvents?.filter(e => 
        ['swipe_left', 'swipe_right'].includes(e.event_type)
      ).length || 0;

      // Get today's usage from swipes table (backup validation)
      const { data: todaySwipesData } = await supabase
        .from('swipes')
        .select('direction')
        .eq('swiper_id', userId)
        .gte('created_at', `${today}T00:00:00.000Z`)
        .lt('created_at', `${today}T23:59:59.999Z`);

      const swipesTableSwipes = todaySwipesData?.filter(s => 
        ['left', 'right'].includes(s.direction)
      ).length || 0;

      const todaySwipes = Math.max(analyticsSwipes, swipesTableSwipes);
      const remaining = Math.max(0, 20 - todaySwipes);

      return {
        analyticsSwipes,
        swipesTableSwipes,
        todaySwipes,
        daily_swipes_remaining: remaining
      };
    } catch (error) {
      console.error('❌ Failed to get user limits:', error);
      return { daily_swipes_remaining: 20 };
    }
  }
}

async function main() {
  const privyUserId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  
  console.log('🔍 Checking current swipe status...');
  const beforeLimits = await PremiumService.getUserLimits(privyUserId);
  console.log('Before reset:', beforeLimits);

  if (beforeLimits.daily_swipes_remaining < 20) {
    console.log('🚨 Performing emergency reset...');
    await PremiumService.emergencyResetSwipes(privyUserId);
    
    console.log('🔍 Checking status after reset...');
    const afterLimits = await PremiumService.getUserLimits(privyUserId);
    console.log('After reset:', afterLimits);
  } else {
    console.log('✅ Swipes are already at full capacity');
  }
}

main();