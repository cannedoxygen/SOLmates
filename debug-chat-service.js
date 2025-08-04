// Debug ChatService.getUserChats to see what's being returned
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugChatService() {
  try {
    console.log('🔍 Debugging ChatService.getUserChats...');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    console.log('✅ Canned Oxygen user:', cannedUser);
    
    // Simulate ChatService.getUserChats logic
    const { data: chats, error } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('last_message_at', { ascending: false, nullsFirst: false });

    if (error) {
      console.error('❌ Error fetching chats:', error);
      return;
    }

    console.log('\n📱 Raw chat data from database:');
    console.log(JSON.stringify(chats, null, 2));

    // Transform to include other_user like ChatService does
    const transformedChats = chats?.map((chat) => {
      const otherUser = chat.user1_id === cannedUser.id ? chat.user2 : chat.user1;
      const currentUserInChat = chat.user1_id === cannedUser.id ? chat.user1 : chat.user2;
      
      console.log(`\n🔍 Chat ${chat.id}:`);
      console.log('  user1_id:', chat.user1_id);
      console.log('  user2_id:', chat.user2_id);
      console.log('  cannedUser.id:', cannedUser.id);
      console.log('  otherUser chosen:', otherUser?.username);
      console.log('  otherUser avatar_url:', otherUser?.avatar_url);
      console.log('  otherUser twitter_avatar_url:', otherUser?.twitter_avatar_url);
      console.log('  currentUser avatar_url:', currentUserInChat?.avatar_url);
      console.log('  currentUser twitter_avatar_url:', currentUserInChat?.twitter_avatar_url);
      
      return {
        ...chat,
        other_user: otherUser
      };
    });

    console.log('\n📋 Final transformed chat data:');
    transformedChats?.forEach((chat, index) => {
      console.log(`${index + 1}. Chat with ${chat.other_user?.username}:`);
      console.log(`   Avatar URL: ${chat.other_user?.avatar_url || 'none'}`);
      console.log(`   Twitter Avatar URL: ${chat.other_user?.twitter_avatar_url || 'none'}`);
    });
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugChatService();