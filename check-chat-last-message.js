const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkChatLastMessage() {
  try {
    console.log('🔍 Checking chat last_message fields...\n');

    // Get all chats with their current last_message
    const { data: chats } = await supabase
      .from('chats')
      .select('*')
      .order('created_at', { ascending: false });

    console.log('Current chat last_message values:');
    for (const chat of chats) {
      console.log(`\nChat ID: ${chat.id}`);
      console.log(`  last_message: "${chat.last_message}"`);
      console.log(`  last_message_at: ${chat.last_message_at}`);
      
      // Get actual latest message
      const { data: latestMessage } = await supabase
        .from('messages')
        .select('content, created_at, sender_id')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: false })
        .limit(1)
        .single();

      if (latestMessage) {
        console.log(`  actual latest: "${latestMessage.content}" at ${latestMessage.created_at}`);
        
        // Check if they match
        const matches = chat.last_message === latestMessage.content;
        console.log(`  matches: ${matches ? '✅' : '❌'}`);
        
        if (!matches) {
          console.log('  🔧 Updating chat with correct last message...');
          await supabase
            .from('chats')
            .update({
              last_message: latestMessage.content,
              last_message_at: latestMessage.created_at
            })
            .eq('id', chat.id);
        }
      } else {
        console.log(`  actual latest: No messages found`);
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

checkChatLastMessage();