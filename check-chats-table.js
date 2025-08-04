const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkChatsTable() {
  try {
    console.log('📋 Checking chats table...\n');

    // Get all chats
    const { data: chats } = await supabase
      .from('chats')
      .select('*')
      .order('created_at', { ascending: false });

    console.log(`Found ${chats.length} chats:\n`);

    const { data: users } = await supabase
      .from('users')
      .select('id, username');
    
    const userMap = new Map(users.map(u => [u.id, u.username]));

    chats.forEach((chat, index) => {
      const user1 = userMap.get(chat.user1_id);
      const user2 = userMap.get(chat.user2_id);
      
      console.log(`${index + 1}. Chat ID: ${chat.id}`);
      console.log(`   Users: ${user1} & ${user2}`);
      console.log(`   Last Message: "${chat.last_message || 'NULL'}"`);
      console.log(`   Last Message At: ${chat.last_message_at || 'NULL'}`);
      console.log(`   Created: ${new Date(chat.created_at).toLocaleString()}`);
      console.log('');
    });

    // Now check if messages exist but last_message isn't updated
    console.log('🔍 Checking for messages without updated last_message...\n');
    
    for (const chat of chats) {
      const { data: messages } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: false })
        .limit(1);
      
      if (messages && messages.length > 0) {
        const latestMessage = messages[0];
        const sender = userMap.get(latestMessage.sender_id);
        
        console.log(`Chat ${chat.id} (${userMap.get(chat.user1_id)} & ${userMap.get(chat.user2_id)}):`);
        console.log(`  Database last_message: "${chat.last_message || 'NULL'}"`);
        console.log(`  Actual latest message: "${latestMessage.content}" from ${sender}`);
        console.log(`  Match: ${chat.last_message === latestMessage.content ? '✅' : '❌'}`);
        console.log('');
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

checkChatsTable();