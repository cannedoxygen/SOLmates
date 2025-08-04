const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function checkChats() {
  try {
    console.log('💬 Checking chat data...\n');

    // Get all users
    const { data: users } = await supabase
      .from('users')
      .select('*');

    const userMap = new Map(users.map(u => [u.id, u.username]));

    // Find Canned Oxygen
    const cannedOxygen = users.find(u => u.username === 'Canned Oxygen');
    const devAbdul = users.find(u => u.username === 'dev abdul');
    const phenool = users.find(u => u.username === 'phenool');

    if (!cannedOxygen) {
      console.log('❌ Canned Oxygen not found');
      return;
    }

    console.log(`Found Canned Oxygen: ${cannedOxygen.id}\n`);

    // Check matches involving Canned Oxygen
    console.log('🔍 Matches involving Canned Oxygen:');
    const { data: matches } = await supabase
      .from('matches')
      .select('*')
      .or(`user1_id.eq.${cannedOxygen.id},user2_id.eq.${cannedOxygen.id}`);

    if (matches && matches.length > 0) {
      matches.forEach(match => {
        const otherUserId = match.user1_id === cannedOxygen.id ? match.user2_id : match.user1_id;
        const otherUser = userMap.get(otherUserId);
        console.log(`  ✅ Match with ${otherUser} (Match ID: ${match.id})`);
      });
    } else {
      console.log('  ❌ No matches found for Canned Oxygen');
    }

    // Check chats involving Canned Oxygen
    console.log('\n💬 Chats involving Canned Oxygen:');
    const { data: chats } = await supabase
      .from('chats')
      .select('*')
      .or(`user1_id.eq.${cannedOxygen.id},user2_id.eq.${cannedOxygen.id}`);

    if (chats && chats.length > 0) {
      chats.forEach(chat => {
        const otherUserId = chat.user1_id === cannedOxygen.id ? chat.user2_id : chat.user1_id;
        const otherUser = userMap.get(otherUserId);
        console.log(`  💬 Chat with ${otherUser} (Chat ID: ${chat.id})`);
        console.log(`      Match ID: ${chat.match_id || 'No match_id'}`);
        console.log(`      Created: ${new Date(chat.created_at).toLocaleString()}`);
      });
    } else {
      console.log('  ❌ No chats found for Canned Oxygen');
    }

    // Check messages
    console.log('\n📨 Messages involving Canned Oxygen:');
    const { data: messages } = await supabase
      .from('messages')
      .select('*')
      .eq('sender_id', cannedOxygen.id)
      .order('created_at', { ascending: false })
      .limit(10);

    if (messages && messages.length > 0) {
      messages.forEach(message => {
        console.log(`  📨 To chat ${message.chat_id}: "${message.content}" (${new Date(message.created_at).toLocaleString()})`);
      });
    } else {
      console.log('  ❌ No messages found from Canned Oxygen');
    }

    // Check if we need to create chat rooms for matches
    console.log('\n🔧 Checking if chats exist for all matches...');
    
    if (matches && matches.length > 0) {
      for (const match of matches) {
        const otherUserId = match.user1_id === cannedOxygen.id ? match.user2_id : match.user1_id;
        const otherUser = userMap.get(otherUserId);
        
        // Check if chat exists for this match
        const existingChat = chats?.find(chat => 
          (chat.user1_id === match.user1_id && chat.user2_id === match.user2_id) ||
          (chat.user1_id === match.user2_id && chat.user2_id === match.user1_id) ||
          chat.match_id === match.id
        );
        
        if (existingChat) {
          console.log(`  ✅ Chat exists for match with ${otherUser}`);
        } else {
          console.log(`  ❌ No chat found for match with ${otherUser} - creating one...`);
          
          // Create chat room
          const { data: newChat, error: chatError } = await supabase
            .from('chats')
            .insert([{
              user1_id: match.user1_id,
              user2_id: match.user2_id,
              match_id: match.id,
              created_at: new Date().toISOString(),
              last_message_at: new Date().toISOString()
            }])
            .select()
            .single();
          
          if (chatError) {
            console.error(`      ❌ Error creating chat: ${chatError.message}`);
          } else {
            console.log(`      ✅ Chat created: ${newChat.id}`);
          }
        }
      }
    }

  } catch (error) {
    console.error('Error:', error);
  }
}

checkChats();