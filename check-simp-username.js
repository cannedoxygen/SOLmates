const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkSimpUsername() {
  try {
    console.log('🔍 Checking who has the "SIMP" username...');
    
    // Find all users with SIMP username
    const { data: simpUsers, error } = await supabase
      .from('users')
      .select('*')
      .eq('username', 'SIMP');
    
    if (error) {
      console.error('❌ Error:', error);
      return;
    }
    
    console.log(`📋 Found ${simpUsers?.length || 0} users with username "SIMP"`);
    
    if (simpUsers && simpUsers.length > 0) {
      simpUsers.forEach((user, index) => {
        console.log(`\n${index + 1}. User with SIMP username:`);
        console.log(`   ID: ${user.id}`);
        console.log(`   Privy ID: ${user.privy_user_id}`);
        console.log(`   Username: ${user.username}`);
        console.log(`   Display Name: ${user.display_name}`);
        console.log(`   Bio: ${user.bio}`);
        console.log(`   Created: ${user.created_at}`);
      });
    }
    
    // Also check canned oxygen's current username
    console.log('\n🔍 Checking canned oxygen current username...');
    const { data: cannedUser } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
      
    if (cannedUser) {
      console.log(`\n👤 Canned Oxygen current profile:`);
      console.log(`   ID: ${cannedUser.id}`);
      console.log(`   Current Username: ${cannedUser.username}`);
      console.log(`   Display Name: ${cannedUser.display_name}`);
      console.log(`   Bio: ${cannedUser.bio}`);
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

checkSimpUsername();