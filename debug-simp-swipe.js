// Debug SIMP swipe issue
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugSimpSwipe() {
  try {
    console.log('🔍 Debugging SIMP swipe issue...');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    console.log('✅ Found canned oxygen user:', cannedUser);
    
    // Get SIMP user
    const { data: simpUser } = await supabase
      .from('users')
      .select('id, username, is_active, profile_completed')
      .eq('username', 'SIMP')
      .single();
    
    if (!simpUser) {
      console.error('❌ SIMP user not found');
      return;
    }
    
    console.log('✅ Found SIMP user:', simpUser);
    
    // Check if there's already a swipe from canned to SIMP
    const { data: existingSwipe } = await supabase
      .from('swipes')
      .select('*')
      .eq('swiper_id', cannedUser.id)
      .eq('swiped_id', simpUser.id)
      .single();
    
    if (existingSwipe) {
      console.log('⚠️  Existing swipe found:', existingSwipe);
    } else {
      console.log('✅ No existing swipe found');
    }
    
    // Check if SIMP has swiped on canned oxygen
    const { data: reciprocalSwipe } = await supabase
      .from('swipes')
      .select('*')
      .eq('swiper_id', simpUser.id)
      .eq('swiped_id', cannedUser.id)
      .single();
    
    if (reciprocalSwipe) {
      console.log('💕 SIMP has already swiped on canned oxygen:', reciprocalSwipe);
    } else {
      console.log('❌ SIMP has not swiped on canned oxygen yet');
    }
    
    // Try to manually create the swipe to see what error occurs
    console.log('\n🧪 Testing swipe creation...');
    const { data: testSwipe, error: swipeError } = await supabase
      .from('swipes')
      .insert([{
        swiper_id: cannedUser.id,
        swiped_id: simpUser.id,
        direction: 'right',
        created_at: new Date().toISOString(),
      }])
      .select('*');
    
    if (swipeError) {
      console.error('❌ Swipe creation failed:', swipeError);
    } else {
      console.log('✅ Test swipe created successfully:', testSwipe);
      
      // Clean up test swipe
      await supabase
        .from('swipes')
        .delete()
        .eq('id', testSwipe[0].id);
      console.log('🧹 Cleaned up test swipe');
    }
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugSimpSwipe();