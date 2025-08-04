const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugChatOtherUser() {
  try {
    console.log('🔍 Debugging chat other_user logic...\n');

    // Get Canned Oxygen's user info
    const cannedOxygen = await supabase
      .from('users')
      .select('*')
      .eq('username', 'Canned Oxygen')
      .single();

    console.log(`Canned Oxygen ID: ${cannedOxygen.data.id}\n`);

    // Simulate the getUserChats query as it would be called from the app
    const { data: chats, error } = await supabase
      .from('chats')
      .select(`
        *,
        user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
        user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
      `)
      .or(`user1_id.eq.${cannedOxygen.data.id},user2_id.eq.${cannedOxygen.data.id}`)
      .order('last_message_at', { ascending: false, nullsFirst: false });

    if (error) throw error;

    console.log(`Found ${chats.length} chats for Canned Oxygen:\n`);

    chats.forEach((chat, index) => {
      console.log(`Chat ${index + 1}:`);
      console.log(`  Chat ID: ${chat.id}`);
      console.log(`  user1_id: ${chat.user1_id}`);
      console.log(`  user2_id: ${chat.user2_id}`);
      console.log(`  user1 data:`, chat.user1);
      console.log(`  user2 data:`, chat.user2);
      
      // Determine other_user
      const otherUser = chat.user1_id === cannedOxygen.data.id ? chat.user2 : chat.user1;
      console.log(`  other_user should be:`, otherUser);
      console.log(`  Logic: user1_id (${chat.user1_id}) === cannedOxygen.id (${cannedOxygen.data.id}) ? ${chat.user1_id === cannedOxygen.data.id}`);
      console.log('');
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

debugChatOtherUser();