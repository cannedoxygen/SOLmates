const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function updateWithGitHubUrls() {
  const updates = [
    { username: 'toly', twitter_avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/SolMates/master/mock-data/profiles/toly.jpg' },
    { username: 'mike_s', twitter_avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/SolMates/master/mock-data/profiles/mike.jpg' },
    { username: 'mert_helius', twitter_avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/SolMates/master/mock-data/profiles/mert.jpg' }
  ];
  
  for (const update of updates) {
    console.log(`Updating ${update.username} with GitHub URL...`);
    
    const { error } = await supabase
      .from('users')
      .update({ 
        twitter_avatar_url: update.twitter_avatar_url,
        avatar_url: null 
      })
      .eq('username', update.username);
    
    if (!error) {
      console.log(`✅ ${update.username} now using: ${update.twitter_avatar_url}`);
    }
  }
}

updateWithGitHubUrls();