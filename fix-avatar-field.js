const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function putInRightField() {
  const updates = [
    { username: 'toly', avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/SolMates/master/mock-data/profiles/toly.jpg' },
    { username: 'mike_s', avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/SolMates/master/mock-data/profiles/mike.jpg' },
    { username: 'mert_helius', avatar_url: 'https://raw.githubusercontent.com/cannedoxygen/SolMates/master/mock-data/profiles/mert.jpg' }
  ];
  
  for (const update of updates) {
    const { error } = await supabase
      .from('users')
      .update({ avatar_url: update.avatar_url })
      .eq('username', update.username);
    
    if (!error) {
      console.log(`✅ ${update.username} avatar_url updated`);
    }
  }
}

putInRightField();