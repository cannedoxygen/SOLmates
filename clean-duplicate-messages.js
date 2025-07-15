// Clean up duplicate test messages
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const serviceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.dRCTtUkdQYXOtFo2YC542s-SCaTRq1B31CrZg7hAF64';

const supabase = createClient(supabaseUrl, serviceKey);

async function cleanDuplicateMessages() {
  console.log('🧹 Cleaning up duplicate test messages...');
  
  const yourUserId = '9b56178a-42c1-42c9-bb7a-495cd31339c1';
  
  try {
    // Get all your chats
    const { data: chats, error: chatsError } = await supabase
      .from('chats')
      .select('*')
      .or(`user1_id.eq.${yourUserId},user2_id.eq.${yourUserId}`);
      
    if (chatsError) {
      console.error('❌ Error fetching chats:', chatsError);
      return;
    }
    
    console.log(`📝 Checking ${chats.length} chats for duplicates...`);
    
    for (const chat of chats) {
      // Get messages for this chat
      const { data: messages, error: messagesError } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: true });
        
      if (messagesError) {
        console.log(`⚠️ Could not get messages for chat ${chat.id}`);
        continue;
      }
      
      // Get the other user info
      const otherUserId = chat.user1_id === yourUserId ? chat.user2_id : chat.user1_id;
      const { data: otherUser } = await supabase
        .from('users')
        .select('username, twitter_username, display_name')
        .eq('id', otherUserId)
        .single();
        
      const otherUserName = otherUser?.display_name || otherUser?.username || otherUser?.twitter_username || 'Unknown';
      
      if (messages.length === 0) continue;
      
      console.log(`\\n💬 Chat with ${otherUserName} (${messages.length} messages):`);
      
      // Look for test message patterns to remove
      const testMessages = messages.filter(msg => {
        const content = msg.content || '';
        const isTestMessage = (
          content === 'Hello' ||
          content === 'Hello!' ||
          content === 'Hi' ||
          content === 'Howdy'
        ) && msg.sender_id === yourUserId;
        
        // Keep encrypted messages, remove plain text duplicates
        if (isTestMessage && !msg.encrypted_content) {
          return true;
        }
        
        return false;
      });
      
      if (testMessages.length > 0) {
        console.log(`  🗑️ Found ${testMessages.length} test messages to remove`);
        
        for (const msg of testMessages) {
          console.log(`    Removing: "${msg.content}" (${msg.created_at})`);
          
          const { error: deleteError } = await supabase
            .from('messages')
            .delete()
            .eq('id', msg.id);
            
          if (deleteError) {
            console.error(`    ❌ Failed to delete:`, deleteError);
          } else {
            console.log(`    ✅ Deleted test message`);
          }
        }
      } else {
        console.log(`  ✨ No test messages to clean`);
      }
    }
    
    console.log('\\n🎉 Cleanup completed!');
    
  } catch (error) {
    console.error('💥 Error:', error);
  }
}

cleanDuplicateMessages();