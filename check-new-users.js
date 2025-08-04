// Check the new users' data
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkNewUsers() {
  const { data: users } = await supabase
    .from('users')
    .select('username, avatar_url, twitter_avatar_url, profile_completed, is_active')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
  
  console.log('New users data:');
  users?.forEach(user => {
    console.log(`\n${user.username}:`);
    console.log('  avatar_url:', user.avatar_url);
    console.log('  twitter_avatar_url:', user.twitter_avatar_url);
    console.log('  profile_completed:', user.profile_completed);
    console.log('  is_active:', user.is_active);
  });
}

checkNewUsers();