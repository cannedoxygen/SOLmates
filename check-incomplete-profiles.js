const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkIncompleteProfiles() {
  try {
    console.log('🔍 Checking for incomplete profiles...\n');

    // Get all users
    const { data: users, error } = await supabase
      .from('users')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) throw error;

    console.log(`Total users in database: ${users.length}\n`);

    // Check for users with missing data
    const incompleteUsers = users.filter(user => 
      !user.username || 
      !user.profile_completed ||
      !user.bio
    );

    if (incompleteUsers.length > 0) {
      console.log(`Found ${incompleteUsers.length} users with incomplete profiles:\n`);
      
      incompleteUsers.forEach(user => {
        console.log(`User ID: ${user.id}`);
        console.log(`  Privy ID: ${user.privy_user_id}`);
        console.log(`  Username: ${user.username || '❌ MISSING'}`);
        console.log(`  Display Name: ${user.display_name || '❌ MISSING'}`);
        console.log(`  Bio: ${user.bio ? '✅ Has bio' : '❌ MISSING'}`);
        console.log(`  Profile Completed: ${user.profile_completed ? '✅' : '❌'}`);
        console.log(`  Created: ${new Date(user.created_at).toLocaleString()}`);
        console.log('');
      });
    } else {
      console.log('All users have complete profiles');
    }

    // Also check for these specific Privy IDs in case they exist with different data
    console.log('\n🔍 Searching for specific Privy IDs...\n');
    const targetPrivyIds = [
      'cmdrfcdby00usl50jtr0pai6g',
      'cmdr2e4gl00m4jl5dc09iy'
    ];

    for (const privyId of targetPrivyIds) {
      const { data: user } = await supabase
        .from('users')
        .select('*')
        .eq('privy_user_id', privyId)
        .single();
      
      if (user) {
        console.log(`Found user with Privy ID ${privyId}:`);
        console.log(`  Username: ${user.username}`);
        console.log(`  ID: ${user.id}`);
      } else {
        console.log(`❌ No user found with Privy ID: ${privyId}`);
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the check
checkIncompleteProfiles();