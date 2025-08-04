const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugChatUserAssignment() {
  try {
    console.log('🔍 Debugging chat user assignment issue...\n');

    const cannedOxygenId = '9b56178a-42c1-42c9-bb7a-495cd31339c1';
    const devAbdulId = 'b3bcc93b-a7e3-4ccb-9fff-2117d95749e9';

    // Check the specific chat between Canned Oxygen and dev abdul
    const { data: chat } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .eq('id', '13e55fa4-9ded-4745-ba91-a8682bcd4cc2') // The chat ID we found earlier
      .single();

    console.log('Chat data:');
    console.log('  user1_id:', chat.user1_id);
    console.log('  user2_id:', chat.user2_id);
    console.log('  user1 data:', JSON.stringify(chat.user1, null, 2));
    console.log('  user2 data:', JSON.stringify(chat.user2, null, 2));

    console.log('\n🔍 Logic test:');
    console.log(`  chat.user1_id (${chat.user1_id}) === cannedOxygenId (${cannedOxygenId})?`, chat.user1_id === cannedOxygenId);
    
    if (chat.user1_id === cannedOxygenId) {
      console.log('  Therefore, other_user should be user2:', chat.user2.username);
    } else {
      console.log('  Therefore, other_user should be user1:', chat.user1.username);
    }

    // Let's also check what ChatService.getUserChats is actually returning
    console.log('\n🔍 Testing ChatService.getUserChats simulation...');
    
    const userId = cannedOxygenId;
    const { data: chats } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .or(`user1_id.eq.${userId},user2_id.eq.${userId}`)
      .order('last_message_at', { ascending: false, nullsFirst: false });

    chats.forEach((chat, index) => {
      const otherUser = chat.user1_id === userId ? chat.user2 : chat.user1;
      console.log(`\nChat ${index + 1}:`);
      console.log(`  user1_id: ${chat.user1_id}`);
      console.log(`  user2_id: ${chat.user2_id}`);
      console.log(`  user1_id === userId? ${chat.user1_id === userId}`);
      console.log(`  Selected other_user: ${otherUser.username} (${otherUser.id})`);
      console.log(`  Should show: ${otherUser.username}'s avatar and name`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

debugChatUserAssignment();