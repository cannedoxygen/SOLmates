const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkChatMessages() {
  try {
    console.log('💬 Checking chat messages...\n');

    // Get all users
    const { data: users } = await supabase
      .from('users')
      .select('*');

    const userMap = new Map(users.map(u => [u.id, u.username]));

    // Find the users
    const cannedOxygen = users.find(u => u.username === 'Canned Oxygen');
    const devAbdul = users.find(u => u.username === 'dev abdul');

    if (!cannedOxygen || !devAbdul) {
      console.log('❌ Could not find both users');
      return;
    }

    console.log(`Canned Oxygen ID: ${cannedOxygen.id}`);
    console.log(`Dev Abdul ID: ${devAbdul.id}\n`);

    // Find the chat between them
    const { data: chat } = await supabase
      .from('chats')
      .select('*')
      .or(`and(user1_id.eq.${cannedOxygen.id},user2_id.eq.${devAbdul.id}),and(user1_id.eq.${devAbdul.id},user2_id.eq.${cannedOxygen.id})`)
      .single();

    if (!chat) {
      console.log('❌ No chat found between them');
      return;
    }

    console.log(`Chat ID: ${chat.id}`);
    console.log(`Chat users: ${userMap.get(chat.user1_id)} & ${userMap.get(chat.user2_id)}\n`);

    // Get all messages in this chat
    const { data: messages } = await supabase
      .from('messages')
      .select('*')
      .eq('chat_id', chat.id)
      .order('created_at', { ascending: true });

    if (!messages || messages.length === 0) {
      console.log('❌ No messages found in this chat');
      return;
    }

    console.log(`Messages in chat (${messages.length}):`);
    messages.forEach((message, index) => {
      const sender = userMap.get(message.sender_id);
      console.log(`${index + 1}. From: ${sender} (${message.sender_id})`);
      console.log(`   Content: "${message.content}"`);
      console.log(`   Sent: ${new Date(message.created_at).toLocaleString()}`);
      console.log('');
    });

    // Check if there's an issue with sender_id
    console.log('Checking sender_id consistency:');
    messages.forEach((message, index) => {
      const sender = userMap.get(message.sender_id);
      const isCannedOxygen = message.sender_id === cannedOxygen.id;
      const isDevAbdul = message.sender_id === devAbdul.id;
      
      console.log(`Message ${index + 1}: sender_id=${message.sender_id.slice(0, 8)}... -> ${sender}`);
      console.log(`  Is Canned Oxygen: ${isCannedOxygen}`);
      console.log(`  Is Dev Abdul: ${isDevAbdul}`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

checkChatMessages();