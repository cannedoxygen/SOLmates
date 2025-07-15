// Update Twitter avatars with current working URLs
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

// Current working Twitter avatar URLs (these are more recent)
const updatedAvatars = {
  'solanamobile': 'https://pbs.twimg.com/profile_images/1598103201574912000/d7jMFI7k_normal.jpg',
  'aeyakovenko': 'https://pbs.twimg.com/profile_images/1526664761077731329/Y-53lNsL_normal.jpg', 
  'solana': 'https://pbs.twimg.com/profile_images/1583266018916220928/8AxaJcsN_normal.jpg',
  'solanaspaces': 'https://pbs.twimg.com/profile_images/1792294715517599744/x8R_BLB9_normal.jpg', // Updated URL
  'pumpdotfun': 'https://pbs.twimg.com/profile_images/1756399564382461952/jJ7nk5xT_normal.jpg',
  'solflare': 'https://pbs.twimg.com/profile_images/1644041588568313856/3Znh8UvY_normal.jpg',
  'backpack': 'https://pbs.twimg.com/profile_images/1678840180628459528/iu5I2F8-_normal.jpg'
};

async function updateTwitterAvatars() {
  console.log('🔄 Updating Twitter avatar URLs...');
  
  for (const [username, avatarUrl] of Object.entries(updatedAvatars)) {
    try {
      console.log(`Updating ${username}...`);
      
      const { data, error } = await supabase
        .from('users')
        .update({ 
          twitter_avatar_url: avatarUrl 
        })
        .eq('username', username)
        .select();

      if (error) {
        console.error(`❌ Error updating ${username}:`, error);
      } else {
        console.log(`✅ Updated ${username}: ${avatarUrl}`);
      }
    } catch (err) {
      console.error(`💥 Failed to update ${username}:`, err);
    }
  }
  
  console.log('\n🎉 Avatar update completed!');
}

updateTwitterAvatars();