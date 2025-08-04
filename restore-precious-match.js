const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function restorePreciousMatch() {
  console.log('💎 Restoring your Precious match...');
  
  // Get canned user
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  // Get Precious user
  const { data: preciousUser } = await supabase
    .from('users')
    .select('id, username')
    .eq('username', 'Preciou70331026')
    .single();
    
  if (!cannedUser || !preciousUser) {
    console.log('❌ Could not find users');
    return;
  }
  
  console.log('👤 Canned:', cannedUser.id);
  console.log('💎 Precious:', preciousUser.id);
  
  // Create mutual swipes
  console.log('💕 Creating mutual swipes...');
  
  // Precious swipes right on you
  const { error: preciousSwipeError } = await supabase
    .from('swipes')
    .insert([{
      swiper_id: preciousUser.id,
      swiped_id: cannedUser.id,
      direction: 'right',
      created_at: new Date().toISOString()
    }]);
    
  if (preciousSwipeError) {
    console.log('❌ Error creating Precious swipe:', preciousSwipeError.message);
  } else {
    console.log('✅ Precious swiped right on you');
  }
  
  // You swipe right on Precious
  const { error: cannedSwipeError } = await supabase
    .from('swipes')
    .insert([{
      swiper_id: cannedUser.id,
      swiped_id: preciousUser.id,
      direction: 'right',
      created_at: new Date().toISOString()
    }]);
    
  if (cannedSwipeError) {
    console.log('❌ Error creating your swipe:', cannedSwipeError.message);
  } else {
    console.log('✅ You swiped right on Precious');
  }
  
  // Create the match
  console.log('💕 Creating match...');
  const { data: match, error: matchError } = await supabase
    .from('matches')
    .insert([{
      user1_id: preciousUser.id,
      user2_id: cannedUser.id,
      user1_liked: true,
      user2_liked: true,
      matched_at: new Date().toISOString(),
      created_at: new Date().toISOString()
    }])
    .select()
    .single();
    
  if (matchError) {
    console.log('❌ Error creating match:', matchError.message);
  } else {
    console.log('✅ Match created:', match.id);
  }
  
  console.log('💎 Precious match restored! She should appear in your matches tab.');
}

restorePreciousMatch();