// Set reliable generated avatars for all mock users
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

const avatarMappings = {
  'solana': 'https://api.dicebear.com/7.x/initials/png?seed=Solana&backgroundColor=9945ff&fontSize=40&size=400',
  'aeyakovenko': 'https://api.dicebear.com/7.x/initials/png?seed=Anatoly%20Yakovenko&backgroundColor=ff6b35&fontSize=32&size=400',
  'solanamobile': 'https://api.dicebear.com/7.x/initials/png?seed=Solana%20Mobile&backgroundColor=1ed760&fontSize=28&size=400',
  'backpack': 'https://api.dicebear.com/7.x/initials/png?seed=Backpack&backgroundColor=7b3ff2&fontSize=40&size=400',
  'solflare': 'https://api.dicebear.com/7.x/initials/png?seed=Solflare&backgroundColor=ff9500&fontSize=40&size=400',
  'pumpdotfun': 'https://api.dicebear.com/7.x/initials/png?seed=pump.fun&backgroundColor=ff1744&fontSize=35&size=400',
  'solanaspaces': 'https://api.dicebear.com/7.x/initials/png?seed=Solana%20Spaces&backgroundColor=2196f3&fontSize=28&size=400'
};

async function setGeneratedAvatars() {
  console.log('🎨 Setting generated avatars for all users...');
  
  for (const [twitterUsername, avatarUrl] of Object.entries(avatarMappings)) {
    try {
      console.log(`Setting avatar for @${twitterUsername}...`);
      
      const { data, error } = await supabase
        .from('users')
        .update({ 
          twitter_avatar_url: avatarUrl 
        })
        .eq('twitter_username', twitterUsername)
        .select('username, twitter_username');

      if (error) {
        console.error(`❌ Error updating @${twitterUsername}:`, error);
      } else if (data && data.length > 0) {
        console.log(`✅ Updated @${twitterUsername} (${data[0].username})`);
      } else {
        console.log(`⚠️ No user found with Twitter username: @${twitterUsername}`);
      }
    } catch (err) {
      console.error(`💥 Failed to update @${twitterUsername}:`, err);
    }
  }
  
  console.log('\n🎉 Generated avatar update completed!');
  console.log('All users should now have consistent, professional-looking avatars.');
}

setGeneratedAvatars();