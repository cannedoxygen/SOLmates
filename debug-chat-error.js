// Debug chat creation errors
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugChatError() {
  try {
    console.log('🔍 Debugging chat creation issues...');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    console.log('✅ Found canned oxygen user:', cannedUser);
    
    // Get recent matches
    const { data: matches } = await supabase
      .from('matches')
      .select(`
        id,
        user1_id,
        user2_id,
        matched_at,
        user1:user1_id(username),
        user2:user2_id(username)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('matched_at', { ascending: false })
      .limit(5);
    
    console.log('\n📊 Recent matches:', matches);
    
    // Check chats for these matches
    console.log('\n💬 Checking chats for matches...');
    for (const match of matches || []) {
      const { data: chat } = await supabase
        .from('chats')
        .select('*')
        .or(
          `and(user1_id.eq.${match.user1_id},user2_id.eq.${match.user2_id}),and(user1_id.eq.${match.user2_id},user2_id.eq.${match.user1_id})`
        )
        .single();
      
      if (chat) {
        console.log(`✅ Chat exists for match ${match.id}:`, chat.id);
      } else {
        console.log(`❌ NO CHAT for match ${match.id} between ${match.user1?.username} and ${match.user2?.username}`);
        
        // Try to create the chat
        console.log('  🔨 Attempting to create chat...');
        const { data: newChat, error: chatError } = await supabase
          .from('chats')
          .insert([{
            user1_id: match.user1_id,
            user2_id: match.user2_id,
            created_at: new Date().toISOString(),
          }])
          .select('*');
        
        if (chatError) {
          console.error('  ❌ Chat creation failed:', chatError);
        } else {
          console.log('  ✅ Chat created successfully:', newChat?.[0]?.id);
        }
      }
    }
    
    // Check if there are any orphaned chats
    console.log('\n🔍 Checking for orphaned chats...');
    const { data: allChats } = await supabase
      .from('chats')
      .select('*')
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
    console.log(`📊 Total chats involving canned oxygen: ${allChats?.length || 0}`);
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugChatError();