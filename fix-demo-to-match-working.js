const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixDemoUsersToMatchWorkingPattern() {
  // Make demo users match the exact pattern of working users:
  // avatar_url = null, twitter_avatar_url = image URL
  const updates = [
    { 
      username: 'toly', 
      avatar_url: null,
      twitter_avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/solmates-demo-images/master/toly.jpg'
    },
    { 
      username: 'mike_s', 
      avatar_url: null,
      twitter_avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/solmates-demo-images/master/mike.jpg'
    },
    { 
      username: 'mert_helius', 
      avatar_url: null,
      twitter_avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/solmates-demo-images/master/mert.jpg'
    }
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
      console.log(`✅ Fixed ${update.username} to match working pattern`);
      console.log(`   avatar_url: ${update.avatar_url}`);
      console.log(`   twitter_avatar_url: ${update.twitter_avatar_url}`);
    }
  }
}

fixDemoUsersToMatchWorkingPattern();