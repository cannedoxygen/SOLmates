const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function deleteAllCannedMatches() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  console.log('Canned user:', cannedUser?.id);
  
  if (!cannedUser) {
    console.log('❌ Could not find canned user');
    return;
  }
  
  // Delete all matches involving canned
  const { error: matchError, count: matchCount } = await supabase
    .from('matches')
    .delete({ count: 'exact' })
    .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
  if (!matchError) {
    console.log('✅ Deleted', matchCount, 'matches');
  } else {
    console.log('❌ Error deleting matches:', matchError.message);
  }
  
  // Delete all chats involving canned
  const { error: chatError, count: chatCount } = await supabase
    .from('chats')
    .delete({ count: 'exact' })
    .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
  if (!chatError) {
    console.log('✅ Deleted', chatCount, 'chats');
  } else {
    console.log('❌ Error deleting chats:', chatError.message);
  }
  
  // Delete all swipes FROM canned (so they reappear in discover)
  const { error: swipeError, count: swipeCount } = await supabase
    .from('swipes')
    .delete({ count: 'exact' })
    .eq('swiper_id', cannedUser.id);
    
  if (!swipeError) {
    console.log('✅ Deleted', swipeCount, 'swipes from canned');
  } else {
    console.log('❌ Error deleting swipes:', swipeError.message);
  }
  
  console.log('🎯 Reset complete! All demo users should now reappear in discover.');
}

deleteAllCannedMatches();