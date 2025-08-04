const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkWalletConflict() {
  try {
    console.log('🔍 Checking wallet address conflict...\n');

    const walletAddress = '3Das3tt7yHx6aCDuPNYyngpfRJC9iuqRLRkDQ4ddEeKb';
    const privyId = 'did:privy:cmdr2e4gl00m4jl0jl5dc09iy';

    // Check who has this wallet address
    const { data: usersWithWallet } = await supabase
      .from('users')
      .select('*')
      .eq('wallet_address', walletAddress);

    console.log(`Found ${usersWithWallet.length} users with wallet ${walletAddress}:`);
    usersWithWallet.forEach(user => {
      console.log(`  - ${user.username} (ID: ${user.id}, Privy: ${user.privy_user_id})`);
    });

    // Check if this Privy ID exists
    const { data: userByPrivy } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', privyId);

    console.log(`\nUsers with Privy ID ${privyId}: ${userByPrivy.length}`);
    if (userByPrivy.length > 0) {
      userByPrivy.forEach(user => {
        console.log(`  - ${user.username} (Wallet: ${user.wallet_address})`);
      });
    }

    // If wallet exists but Privy ID doesn't match, update the existing user
    if (usersWithWallet.length > 0 && userByPrivy.length === 0) {
      console.log('\n🔧 Fixing: Updating existing user with new Privy ID...');
      
      const { error } = await supabase
        .from('users')
        .update({ 
          privy_user_id: privyId,
          twitter_username: 'unbello2211'
        })
        .eq('wallet_address', walletAddress);

      if (error) {
        console.error('Error updating user:', error);
      } else {
        console.log('✅ Successfully updated user with new Privy ID');
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

checkWalletConflict();