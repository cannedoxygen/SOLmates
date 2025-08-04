const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function checkPrivyUserIdMapping() {
  // Get your user record
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id, username, privy_user_id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  console.log('🔍 Your user record:');
  console.log('Supabase ID:', cannedUser?.id);
  console.log('Username:', cannedUser?.username);
  console.log('Privy User ID:', cannedUser?.privy_user_id);
  
  console.log('\n🔍 Expected Privy ID (from logs): did:privy:cmcqo054u00mpjr0mnf2w8uxa');
  
  const privyIdMatches = cannedUser?.privy_user_id === 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  console.log('\n✅ Privy ID matches:', privyIdMatches);
  
  if (!privyIdMatches) {
    console.log('❌ THIS IS THE ISSUE! Your privy_user_id doesnt match the expected ID');
    console.log('❌ Matches tab looks for privy_user_id but yours is:', cannedUser?.privy_user_id);
    console.log('❌ Expected:', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa');
    
    console.log('\n🔧 FIXING: Updating your privy_user_id...');
    const { error } = await supabase
      .from('users')
      .update({ privy_user_id: 'did:privy:cmcqo054u00mpjr0mnf2w8uxa' })
      .eq('id', cannedUser.id);
      
    if (!error) {
      console.log('✅ Fixed! Your privy_user_id has been updated');
      console.log('🎯 Your Precious match should now show up in the matches tab!');
    } else {
      console.log('❌ Error fixing privy_user_id:', error.message);
    }
  } else {
    console.log('✅ Privy ID is correct. The issue might be elsewhere.');
  }
}

checkPrivyUserIdMapping();