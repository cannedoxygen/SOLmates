// Test the fixed chat service
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function testFixedChatService() {
  console.log('🧪 Testing fixed chat service...');
  
  const privyUserId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  
  try {
    // Step 1: Get Supabase user ID
    console.log('1. Getting Supabase user ID...');
    const { data: currentUser, error: userError } = await supabase
      .from('users')
      .select('id')
      .eq('privy_user_id', privyUserId)
      .single();

    if (userError || !currentUser) {
      console.error('❌ Could not find Supabase user:', userError);
      return;
    }

    console.log('✅ Found Supabase user ID:', currentUser.id);

    // Step 2: Get chats for this user directly
    console.log('2. Getting chats...');
    const { data: chats, error: chatError } = await supabase
      .from('chats')
      .select('*')
      .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`)
      .order('last_message_at', { ascending: false });

    if (chatError) {
      console.error('❌ Error getting chats:', chatError);
      return;
    }

    console.log(`✅ Found ${chats?.length || 0} chats`);
    if (chats && chats.length > 0) {
      console.log('Sample chat:', chats[0]);
      
      // Step 3: Get messages for first chat
      console.log('3. Getting messages for first chat...');
      const { data: messages, error: msgError } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chats[0].id)
        .order('created_at', { ascending: false })
        .limit(5);

      if (msgError) {
        console.error('❌ Error getting messages:', msgError);
      } else {
        console.log(`✅ Found ${messages?.length || 0} messages in first chat`);
        if (messages && messages.length > 0) {
          console.log('Sample message:', messages[0]);
        }
      }
    }

  } catch (error) {
    console.error('💥 Unexpected error:', error);
  }
}

testFixedChatService();