const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function fixDevAbdul() {
  const correctPrivyId = 'did:privy:cmdr2e4gl00m4jl0jl5dc09iy';
  const incorrectPrivyId = 'did:privy:cmdr2e4gl00m4jl5dc09iy';
  
  console.log('🔧 Fixing dev abdul Privy ID\n');
  console.log('Current (incorrect) ID:', incorrectPrivyId);
  console.log('Correct ID:', correctPrivyId);
  console.log('');
  
  // Update the user
  const { data: updated, error } = await supabase
    .from('users')
    .update({ privy_user_id: correctPrivyId })
    .eq('username', 'dev abdul')
    .select()
    .single();
    
  if (error) {
    console.error('❌ Error updating:', error);
  } else {
    console.log('✅ Successfully updated dev abdul!');
    console.log('New Privy ID:', updated.privy_user_id);
  }
  
  // Verify the fix
  console.log('\n🔍 Verifying the fix...');
  const { data: verify, error: verifyError } = await supabase
    .from('users')
    .select('*')
    .eq('privy_user_id', correctPrivyId);
    
  if (verify && verify.length > 0) {
    console.log('✅ User can now be found with correct Privy ID!');
    console.log('Username:', verify[0].username);
    console.log('Wallet:', verify[0].wallet_address);
  } else {
    console.log('❌ User still cannot be found');
  }
}

fixDevAbdul();