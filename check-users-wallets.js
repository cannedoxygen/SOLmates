const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkUsersWallets() {
  console.log('📊 Users with and without wallets:');
  
  // Get all users
  const { data: users, error } = await supabase
    .from('users')
    .select('username, wallet_address, created_at, privy_user_id')
    .order('created_at', { ascending: true });
  
  if (error) {
    console.error('❌ Error:', error);
    return;
  }
  
  const withWallets = users.filter(u => u.wallet_address);
  const withoutWallets = users.filter(u => !u.wallet_address);
  
  console.log(`✅ Users WITH wallets: ${withWallets.length}`);
  withWallets.forEach(u => {
    console.log(`  - ${u.username}: ${u.wallet_address} (created: ${new Date(u.created_at).toLocaleDateString()})`);
  });
  
  console.log(`❌ Users WITHOUT wallets: ${withoutWallets.length}`);
  withoutWallets.forEach(u => {
    console.log(`  - ${u.username || 'No username'}: (created: ${new Date(u.created_at).toLocaleDateString()})`);
  });
}

checkUsersWallets();