const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function checkAvatars() {
  console.log('🖼️ Checking avatar URLs...');
  
  try {
    const { data: users, error } = await supabase
      .from('users')
      .select('id, username, avatar_url, twitter_avatar_url')
      .limit(10);
    
    if (error) {
      console.error('❌ Error fetching users:', error);
      return;
    }
    
    console.log('👥 Found users:', users?.length);
    
    users?.forEach((user, index) => {
      console.log(`User ${index + 1}:`);
      console.log(`  Username: ${user.username || 'N/A'}`);
      console.log(`  Avatar URL: ${user.avatar_url || 'N/A'}`);
      console.log(`  Twitter Avatar: ${user.twitter_avatar_url || 'N/A'}`);
      console.log('---');
    });
    
  } catch (err) {
    console.error('❌ Error:', err);
  }
}

checkAvatars();