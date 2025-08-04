const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function listAllUsers() {
  try {
    console.log('📋 Listing all users in database...\n');

    const { data: users, error } = await supabase
      .from('users')
      .select('id, username, display_name, privy_user_id, created_at')
      .order('created_at', { ascending: false });

    if (error) throw error;

    console.log(`Total users: ${users.length}\n`);

    users.forEach((user, index) => {
      console.log(`${index + 1}. Username: "${user.username}" | Display: "${user.display_name}" | ID: ${user.id.slice(0, 8)}...`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run
listAllUsers();