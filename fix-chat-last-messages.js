const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function fixChatLastMessages() {
  try {
    console.log('🔧 Fixing chat last_message fields...\n');

    // Get all chats
    const { data: chats } = await supabase
      .from('chats')
      .select('*');

    console.log(`Found ${chats.length} chats to check\n`);

    for (const chat of chats) {
      console.log(`Checking chat ${chat.id}...`);
      
      // Get the latest message for this chat
      const { data: latestMessages } = await supabase
        .from('messages')
        .select('content, created_at, sender_id')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: false })
        .limit(1);

      if (latestMessages && latestMessages.length > 0) {
        const latest = latestMessages[0];
        const truncatedContent = latest.content.substring(0, 50) + (latest.content.length > 50 ? '...' : '');
        
        console.log(`  Latest message: "${latest.content}"`);
        console.log(`  Truncated: "${truncatedContent}"`);
        
        // Update the chat's last_message
        const { error: updateError } = await supabase
          .from('chats')
          .update({
            last_message: truncatedContent,
            last_message_at: latest.created_at
          })
          .eq('id', chat.id);

        if (updateError) {
          console.error(`  ❌ Error updating chat: ${updateError.message}`);
        } else {
          console.log(`  ✅ Updated successfully`);
        }
      } else {
        console.log(`  ⚠️  No messages found for this chat`);
      }
      
      console.log('');
    }

    console.log('✨ Done! All chats updated.');

  } catch (error) {
    console.error('Error:', error);
  }
}

fixChatLastMessages();