const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

// Updated avatar URLs (using current working URLs or fallback images)
const avatarUpdates = {
  'solanamobile': 'https://pbs.twimg.com/profile_images/1598103201574912000/d7jMFI7k_400x400.jpg',
  'aeyakovenko': 'https://pbs.twimg.com/profile_images/1526664761077731329/Y-53lNsL_400x400.jpg',
  'solana': 'https://pbs.twimg.com/profile_images/1583266018916220928/8AxaJcsN_400x400.jpg',
  'solanaspaces': 'https://pbs.twimg.com/profile_images/1635703048234917890/eAq5rO7u_400x400.jpg',
  'pumpdotfun': 'https://pbs.twimg.com/profile_images/1756399564382461952/jJ7nk5xT_400x400.jpg',
  'solflare': 'https://pbs.twimg.com/profile_images/1644041588568313856/3Znh8UvY_400x400.jpg',
  'backpack': 'https://pbs.twimg.com/profile_images/1716566993509134336/LFm-dCIh_400x400.jpg' // Updated to current Backpack avatar
};

async function updateAvatars() {
  try {
    console.log('🔄 Updating mock profile avatars...');
    
    for (const [username, avatarUrl] of Object.entries(avatarUpdates)) {
      console.log(`📸 Updating ${username} avatar...`);
      
      const { error } = await supabase
        .from('users')
        .update({ 
          twitter_avatar_url: avatarUrl,
          updated_at: new Date().toISOString()
        })
        .eq('username', username);
      
      if (error) {
        console.error(`❌ Failed to update ${username}:`, error);
      } else {
        console.log(`✅ Updated ${username} avatar`);
      }
    }
    
    console.log('🎉 All avatar updates completed!');
    
    // Verify the updates
    console.log('\n🔍 Verifying updates...');
    const { data: users, error } = await supabase
      .from('users')
      .select('username, twitter_avatar_url')
      .in('username', Object.keys(avatarUpdates));
    
    if (error) {
      console.error('❌ Failed to verify updates:', error);
    } else {
      users.forEach(user => {
        console.log(`${user.username}: ${user.twitter_avatar_url}`);
      });
    }
    
  } catch (error) {
    console.error('❌ Failed to update avatars:', error);
  }
}

updateAvatars();