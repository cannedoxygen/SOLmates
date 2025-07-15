// Test avatar URLs in the database
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function testAvatars() {
  console.log('🖼️ Testing avatar URLs in database...');
  
  try {
    // Get some sample users to check their avatar URLs
    const { data: users, error } = await supabase
      .from('users')
      .select('id, username, avatar_url, twitter_avatar_url, twitter_username')
      .limit(10);

    if (error) {
      console.error('❌ Error fetching users:', error);
      return;
    }

    console.log(`✅ Found ${users?.length || 0} users`);
    
    users?.forEach((user, index) => {
      console.log(`\n${index + 1}. ${user.username}:`);
      console.log(`   avatar_url: ${user.avatar_url || 'null'}`);
      console.log(`   twitter_avatar_url: ${user.twitter_avatar_url || 'null'}`);
      console.log(`   twitter_username: ${user.twitter_username || 'null'}`);
      
      // Show which avatar would be used
      const finalAvatar = user.twitter_avatar_url?.replace('_normal.', '_400x400.') || user.avatar_url;
      console.log(`   → Final avatar: ${finalAvatar || 'No avatar available'}`);
    });

  } catch (error) {
    console.error('💥 Unexpected error:', error);
  }
}

testAvatars();