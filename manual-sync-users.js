const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function manualSyncUsers() {
  try {
    console.log('📝 Manually creating missing users...\n');

    const missingUsers = [
      {
        privy_user_id: 'cmdrfcdby00usl50jtr0pai6g',
        username: 'Preciou70331026',
        twitter_username: 'Preciou70331026',
        display_name: 'Precious',
        bio: '',
        skills: [],
        looking_for: [],
        profile_completed: false,
        is_active: true,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      },
      {
        privy_user_id: 'cmdr2e4gl00m4jl5dc09iy',
        username: 'unbello2211',
        twitter_username: 'unbello2211',
        display_name: 'Unbello',
        bio: '',
        skills: [],
        looking_for: [],
        profile_completed: false,
        is_active: true,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      }
    ];

    for (const userData of missingUsers) {
      console.log(`Creating user: ${userData.username}...`);
      
      // Check if user already exists
      const { data: existing } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', userData.privy_user_id)
        .single();
      
      if (existing) {
        console.log(`  ✅ User already exists`);
        continue;
      }
      
      // Create the user
      const { data: newUser, error } = await supabase
        .from('users')
        .insert([userData])
        .select()
        .single();
      
      if (error) {
        console.error(`  ❌ Error creating user: ${error.message}`);
        console.error(`     Details: ${JSON.stringify(error, null, 2)}`);
      } else {
        console.log(`  ✅ User created successfully!`);
        console.log(`     ID: ${newUser.id}`);
      }
    }
    
    console.log('\n✨ Done!');

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the sync
manualSyncUsers();