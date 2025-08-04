const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function removeTolyMatch() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  // Get Toly user ID
  const { data: tolyUser } = await supabase
    .from('users')
    .select('id')
    .eq('username', 'toly')
    .single();
  
  console.log('Users found:');
  console.log('Canned:', cannedUser?.id);
  console.log('Toly:', tolyUser?.id);
  
  if (!cannedUser || !tolyUser) {
    console.log('❌ Could not find required users');
    return;
  }
  
  // Delete the match between canned and toly
  const { error: matchError } = await supabase
    .from('matches')
    .delete()
    .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${tolyUser.id}),and(user1_id.eq.${tolyUser.id},user2_id.eq.${cannedUser.id})`);
    
  if (!matchError) {
    console.log('✅ Deleted match with Toly');
  } else {
    console.log('❌ Error deleting match:', matchError.message);
  }
  
  // Also delete the chat between you and Toly if it exists
  const { error: chatError } = await supabase
    .from('chats')
    .delete()
    .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${tolyUser.id}),and(user1_id.eq.${tolyUser.id},user2_id.eq.${cannedUser.id})`);
    
  if (!chatError) {
    console.log('✅ Deleted chat with Toly (if it existed)');
  } else {
    console.log('❌ Error deleting chat:', chatError.message);
  }
  
  console.log('🎯 Removed match with Toly. You can now match with him again!');
}

removeTolyMatch();