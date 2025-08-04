// Debug all 4 critical issues
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugAllIssues() {
  try {
    console.log('🔍 Debugging all 4 critical issues...\n');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username, avatar_url, twitter_avatar_url')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    console.log('✅ Canned Oxygen user:', cannedUser);
    
    // ISSUE 1: Check current swipes and matches
    console.log('\n🔍 ISSUE 1: Checking swipes and matches...');
    
    const { data: currentSwipes } = await supabase
      .from('swipes')
      .select(`
        id, direction, created_at,
        swiped_user:swiped_id(username, avatar_url, twitter_avatar_url)
      `)
      .eq('swiper_id', cannedUser.id)
      .order('created_at', { ascending: false });
    
    console.log('Current swipes by canned oxygen:', currentSwipes);
    
    const { data: currentMatches } = await supabase
      .from('matches')
      .select(`
        id, matched_at,
        user1:user1_id(username, avatar_url, twitter_avatar_url),
        user2:user2_id(username, avatar_url, twitter_avatar_url)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('matched_at', { ascending: false });
    
    console.log('Current matches:', currentMatches);
    
    // ISSUE 2: Check for missing Preciou70331026 conversation
    console.log('\n🔍 ISSUE 2: Looking for Preciou70331026 conversation...');
    
    const { data: preciousUser } = await supabase
      .from('users')
      .select('id, username, avatar_url, twitter_avatar_url')
      .eq('username', 'Preciou70331026')
      .single();
    
    if (preciousUser) {
      console.log('✅ Found Preciou70331026:', preciousUser);
      
      // Check for existing chat
      const { data: preciousChat } = await supabase
        .from('chats')
        .select('*')
        .or(
          `and(user1_id.eq.${cannedUser.id},user2_id.eq.${preciousUser.id}),and(user1_id.eq.${preciousUser.id},user2_id.eq.${cannedUser.id})`
        )
        .single();
      
      if (preciousChat) {
        console.log('✅ Found existing chat with Preciou70331026:', preciousChat.id);
      } else {
        console.log('❌ NO CHAT found with Preciou70331026');
      }
      
      // Check for match
      const { data: preciousMatch } = await supabase
        .from('matches')
        .select('*')
        .or(
          `and(user1_id.eq.${cannedUser.id},user2_id.eq.${preciousUser.id}),and(user1_id.eq.${preciousUser.id},user2_id.eq.${cannedUser.id})`
        )
        .single();
      
      if (preciousMatch) {
        console.log('✅ Found match with Preciou70331026:', preciousMatch.id);
      } else {
        console.log('❌ NO MATCH found with Preciou70331026');
      }
    }
    
    // ISSUE 3: Check SIMP user specifically
    console.log('\n🔍 ISSUE 3: Checking SIMP user issues...');
    
    const { data: simpUser } = await supabase
      .from('users')
      .select('*')
      .eq('username', 'SIMP')
      .single();
    
    console.log('SIMP user details:', simpUser);
    
    // ISSUE 4: Check current chats and avatar display
    console.log('\n🔍 ISSUE 4: Checking chat avatar display...');
    
    const { data: allChats } = await supabase
      .from('chats')
      .select(`
        id,
        user1_id,
        user2_id,
        user1:user1_id(username, avatar_url, twitter_avatar_url),
        user2:user2_id(username, avatar_url, twitter_avatar_url)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
    console.log(`Found ${allChats?.length || 0} chats for canned oxygen:`);
    allChats?.forEach((chat, index) => {
      const otherUser = chat.user1_id === cannedUser.id ? chat.user2 : chat.user1;
      const currentUserInChat = chat.user1_id === cannedUser.id ? chat.user1 : chat.user2;
      
      console.log(`${index + 1}. Chat ${chat.id}:`);
      console.log(`   Other user: ${otherUser?.username}`);
      console.log(`   Other user avatar: ${otherUser?.avatar_url || otherUser?.twitter_avatar_url || 'none'}`);
      console.log(`   Your avatar: ${currentUserInChat?.avatar_url || currentUserInChat?.twitter_avatar_url || 'none'}`);
    });
    
    // Check reciprocal swipes
    console.log('\n🔍 Checking who has swiped right on canned oxygen...');
    const { data: reciprocalSwipes } = await supabase
      .from('swipes')
      .select(`
        id, direction, created_at,
        swiper_user:swiper_id(username)
      `)
      .eq('swiped_id', cannedUser.id)
      .eq('direction', 'right');
    
    console.log('Users who swiped right on canned oxygen:', reciprocalSwipes);
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugAllIssues();