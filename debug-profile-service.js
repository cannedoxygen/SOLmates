const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugProfileService() {
  try {
    console.log('🔍 Debugging ProfileService.getUserProfile...\n');

    // Get Canned Oxygen's Privy ID
    const cannedPrivyId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
    console.log(`Looking up user with Privy ID: ${cannedPrivyId}\n`);

    // Simulate what ProfileService.getUserProfile does
    const { data: userProfile, error } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', cannedPrivyId)
      .single();

    if (error) {
      console.error('❌ Error from ProfileService:', error);
      return;
    }

    console.log('✅ ProfileService.getUserProfile would return:');
    console.log('  ID:', userProfile.id);
    console.log('  Username:', userProfile.username);
    console.log('  Privy ID:', userProfile.privy_user_id);
    console.log('');

    // Now check what ChatService.getUserChats would do with this ID
    const userId = userProfile.id;
    console.log(`🔍 ChatService.getUserChats will be called with userId: ${userId}`);
    console.log('This should match Canned Oxygen\'s Supabase ID\n');

    // Verify this matches
    const { data: directLookup } = await supabase
      .from('users')
      .select('*')
      .eq('username', 'Canned Oxygen')
      .single();

    console.log('Direct lookup of "Canned Oxygen":');
    console.log('  ID:', directLookup.id);
    console.log('  Match:', userProfile.id === directLookup.id ? '✅' : '❌');

  } catch (error) {
    console.error('Error:', error);
  }
}

debugProfileService();