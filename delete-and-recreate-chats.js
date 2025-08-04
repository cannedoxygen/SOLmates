const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function deleteAndRecreateChats() {
  try {
    console.log('🗑️ Deleting all chats and messages...\n');

    // Get all users first
    const { data: users } = await supabase
      .from('users')
      .select('*');

    const userMap = new Map(users.map(u => [u.username, u]));
    const cannedOxygen = userMap.get('Canned Oxygen');
    const devAbdul = userMap.get('dev abdul');
    const phenool = userMap.get('phenool');
    const simp = userMap.get('SIMP');

    // 1. Delete all messages first
    const { error: deleteMessagesError } = await supabase
      .from('messages')
      .delete()
      .gte('id', '00000000-0000-0000-0000-000000000000');

    if (deleteMessagesError) {
      console.error('Error deleting messages:', deleteMessagesError);
    } else {
      console.log('✅ All messages deleted');
    }

    // 2. Delete all chats
    const { error: deleteChatsError } = await supabase
      .from('chats')
      .delete()
      .gte('id', '00000000-0000-0000-0000-000000000000');

    if (deleteChatsError) {
      console.error('Error deleting chats:', deleteChatsError);
    } else {
      console.log('✅ All chats deleted');
    }

    console.log('\n🔧 Creating new chats with correct user ordering...\n');

    // 3. Create chat 1: Canned Oxygen with dev abdul
    // Make sure dev abdul is user1 and Canned Oxygen is user2
    const { data: chat1, error: chat1Error } = await supabase
      .from('chats')
      .insert([{
        user1_id: devAbdul.id,     // dev abdul is user1
        user2_id: cannedOxygen.id, // Canned Oxygen is user2
        created_at: new Date().toISOString(),
        last_message_at: new Date().toISOString()
      }])
      .select()
      .single();

    if (chat1Error) {
      console.error('Error creating chat 1:', chat1Error);
    } else {
      console.log(`✅ Chat 1 created: dev abdul (user1) & Canned Oxygen (user2)`);
      
      // Add message from Canned Oxygen
      await supabase
        .from('messages')
        .insert([{
          chat_id: chat1.id,
          sender_id: cannedOxygen.id,
          content: 'Hello',
          message_type: 'text',
          created_at: new Date().toISOString()
        }]);

      // Update chat with last message
      await supabase
        .from('chats')
        .update({
          last_message: 'Hello',
          last_message_at: new Date().toISOString()
        })
        .eq('id', chat1.id);

      console.log('  ✅ Added "Hello" message from Canned Oxygen');
    }

    // 4. Create chat 2: phenool with Canned Oxygen  
    const { data: chat2, error: chat2Error } = await supabase
      .from('chats')
      .insert([{
        user1_id: phenool.id,      // phenool is user1
        user2_id: cannedOxygen.id, // Canned Oxygen is user2
        created_at: new Date().toISOString(),
        last_message_at: new Date().toISOString()
      }])
      .select()
      .single();

    if (chat2Error) {
      console.error('Error creating chat 2:', chat2Error);
    } else {
      console.log(`✅ Chat 2 created: phenool (user1) & Canned Oxygen (user2)`);
      
      // Add message from Canned Oxygen
      await supabase
        .from('messages')
        .insert([{
          chat_id: chat2.id,
          sender_id: cannedOxygen.id,
          content: 'Hello',
          message_type: 'text',
          created_at: new Date().toISOString()
        }]);

      // Update chat with last message
      await supabase
        .from('chats')
        .update({
          last_message: 'Hello',
          last_message_at: new Date().toISOString()
        })
        .eq('id', chat2.id);

      console.log('  ✅ Added "Hello" message from Canned Oxygen');
    }

    // 5. Create chat 3: SIMP with Canned Oxygen
    const { data: chat3, error: chat3Error } = await supabase
      .from('chats')
      .insert([{
        user1_id: simp.id,         // SIMP is user1
        user2_id: cannedOxygen.id, // Canned Oxygen is user2
        created_at: new Date().toISOString(),
        last_message_at: new Date().toISOString()
      }])
      .select()
      .single();

    if (chat3Error) {
      console.error('Error creating chat 3:', chat3Error);
    } else {
      console.log(`✅ Chat 3 created: SIMP (user1) & Canned Oxygen (user2)`);
      
      // Add message from Canned Oxygen
      await supabase
        .from('messages')
        .insert([{
          chat_id: chat3.id,
          sender_id: cannedOxygen.id,
          content: 'Sent 1,000 BONK 💎',
          message_type: 'text',
          created_at: new Date().toISOString()
        }]);

      // Update chat with last message
      await supabase
        .from('chats')
        .update({
          last_message: 'Sent 1,000 BONK 💎',
          last_message_at: new Date().toISOString()
        })
        .eq('id', chat3.id);

      console.log('  ✅ Added "Sent 1,000 BONK 💎" message from Canned Oxygen');
    }

    console.log('\n🔍 Now testing what Canned Oxygen should see...');

    // Test the logic
    const { data: testChats } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .or(`user1_id.eq.${cannedOxygen.id},user2_id.eq.${cannedOxygen.id}`)
      .order('last_message_at', { ascending: false });

    testChats.forEach((chat, index) => {
      const otherUser = chat.user1_id === cannedOxygen.id ? chat.user2 : chat.user1;
      console.log(`\nChat ${index + 1} should show:`);
      console.log(`  👤 Avatar: ${otherUser.username}'s profile picture`);
      console.log(`  📛 Name: "${otherUser.username}"`);
      console.log(`  💬 Message: "You: ${chat.last_message}"`);
    });

    console.log('\n✨ Done! Chats recreated with proper user ordering.');

  } catch (error) {
    console.error('Error:', error);
  }
}

deleteAndRecreateChats();