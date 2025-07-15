const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkWalletFields() {
  try {
    console.log('🔍 Checking wallet-related fields in users table...');
    
    // Get a few users to see all available fields
    const { data: users, error } = await supabase
      .from('users')
      .select('*')
      .limit(3);
    
    if (error) {
      console.error('❌ Error:', error);
      return;
    }
    
    if (users && users.length > 0) {
      console.log('📋 Available fields in users table:');
      console.log(Object.keys(users[0]));
      
      console.log('\n👥 Sample users:');
      users.forEach(user => {
        console.log({
          username: user.username,
          wallet_address: user.wallet_address,
          privy_user_id: user.privy_user_id,
          // Look for any wallet-related fields
          wallet_connected: user.wallet_connected,
          wallet_verified: user.wallet_verified,
          has_connected_wallet: user.has_connected_wallet,
          // Check if there are any boolean fields that might indicate wallet status
          is_active: user.is_active,
          verified: user.verified,
          profile_completed: user.profile_completed
        });
      });
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

checkWalletFields();