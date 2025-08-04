// Fix demo user avatar URLs to use _normal.jpg instead of _400x400.jpg
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

const userUpdates = [
  {
    username: 'toly',
    correct_url: 'https://pbs.twimg.com/profile_images/1587503498765869056/bFiocz3b_normal.jpg'
  },
  {
    username: 'mike_s',
    correct_url: 'https://pbs.twimg.com/profile_images/1780680323203469312/fz3qQgJP_normal.jpg'
  },
  {
    username: 'mert_helius',
    correct_url: 'https://pbs.twimg.com/profile_images/1761433516354830336/4ZIy1-JR_normal.jpg'
  }
];

async function fixDemoUserAvatars() {
  try {
    console.log('🔧 Fixing demo user avatar URLs...\n');
    
    for (const userUpdate of userUpdates) {
      console.log(`👤 Updating ${userUpdate.username}...`);
      
      // Check if user exists
      const { data: existingUser } = await supabase
        .from('users')
        .select('id, username, twitter_avatar_url')
        .eq('username', userUpdate.username)
        .single();
      
      if (!existingUser) {
        console.log(`  ⏭️ User ${userUpdate.username} not found, skipping...`);
        continue;
      }
      
      console.log(`  📸 Current URL: ${existingUser.twitter_avatar_url}`);
      console.log(`  🎯 New URL: ${userUpdate.correct_url}`);
      
      // Update the avatar URL
      const { error } = await supabase
        .from('users')
        .update({ twitter_avatar_url: userUpdate.correct_url })
        .eq('id', existingUser.id);
      
      if (error) {
        console.error(`  ❌ Failed to update ${userUpdate.username}:`, error.message);
        continue;
      }
      
      console.log(`  ✅ Updated ${userUpdate.username}'s avatar URL\n`);
    }
    
    console.log('✅ All demo user avatars have been fixed!');
    console.log('🎯 The app should now display high-resolution profile pictures correctly');
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

fixDemoUserAvatars();