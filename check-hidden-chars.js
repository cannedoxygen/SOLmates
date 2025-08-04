const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkHiddenChars() {
  const targetPrivyId = 'did:privy:cmdr2e4gl00m4jl0jl5dc09iy';
  
  console.log('🔍 Checking for hidden characters in Privy IDs\n');
  
  // Get dev abdul
  const { data: users, error } = await supabase
    .from('users')
    .select('username, privy_user_id')
    .eq('username', 'dev abdul');
    
  if (users && users.length > 0) {
    const dbId = users[0].privy_user_id;
    
    console.log('Expected ID:', targetPrivyId);
    console.log('Expected ID bytes:', Buffer.from(targetPrivyId).toString('hex'));
    console.log('Expected ID length:', targetPrivyId.length);
    console.log('');
    
    console.log('Database ID:', dbId);
    console.log('Database ID bytes:', Buffer.from(dbId).toString('hex'));
    console.log('Database ID length:', dbId.length);
    console.log('');
    
    // Character by character comparison
    console.log('Character comparison:');
    const maxLen = Math.max(targetPrivyId.length, dbId.length);
    for (let i = 0; i < maxLen; i++) {
      const expected = targetPrivyId[i] || '(missing)';
      const actual = dbId[i] || '(missing)';
      const match = expected === actual ? '✅' : '❌';
      console.log(`Position ${i}: "${expected}" vs "${actual}" ${match}`);
    }
    
    // Check for trailing spaces or other whitespace
    console.log('\nWhitespace check:');
    console.log('DB ID has trailing spaces?', dbId !== dbId.trim());
    console.log('DB ID trimmed length:', dbId.trim().length);
  }
}

checkHiddenChars();