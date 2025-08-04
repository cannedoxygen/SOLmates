const { PrivyClient } = require('@privy-io/server-auth');
const { createClient } = require('@supabase/supabase-js');

// Initialize Privy client
const privy = new PrivyClient('cmcnu20ab02zgl10m45m4ev8q', '4q7rTRKpMzQTbkY8Xro9hnKNgNdMVZ9jMAn2Zr3CxUYkesN56x4rokPtw1YCYwpcRrxfTk5EmRxKB5uNtWfnpUKN');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function investigateDuplicateError() {
  const targetPrivyId = 'did:privy:cmdr2e4gl00m4jl0jl5dc09iy';
  
  console.log('🔍 Investigating duplicate wallet address error...\n');
  console.log(`Target Privy ID: ${targetPrivyId}\n`);
  
  try {
    // 1. Get user info from Privy
    console.log('1️⃣ Fetching user from Privy...');
    const privyUser = await privy.getUser(targetPrivyId);
    console.log('✅ Privy user found:');
    console.log(`   ID: ${privyUser.id}`);
    console.log(`   Created: ${new Date(privyUser.createdAt).toLocaleString()}`);
    console.log(`   Has wallet: ${privyUser.wallet ? 'Yes' : 'No'}`);
    
    // Check linked accounts
    console.log(`   Linked accounts: ${privyUser.linkedAccounts?.length || 0}`);
    if (privyUser.linkedAccounts) {
      privyUser.linkedAccounts.forEach(account => {
        console.log(`     - ${account.type}: ${account.address || account.username || account.email}`);
      });
    }
    
    // Get wallet address
    const walletAccount = privyUser.linkedAccounts?.find(account => account.type === 'wallet');
    const walletAddress = walletAccount?.address;
    
    if (walletAddress) {
      console.log(`\n🔑 Wallet address from Privy: ${walletAddress}`);
    } else {
      console.log('\n⚠️  No wallet address found in Privy user data');
    }
    
    // 2. Check if user exists in Supabase
    console.log('\n2️⃣ Checking if user exists in Supabase...');
    const { data: existingByPrivyId, error: privyIdError } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', targetPrivyId);
      
    if (existingByPrivyId && existingByPrivyId.length > 0) {
      console.log(`✅ User found in Supabase by Privy ID: ${existingByPrivyId[0].username}`);
      console.log(`   Supabase ID: ${existingByPrivyId[0].id}`);
      console.log(`   Wallet in DB: ${existingByPrivyId[0].wallet_address}`);
    } else {
      console.log('❌ User NOT found in Supabase by Privy ID');
    }
    
    // 3. Check who has this wallet address
    if (walletAddress) {
      console.log(`\n3️⃣ Checking who owns wallet address: ${walletAddress}`);
      const { data: usersWithWallet, error: walletError } = await supabase
        .from('users')
        .select('*')
        .eq('wallet_address', walletAddress);
        
      if (usersWithWallet && usersWithWallet.length > 0) {
        console.log(`⚠️  Found ${usersWithWallet.length} user(s) with this wallet:`);
        usersWithWallet.forEach(user => {
          console.log(`   - ${user.username || 'No username'}`);
          console.log(`     ID: ${user.id}`);
          console.log(`     Privy ID: ${user.privy_user_id}`);
          console.log(`     Created: ${new Date(user.created_at).toLocaleString()}`);
        });
      } else {
        console.log('✅ No users found with this wallet address');
      }
    }
    
    // 4. Check for any NULL wallet addresses that might be updated
    console.log('\n4️⃣ Checking for users with NULL wallet addresses...');
    const { data: nullWalletUsers, error: nullError } = await supabase
      .from('users')
      .select('id, username, privy_user_id, created_at')
      .is('wallet_address', null);
      
    if (nullWalletUsers && nullWalletUsers.length > 0) {
      console.log(`Found ${nullWalletUsers.length} users without wallet addresses:`);
      nullWalletUsers.forEach(user => {
        console.log(`   - ${user.username || 'No username'} (Privy ID: ${user.privy_user_id})`);
      });
    }
    
  } catch (error) {
    console.error('❌ Error during investigation:', error);
  }
}

investigateDuplicateError();