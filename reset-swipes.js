const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function resetSwipes() {
  console.log('🔄 Resetting swipes for demo...');
  
  try {
    // First, let's find the canned oxygen user
    console.log('🔍 Finding canned oxygen user...');
    const { data: users, error: userError } = await supabase
      .from('users')
      .select('id, username, display_name, privy_user_id')
      .or('username.ilike.%canned%,display_name.ilike.%canned%,username.ilike.%oxygen%,display_name.ilike.%oxygen%');
    
    if (userError) {
      console.error('❌ Error finding user:', userError);
      return;
    }
    
    if (!users || users.length === 0) {
      console.log('❌ No users found with "canned" or "oxygen" in name');
      console.log('🔍 Let me show you available users...');
      
      const { data: allUsers } = await supabase
        .from('users')
        .select('id, username, display_name, privy_user_id')
        .limit(10);
      
      console.log('Available users:', allUsers);
      return;
    }
    
    console.log('✅ Found users:', users);
    const user = users[0]; // Take the first match
    
    console.log('🗑️ Deleting ALL swipes where user is the swiper...');
    
    // Delete ALL swipes for fresh demo
    const { error: swipeError } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', user.id);
    
    if (swipeError) {
      console.error('❌ Error deleting swipes:', swipeError);
    } else {
      console.log('✅ Deleted ALL swipes as swiper');
    }
    
    console.log('🗑️ Deleting swipes where user was swiped on...');
    const { error: swipedOnError } = await supabase
      .from('swipes')
      .delete()
      .eq('swiped_id', user.id);
    
    if (swipedOnError) {
      console.error('❌ Error deleting swipes on user:', swipedOnError);
    } else {
      console.log('✅ Deleted swipes on user');
    }
    
    console.log('🗑️ Deleting ALL matches...');
    
    // Delete ALL matches for fresh demo
    const { error: matchError } = await supabase
      .from('matches')
      .delete()
      .or(`user1_id.eq.${user.id},user2_id.eq.${user.id}`);
    
    if (matchError) {
      console.error('❌ Error deleting matches:', matchError);
    } else {
      console.log('✅ Deleted ALL matches');
    }
    
    console.log('🗑️ Deleting ALL chats...');
    
    // Get all chats involving the user
    const { data: userChats } = await supabase
      .from('chats')
      .select('id')
      .or(`user1_id.eq.${user.id},user2_id.eq.${user.id}`);
    
    // Delete messages first, then chats
    for (const chat of userChats || []) {
      await supabase
        .from('messages')
        .delete()
        .eq('chat_id', chat.id);
    }
    
    const { error: chatError } = await supabase
      .from('chats')
      .delete()
      .or(`user1_id.eq.${user.id},user2_id.eq.${user.id}`);
    
    if (chatError) {
      console.error('❌ Error deleting chats:', chatError);
    } else {
      console.log('✅ Deleted ALL chats and messages');
    }
    
    console.log('🎉 Successfully reset EVERYTHING for fresh demo!');
    console.log('🚀 User can now swipe completely fresh!');
    
    // Also remove any reciprocal swipes on the user
    console.log('🗑️ Cleaning up reciprocal swipes...');
    const { error: reciprocalError } = await supabase
      .from('swipes')
      .delete()
      .eq('swiped_id', user.id);
    
    if (reciprocalError) {
      console.error('❌ Error deleting reciprocal swipes:', reciprocalError);
    } else {
      console.log('✅ Deleted reciprocal swipes');
    }
    
  } catch (err) {
    console.error('❌ Unexpected error:', err);
  }
}

resetSwipes();