const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixImageUrls() {
  // Set to null so they show the fallback gradient with initials
  const updates = [
    { username: 'toly', avatar_url: null, twitter_avatar_url: null },
    { username: 'mike_s', avatar_url: null, twitter_avatar_url: null },
    { username: 'mert_helius', avatar_url: null, twitter_avatar_url: null }
  ];
  
  for (const update of updates) {
    const { error } = await supabase
      .from('users')
      .update({ 
        avatar_url: update.avatar_url,
        twitter_avatar_url: update.twitter_avatar_url 
      })
      .eq('username', update.username);
    
    if (!error) {
      console.log(`✅ ${update.username} will now show fallback image with initial`);
    }
  }
}

fixImageUrls();