const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugQuery() {
  const targetPrivyId = 'did:privy:cmdr2e4gl00m4jl0jl5dc09iy';
  
  console.log('🔍 Debug Query Test\n');
  console.log(`Looking for Privy ID: ${targetPrivyId}`);
  
  // Test 1: Direct query
  console.log('\n1️⃣ Direct query with exact Privy ID:');
  const { data: test1, error: error1 } = await supabase
    .from('users')
    .select('*')
    .eq('privy_user_id', targetPrivyId);
    
  console.log('Result:', test1?.length || 0, 'users found');
  if (test1 && test1.length > 0) {
    console.log('Found user:', test1[0].username);
  }
  if (error1) console.log('Error:', error1);
  
  // Test 2: Get dev abdul directly
  console.log('\n2️⃣ Get dev abdul by username:');
  const { data: test2, error: error2 } = await supabase
    .from('users')
    .select('*')
    .eq('username', 'dev abdul');
    
  if (test2 && test2.length > 0) {
    console.log('Found user with Privy ID:', test2[0].privy_user_id);
    console.log('IDs match?', test2[0].privy_user_id === targetPrivyId);
    console.log('ID lengths:', test2[0].privy_user_id.length, 'vs', targetPrivyId.length);
  }
  
  // Test 3: Check all users to see the actual data
  console.log('\n3️⃣ All users with their Privy IDs:');
  const { data: allUsers, error: error3 } = await supabase
    .from('users')
    .select('username, privy_user_id')
    .order('created_at');
    
  if (allUsers) {
    allUsers.forEach(user => {
      console.log(`${user.username}: "${user.privy_user_id}"`);
    });
  }
}

debugQuery();