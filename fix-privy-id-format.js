const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function fixPrivyIdFormat() {
  console.log('🔧 Fixing Privy ID format in database...\n');
  
  try {
    // 1. Get all users
    const { data: users, error: fetchError } = await supabase
      .from('users')
      .select('id, username, privy_user_id')
      .order('created_at', { ascending: true });
      
    if (fetchError) {
      console.error('❌ Error fetching users:', fetchError);
      return;
    }
    
    console.log(`Found ${users.length} users total\n`);
    
    // 2. Check for users with incorrect format (missing did:privy: prefix)
    const usersToFix = users.filter(user => 
      user.privy_user_id && 
      !user.privy_user_id.startsWith('did:privy:') &&
      user.privy_user_id.length > 20 // Likely a Privy ID
    );
    
    if (usersToFix.length === 0) {
      console.log('✅ All users have correct Privy ID format!');
      return;
    }
    
    console.log(`⚠️  Found ${usersToFix.length} users with incorrect Privy ID format:\n`);
    
    // 3. Fix each user
    for (const user of usersToFix) {
      const oldId = user.privy_user_id;
      const newId = `did:privy:${oldId}`;
      
      console.log(`Fixing user: ${user.username || 'No username'}`);
      console.log(`  Old ID: ${oldId}`);
      console.log(`  New ID: ${newId}`);
      
      // Update the user
      const { data: updated, error: updateError } = await supabase
        .from('users')
        .update({ privy_user_id: newId })
        .eq('id', user.id)
        .select()
        .single();
        
      if (updateError) {
        console.error(`  ❌ Error updating user: ${updateError.message}`);
      } else {
        console.log(`  ✅ Successfully updated!`);
      }
      console.log('');
    }
    
    console.log('🎉 Fix complete!');
    
  } catch (error) {
    console.error('❌ Unexpected error:', error);
  }
}

// Add a dry run option
async function checkPrivyIdFormat() {
  console.log('🔍 Checking Privy ID format (dry run)...\n');
  
  try {
    const { data: users, error } = await supabase
      .from('users')
      .select('id, username, privy_user_id, wallet_address')
      .order('created_at', { ascending: true });
      
    if (error) {
      console.error('❌ Error:', error);
      return;
    }
    
    console.log('Current users and their Privy IDs:\n');
    users.forEach(user => {
      const hasCorrectFormat = user.privy_user_id?.startsWith('did:privy:');
      const status = hasCorrectFormat ? '✅' : '⚠️ ';
      console.log(`${status} ${user.username || 'No username'}`);
      console.log(`   Privy ID: ${user.privy_user_id || 'NULL'}`);
      console.log(`   Wallet: ${user.wallet_address || 'NULL'}`);
      console.log('');
    });
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

// Run based on command line argument
const action = process.argv[2];

if (action === 'fix') {
  fixPrivyIdFormat();
} else if (action === 'check') {
  checkPrivyIdFormat();
} else {
  console.log('Usage:');
  console.log('  node fix-privy-id-format.js check   - Check current state (dry run)');
  console.log('  node fix-privy-id-format.js fix     - Fix the Privy ID format');
}