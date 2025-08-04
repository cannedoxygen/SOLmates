const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugMessagesView() {
  try {
    console.log('🔍 Debugging messages visibility from user perspective...\n');

    // Get all users
    const { data: users } = await supabase
      .from('users')
      .select('*');

    const userMap = new Map(users.map(u => [u.username, u]));
    const cannedOxygen = userMap.get('Canned Oxygen');
    const devAbdul = userMap.get('dev abdul');
    const phenool = userMap.get('phenool');
    const simp = userMap.get('SIMP');

    // Check what dev abdul sees
    console.log('👤 DEV ABDUL\'s view:');
    console.log('========================');
    
    // Get chat between dev abdul and Canned Oxygen
    const { data: devAbdulChat } = await supabase
      .from('chats')
      .select('*')
      .or(
        `and(user1_id.eq.${devAbdul.id},user2_id.eq.${cannedOxygen.id}),and(user1_id.eq.${cannedOxygen.id},user2_id.eq.${devAbdul.id})`
      )
      .single();

    console.log(`Chat ID: ${devAbdulChat.id}`);
    
    // Get messages in this chat
    const { data: devAbdulMessages } = await supabase
      .from('messages')
      .select('*')
      .eq('chat_id', devAbdulChat.id)
      .order('created_at', { ascending: true });

    console.log(`Total messages: ${devAbdulMessages.length}`);
    devAbdulMessages.forEach(msg => {
      const sender = users.find(u => u.id === msg.sender_id);
      console.log(`  ${sender?.username}: "${msg.content}"`);
    });

    // Check if there are any messages from Canned Oxygen
    const messagesFromCannedOxygen = devAbdulMessages.filter(m => m.sender_id === cannedOxygen.id);
    console.log(`\nMessages from Canned Oxygen: ${messagesFromCannedOxygen.length}`);
    
    // Check what phenool sees
    console.log('\n\n👤 PHENOOL\'s view:');
    console.log('========================');
    
    const { data: phenoolChat } = await supabase
      .from('chats')
      .select('*')
      .or(
        `and(user1_id.eq.${phenool.id},user2_id.eq.${cannedOxygen.id}),and(user1_id.eq.${cannedOxygen.id},user2_id.eq.${phenool.id})`
      )
      .single();

    console.log(`Chat ID: ${phenoolChat.id}`);
    
    const { data: phenoolMessages } = await supabase
      .from('messages')
      .select('*')
      .eq('chat_id', phenoolChat.id)
      .order('created_at', { ascending: true });

    console.log(`Total messages: ${phenoolMessages.length}`);
    phenoolMessages.forEach(msg => {
      const sender = users.find(u => u.id === msg.sender_id);
      console.log(`  ${sender?.username}: "${msg.content}"`);
    });

    // Check SIMP
    console.log('\n\n👤 SIMP\'s view:');
    console.log('========================');
    
    const { data: simpChat } = await supabase
      .from('chats')
      .select('*')
      .or(
        `and(user1_id.eq.${simp.id},user2_id.eq.${cannedOxygen.id}),and(user1_id.eq.${cannedOxygen.id},user2_id.eq.${simp.id})`
      )
      .single();

    console.log(`Chat ID: ${simpChat.id}`);
    
    const { data: simpMessages } = await supabase
      .from('messages')
      .select('*')
      .eq('chat_id', simpChat.id)
      .order('created_at', { ascending: true });

    console.log(`Total messages: ${simpMessages.length}`);
    simpMessages.forEach(msg => {
      const sender = users.find(u => u.id === msg.sender_id);
      console.log(`  ${sender?.username}: "${msg.content}"`);
    });

    // Summary
    console.log('\n\n📊 SUMMARY:');
    console.log('========================');
    console.log(`Total messages from Canned Oxygen: ${messagesFromCannedOxygen.length + phenoolMessages.filter(m => m.sender_id === cannedOxygen.id).length + simpMessages.filter(m => m.sender_id === cannedOxygen.id).length}`);

  } catch (error) {
    console.error('Error:', error);
  }
}

debugMessagesView();