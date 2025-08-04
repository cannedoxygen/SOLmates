const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function checkCannedPreciousConvos() {
  // Find canned user
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id, username, display_name')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  // Find precious user
  const { data: preciousUser } = await supabase
    .from('users')
    .select('id, username, display_name')
    .eq('username', 'Preciou70331026')
    .single();
    
  console.log('Users found:');
  console.log('Canned:', cannedUser);
  console.log('Precious:', preciousUser);
  
  if (!cannedUser || !preciousUser) {
    console.log('❌ Could not find both users');
    return;
  }
  
  // Check for chats between them
  const { data: chats } = await supabase
    .from('chats')
    .select('*')
    .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${preciousUser.id}),and(user1_id.eq.${preciousUser.id},user2_id.eq.${cannedUser.id})`);
  
  console.log('💬 Chats between canned and precious:', chats?.length || 0);
  
  if (chats && chats.length > 0) {
    for (const chat of chats) {
      console.log('Chat ID:', chat.id);
      console.log('Created:', chat.created_at);
      console.log('Last message:', chat.last_message);
      console.log('Last message at:', chat.last_message_at);
      
      // Get messages in this chat
      const { data: messages } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: false })
        .limit(10);
        
      console.log('Recent messages:', messages?.length || 0);
      if (messages && messages.length > 0) {
        messages.forEach(msg => {
          const isFromCanned = msg.sender_id === cannedUser.id;
          console.log('  -', isFromCanned ? 'Canned:' : 'Precious:', msg.message);
        });
      }
      console.log('---');
    }
  } else {
    console.log('❌ No chats found between canned and precious');
  }
}

checkCannedPreciousConvos();