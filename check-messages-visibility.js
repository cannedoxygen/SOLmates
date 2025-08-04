const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkMessagesVisibility() {
  try {
    console.log('🔍 Checking message visibility issue...\n');

    // Get all users
    const { data: users } = await supabase
      .from('users')
      .select('*');

    const userMap = new Map(users.map(u => [u.username, u]));
    const cannedOxygen = userMap.get('Canned Oxygen');
    const devAbdul = userMap.get('dev abdul');
    const phenool = userMap.get('phenool');
    const simp = userMap.get('SIMP');

    console.log('User IDs:');
    console.log(`  Canned Oxygen: ${cannedOxygen.id}`);
    console.log(`  dev abdul: ${devAbdul.id}`);
    console.log(`  phenool: ${phenool.id}`);
    console.log(`  SIMP: ${simp.id}\n`);

    // Check all chats
    const { data: chats } = await supabase
      .from('chats')
      .select('*')
      .order('created_at', { ascending: false });

    console.log('All chats:');
    chats.forEach((chat, i) => {
      console.log(`\nChat ${i + 1}:`);
      console.log(`  ID: ${chat.id}`);
      console.log(`  user1_id: ${chat.user1_id}`);
      console.log(`  user2_id: ${chat.user2_id}`);
      console.log(`  last_message: ${chat.last_message}`);
      
      // Identify users
      const user1 = users.find(u => u.id === chat.user1_id);
      const user2 = users.find(u => u.id === chat.user2_id);
      console.log(`  user1: ${user1?.username}`);
      console.log(`  user2: ${user2?.username}`);
    });

    // Check messages in each chat
    console.log('\n\nChecking messages in each chat:');
    
    for (const chat of chats) {
      const { data: messages } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: true });

      const user1 = users.find(u => u.id === chat.user1_id);
      const user2 = users.find(u => u.id === chat.user2_id);
      
      console.log(`\n📱 Chat between ${user1?.username} and ${user2?.username}:`);
      console.log(`  Total messages: ${messages.length}`);
      
      messages.forEach(msg => {
        const sender = users.find(u => u.id === msg.sender_id);
        console.log(`  - ${sender?.username}: "${msg.content}"`);
      });
    }

    // Test what each user should see
    console.log('\n\n🔍 Testing what each user should see when fetching chats:\n');
    
    for (const user of [devAbdul, phenool, simp]) {
      console.log(`${user.username} should see:`);
      
      const { data: userChats } = await supabase
        .from('chats')
        .select(`
          *,
          user1:user1_id(id, username, avatar_url, twitter_avatar_url),
          user2:user2_id(id, username, avatar_url, twitter_avatar_url)
        `)
        .or(`user1_id.eq.${user.id},user2_id.eq.${user.id}`)
        .order('last_message_at', { ascending: false });

      userChats.forEach(chat => {
        const otherUser = chat.user1_id === user.id ? chat.user2 : chat.user1;
        console.log(`  - Chat with ${otherUser.username}: "${chat.last_message}"`);
      });
      console.log('');
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

checkMessagesVisibility();