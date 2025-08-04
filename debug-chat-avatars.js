// Debug chat avatar display issue
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugChatAvatars() {
  try {
    console.log('🔍 Debugging chat avatar display...');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username, avatar_url, twitter_avatar_url')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    console.log('✅ Canned oxygen user:', cannedUser);
    
    // Get remaining chats
    const { data: chats, error } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('created_at', { ascending: false });

    if (error) {
      console.error('❌ Error fetching chats:', error);
      return;
    }

    console.log(`\n💬 Found ${chats?.length || 0} remaining chats:`);
    
    chats?.forEach((chat, index) => {
      const otherUser = chat.user1_id === cannedUser.id ? chat.user2 : chat.user1;
      const currentUserInChat = chat.user1_id === cannedUser.id ? chat.user1 : chat.user2;
      
      console.log(`\n${index + 1}. Chat ${chat.id}:`);
      console.log(`   Users: ${chat.user1?.username} ↔ ${chat.user2?.username}`);
      console.log(`   Other user for canned oxygen: ${otherUser?.username}`);
      console.log(`   Other user avatar_url: ${otherUser?.avatar_url || 'none'}`);
      console.log(`   Other user twitter_avatar_url: ${otherUser?.twitter_avatar_url || 'none'}`);
      console.log(`   Current user (canned) avatar_url: ${currentUserInChat?.avatar_url || 'none'}`);
      console.log(`   Current user (canned) twitter_avatar_url: ${currentUserInChat?.twitter_avatar_url || 'none'}`);
    });
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugChatAvatars();