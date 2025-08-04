const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkDuplicateWallets() {
  console.log('🔍 Checking for duplicate wallet addresses...\n');
  
  // Get all users with wallet addresses
  const { data: users, error } = await supabase
    .from('users')
    .select('id, username, wallet_address, privy_user_id, created_at')
    .not('wallet_address', 'is', null)
    .order('created_at', { ascending: true });
  
  if (error) {
    console.error('❌ Error:', error);
    return;
  }
  
  // Group by wallet address
  const walletGroups = {};
  users.forEach(user => {
    if (!walletGroups[user.wallet_address]) {
      walletGroups[user.wallet_address] = [];
    }
    walletGroups[user.wallet_address].push(user);
  });
  
  // Find duplicates
  const duplicates = Object.entries(walletGroups).filter(([wallet, users]) => users.length > 1);
  
  if (duplicates.length === 0) {
    console.log('✅ No duplicate wallet addresses found!');
  } else {
    console.log(`⚠️  Found ${duplicates.length} wallet addresses with duplicates:\n`);
    
    duplicates.forEach(([wallet, users]) => {
      console.log(`🔑 Wallet: ${wallet}`);
      console.log(`   Used by ${users.length} users:`);
      users.forEach(user => {
        console.log(`   - ${user.username || 'No username'}`);
        console.log(`     ID: ${user.id}`);
        console.log(`     Privy ID: ${user.privy_user_id}`);
        console.log(`     Created: ${new Date(user.created_at).toLocaleString()}`);
      });
      console.log('');
    });
  }
  
  // Check specific Privy ID
  const targetPrivyId = 'did:privy:cmdr2e4gl00m4jl0jl5dc09iy';
  console.log(`\n🎯 Checking specific Privy ID: ${targetPrivyId}`);
  
  const { data: targetUser, error: targetError } = await supabase
    .from('users')
    .select('*')
    .eq('privy_user_id', targetPrivyId)
    .single();
    
  if (targetError) {
    console.log('❌ User not found in database');
  } else if (targetUser) {
    console.log('✅ User found:');
    console.log(`   Username: ${targetUser.username}`);
    console.log(`   Wallet: ${targetUser.wallet_address}`);
    console.log(`   Created: ${new Date(targetUser.created_at).toLocaleString()}`);
  }
}

checkDuplicateWallets();