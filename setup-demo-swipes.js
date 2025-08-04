// Setup demo swipes - make some users swipe right on canned oxygen
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function setupDemoSwipes() {
  try {
    console.log('🎭 Setting up demo swipes...');
    
    // Get canned oxygen user
    const { data: cannedUser, error: userError } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    if (userError || !cannedUser) {
      console.error('❌ Could not find canned oxygen user:', userError);
      return;
    }
    
    console.log('✅ Found canned oxygen user:', cannedUser);
    
    // Get some random users to swipe right on canned oxygen
    const { data: otherUsers, error: usersError } = await supabase
      .from('users')
      .select('id, username')
      .neq('id', cannedUser.id)
      .eq('is_active', true)
      .limit(5);
    
    if (usersError || !otherUsers) {
      console.error('❌ Could not find other users:', usersError);
      return;
    }
    
    console.log('👥 Found other users:', otherUsers.map(u => u.username));
    
    // Make these users swipe right on canned oxygen
    for (const user of otherUsers) {
      console.log(`\n💕 Making ${user.username} swipe right on Canned Oxygen...`);
      
      // Check if swipe already exists
      const { data: existingSwipe } = await supabase
        .from('swipes')
        .select('id')
        .eq('swiper_id', user.id)
        .eq('swiped_id', cannedUser.id)
        .single();
      
      if (existingSwipe) {
        console.log(`  ⚠️  ${user.username} already swiped on Canned Oxygen`);
        continue;
      }
      
      // Create the swipe
      const { data: newSwipe, error: swipeError } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: user.id,
          swiped_id: cannedUser.id,
          direction: 'right',
          created_at: new Date().toISOString(),
        }])
        .select('*');
      
      if (swipeError) {
        console.error(`  ❌ Failed to create swipe:`, swipeError);
      } else {
        console.log(`  ✅ ${user.username} now likes Canned Oxygen!`);
      }
    }
    
    console.log('\n🎉 Demo setup complete!');
    console.log('📱 When Canned Oxygen swipes right on any of these users, instant match will happen:');
    otherUsers.forEach(u => console.log(`  - ${u.username}`));
    
  } catch (error) {
    console.error('❌ Error setting up demo swipes:', error);
  }
}

setupDemoSwipes();