// Clean up duplicate chats and keep only Preciou70331026 chat
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function cleanupChats() {
  try {
    console.log('🧹 Cleaning up chats...');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    console.log('✅ Found canned oxygen user:', cannedUser);
    
    // Get Preciou70331026 user
    const { data: preciousUser } = await supabase
      .from('users')
      .select('id, username')
      .eq('username', 'Preciou70331026')
      .single();
    
    console.log('✅ Found Preciou70331026 user:', preciousUser);
    
    // Get all chats involving canned oxygen
    const { data: allChats } = await supabase
      .from('chats')
      .select(`
        id,
        user1_id,
        user2_id,
        created_at,
        user1:user1_id(username),
        user2:user2_id(username)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('created_at', { ascending: false });
    
    console.log('\n📊 All chats involving canned oxygen:');
    allChats?.forEach((chat, index) => {
      console.log(`${index + 1}. Chat ${chat.id}: ${chat.user1?.username} ↔ ${chat.user2?.username}`);
    });
    
    // Find the chat with Preciou70331026
    const preciousChat = allChats?.find(chat => 
      (chat.user1_id === cannedUser.id && chat.user2_id === preciousUser.id) ||
      (chat.user1_id === preciousUser.id && chat.user2_id === cannedUser.id)
    );
    
    if (!preciousChat) {
      console.error('❌ Could not find chat with Preciou70331026');
      return;
    }
    
    console.log(`\n✅ Found chat with Preciou70331026: ${preciousChat.id}`);
    
    // Get all other chats to delete
    const chatsToDelete = allChats?.filter(chat => chat.id !== preciousChat.id) || [];
    
    console.log(`\n🗑️ Will delete ${chatsToDelete.length} other chats:`);
    chatsToDelete.forEach(chat => {
      console.log(`  - ${chat.id}: ${chat.user1?.username} ↔ ${chat.user2?.username}`);
    });
    
    // Delete the other chats
    for (const chat of chatsToDelete) {
      console.log(`\n🗑️ Deleting chat ${chat.id}...`);
      
      // First delete any messages in this chat
      const { error: messagesError } = await supabase
        .from('messages')
        .delete()
        .eq('chat_id', chat.id);
      
      if (messagesError) {
        console.error(`  ❌ Failed to delete messages:`, messagesError);
      } else {
        console.log(`  ✅ Deleted messages for chat ${chat.id}`);
      }
      
      // Then delete the chat
      const { error: chatError } = await supabase
        .from('chats')
        .delete()
        .eq('id', chat.id);
      
      if (chatError) {
        console.error(`  ❌ Failed to delete chat:`, chatError);
      } else {
        console.log(`  ✅ Deleted chat ${chat.id}`);
      }
    }
    
    console.log('\n🎉 Chat cleanup complete!');
    console.log(`✅ Only keeping chat with Preciou70331026: ${preciousChat.id}`);
    
  } catch (error) {
    console.error('❌ Error cleaning up chats:', error);
  }
}

cleanupChats();