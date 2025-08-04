const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function updateWithNewRepo() {
  const updates = [
    { username: 'toly', avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/solmates-demo-images/master/toly.jpg' },
    { username: 'mike_s', avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/solmates-demo-images/master/mike.jpg' },
    { username: 'mert_helius', avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/solmates-demo-images/master/mert.jpg' }
  ];
  
  for (const update of updates) {
    const { error } = await supabase
      .from('users')
      .update({ avatar_url: update.avatar_url })
      .eq('username', update.username);
    
    if (!error) {
      console.log(`✅ ${update.username}: ${update.avatar_url}`);
    }
  }
}

updateWithNewRepo();