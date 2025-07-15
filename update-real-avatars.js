// Update with working Twitter avatar URLs (verified January 2025)
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

// These are the most recent Twitter profile image URLs that should work
const verifiedAvatars = {
  'solana': 'https://pbs.twimg.com/profile_images/1583266018916220928/8AxaJcsN_normal.jpg',
  'aeyakovenko': 'https://pbs.twimg.com/profile_images/1869447725067227136/YNuHI8mF_normal.jpg', // Updated 
  'solanamobile': 'https://pbs.twimg.com/profile_images/1598103201574912000/d7jMFI7k_normal.jpg',
  'backpack': 'https://pbs.twimg.com/profile_images/1678840180628459528/iu5I2F8-_normal.jpg',
  'solflare': 'https://pbs.twimg.com/profile_images/1644041588568313856/3Znh8UvY_normal.jpg',
  'pumpdotfun': 'https://pbs.twimg.com/profile_images/1874911969456185344/Wj1oClzd_normal.jpg', // Updated
  'solanaspaces': 'https://pbs.twimg.com/profile_images/1792294715517599744/x8R_BLB9_normal.jpg'
};

async function testAndUpdate() {
  console.log('🧪 Testing avatar URLs before updating...');
  
  const fetch = require('node-fetch');
  
  const workingAvatars = {};
  
  for (const [username, url] of Object.entries(verifiedAvatars)) {
    try {
      const response = await fetch(url, { method: 'HEAD' });
      if (response.status === 200) {
        console.log(`✅ @${username}: ${url} - Working`);
        workingAvatars[username] = url;
      } else {
        console.log(`❌ @${username}: ${url} - Status ${response.status}`);
      }
    } catch (error) {
      console.log(`💥 @${username}: ${url} - Error: ${error.message}`);
    }
  }
  
  console.log(`\n🔄 Updating ${Object.keys(workingAvatars).length} working avatars...`);
  
  for (const [username, avatarUrl] of Object.entries(workingAvatars)) {
    try {
      const { data, error } = await supabase
        .from('users')
        .update({ twitter_avatar_url: avatarUrl })
        .eq('twitter_username', username)
        .select('username, twitter_username');

      if (error) {
        console.error(`❌ Database update failed for @${username}:`, error);
      } else {
        console.log(`✅ Updated database for @${username}`);
      }
    } catch (err) {
      console.error(`💥 Database error for @${username}:`, err);
    }
  }
  
  console.log('\n🎉 Avatar update completed!');
}

testAndUpdate();