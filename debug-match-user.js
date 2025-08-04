const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function debugMatchUser() {
  // Get canned user
  const { data: cannedUser } = await supabase
    .from('users')
    .select('*')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  console.log('🔍 Canned user:');
  console.log('  ID:', cannedUser.id);
  console.log('  Username:', cannedUser.username);
  console.log('  Display name:', cannedUser.display_name);
  
  // Get demo users
  const { data: demoUsers } = await supabase
    .from('users')
    .select('id, username, display_name')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
    
  console.log('\n🎭 Demo users:');
  demoUsers.forEach(user => {
    console.log('  -', user.username, '(ID:', user.id + ')');
  });
  
  // Check if there's any username collision
  const { data: allCanned } = await supabase
    .from('users')
    .select('id, username, display_name')
    .or('username.ilike.%canned%,display_name.ilike.%canned%');
    
  console.log('\n⚠️  All users with "canned" in name:', allCanned.length);
  allCanned.forEach(user => {
    console.log('  -', user.username, '/', user.display_name, '(ID:', user.id + ')');
  });
}

debugMatchUser();