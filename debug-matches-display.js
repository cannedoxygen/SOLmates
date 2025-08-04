const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function debugMatchesDisplay() {
  // Get canned user exactly like matches.tsx does
  const { data: currentUser, error: userError } = await supabase
    .from('users')
    .select('id')
    .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
    .single();

  console.log('🔍 Current user lookup result:');
  console.log('User:', currentUser);
  console.log('Error:', userError);

  if (!currentUser) {
    console.log('❌ Could not find user - this is the issue!');
    return;
  }

  // Query matches exactly like matches.tsx does
  const { data: matchData, error: matchError } = await supabase
    .from('matches')
    .select('*')
    .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`)
    .order('created_at', { ascending: false });

  console.log('\n🔍 Matches query result:');
  console.log('Matches found:', matchData?.length || 0);
  console.log('Match data:', matchData);
  console.log('Error:', matchError);

  if (matchData && matchData.length > 0) {
    console.log('\n🔍 Processing each match:');
    for (const match of matchData) {
      const otherUserId = match.user1_id === currentUser.id ? match.user2_id : match.user1_id;
      console.log(`\n  Match ID: ${match.id}`);
      console.log(`  Other user ID: ${otherUserId}`);
      
      // Get other user details like matches.tsx does
      const { data: userData, error: userError } = await supabase
        .from('users')
        .select(`
          *,
          twitter_avatar_url,
          twitter_username,
          twitter_name,
          github_url,
          website_url,
          twitter_url,
          experience_level,
          interests,
          location,
          timezone,
          availability,
          reputation_score,
          wallet_address
        `)
        .eq('id', otherUserId)
        .single();

      console.log(`  User lookup result:`);
      console.log(`    Username: ${userData?.username}`);
      console.log(`    Display name: ${userData?.display_name}`);
      console.log(`    Error: ${userError?.message || 'none'}`);
    }
  }
}

debugMatchesDisplay();