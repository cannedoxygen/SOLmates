const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkCannedChatsDisplay() {
  try {
    console.log('👀 Checking what should appear in Canned Oxygen\'s chats tab...\n');

    // Get Canned Oxygen's Supabase user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('*')
      .eq('username', 'Canned Oxygen')
      .single();

    console.log(`Canned Oxygen Supabase ID: ${cannedUser.id}`);
    console.log(`Canned Oxygen Privy ID: ${cannedUser.privy_user_id}\n`);

    // Simulate exactly what the ChatService.getUserChats() would return
    const userId = cannedUser.id;

    const { data: chats, error } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .or(`user1_id.eq.${userId},user2_id.eq.${userId}`)
      .order('last_message_at', { ascending: false, nullsFirst: false });

    if (error) throw error;

    console.log('📱 What should appear in Canned Oxygen\'s chats tab:\n');

    const transformedChats = await Promise.all(
      (chats || []).map(async (chat, index) => {
        const otherUser = chat.user1_id === userId ? chat.user2 : chat.user1;
        
        // Get latest message info
        const { data: latestMessages } = await supabase
          .from('messages')
          .select('content, created_at, sender_id')
          .eq('chat_id', chat.id)
          .order('created_at', { ascending: false })
          .limit(1);
        
        let lastMessage = chat.last_message;
        let lastMessageSenderId = null;
        
        if (latestMessages && latestMessages.length > 0) {
          const latest = latestMessages[0];
          lastMessage = latest.content;
          lastMessageSenderId = latest.sender_id;
        }

        // Format message preview
        let messagePreview = 'Start a conversation';
        if (lastMessage) {
          const truncatedMessage = lastMessage.length > 40 ? lastMessage.substring(0, 40) + '...' : lastMessage;
          if (lastMessageSenderId === userId) {
            messagePreview = `You: ${truncatedMessage}`;
          } else {
            messagePreview = truncatedMessage;
          }
        }

        console.log(`${index + 1}. Chat Entry:`);
        console.log(`   👤 Avatar: ${otherUser.username}'s profile picture`);
        console.log(`   📛 Name: "${otherUser.username}"`);
        console.log(`   💬 Message Preview: "${messagePreview}"`);
        console.log(`   🕐 Time: ${chat.last_message_at ? new Date(chat.last_message_at).toLocaleString() : 'No messages'}`);
        console.log('');

        return {
          chat_id: chat.id,
          other_user_name: otherUser.username,
          other_user_id: otherUser.id,
          message_preview: messagePreview,
          avatar_url: otherUser.twitter_avatar_url || otherUser.avatar_url,
          last_message_at: chat.last_message_at
        };
      })
    );

    console.log('🔍 Summary - The 3 chat entries should show:');
    transformedChats.forEach((chat, i) => {
      console.log(`${i + 1}. "${chat.other_user_name}" with message "${chat.message_preview}"`);
    });

    console.log('\n❌ If you\'re seeing "Canned Oxygen" names instead of these other usernames, there\'s a frontend caching issue.');

  } catch (error) {
    console.error('Error:', error);
  }
}

checkCannedChatsDisplay();