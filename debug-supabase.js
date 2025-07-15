const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';
const serviceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.dRCTtUkdQYXOtFo2YC542s-SCaTRq1B31CrZg7hAF64';

const supabase = createClient(supabaseUrl, anonKey);

async function debugSupabase() {
  console.log('🔍 Debugging Supabase connection and data...');
  
  try {
    // Test basic connection
    console.log('\n1. Testing connection...');
    const { data: health, error: healthError } = await supabase
      .from('users')
      .select('count')
      .limit(1);
    
    if (healthError) {
      console.error('❌ Connection failed:', healthError);
      return;
    }
    console.log('✅ Connection successful');

    // Check users table - get ALL users to see the old ones
    console.log('\n2. Checking ALL users table...');
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('id, privy_user_id, username, twitter_username, display_name, created_at')
      .order('created_at', { ascending: true }); // Show oldest first
    
    if (usersError) {
      console.error('❌ Users query failed:', usersError);
    } else {
      console.log(`📊 Found ${users?.length || 0} total users:`);
      users?.forEach(user => {
        console.log(`  - ${user.username || user.twitter_username || user.display_name || 'unknown'} (privy: ${user.privy_user_id?.slice(-8) || 'none'}) [${user.created_at?.slice(0, 10)}]`);
      });
    }

    // Look for your specific user
    console.log('\n3. Looking for your Privy user...');
    const { data: yourUser, error: yourUserError } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (yourUserError) {
      console.log('❌ Your user not found:', yourUserError.message);
    } else {
      console.log('✅ Found your user:', yourUser);
    }

    // Check matches table - specifically your matches
    console.log('\n4. Checking YOUR matches...');
    const { data: yourMatches, error: yourMatchesError } = await supabase
      .from('matches')
      .select(`
        *,
        user1:users!matches_user1_id_fkey(username, twitter_username, display_name),
        user2:users!matches_user2_id_fkey(username, twitter_username, display_name)
      `)
      .or(`user1_id.eq.9b56178a-42c1-42c9-bb7a-495cd31339c1,user2_id.eq.9b56178a-42c1-42c9-bb7a-495cd31339c1`);
    
    if (yourMatchesError) {
      console.error('❌ Your matches query failed:', yourMatchesError);
    } else {
      console.log(`💕 Found ${yourMatches?.length || 0} matches for you:`);
      yourMatches?.forEach(match => {
        const otherUser = match.user1_id === '9b56178a-42c1-42c9-bb7a-495cd31339c1' ? match.user2 : match.user1;
        console.log(`  - Match with: ${otherUser?.display_name || otherUser?.username || otherUser?.twitter_username}`);
      });
    }

    // Check YOUR chats
    console.log('\n5. Checking YOUR chats...');
    const { data: yourChats, error: yourChatsError } = await supabase
      .from('chats')
      .select(`
        *,
        user1:users!chats_user1_id_fkey(username, twitter_username, display_name),
        user2:users!chats_user2_id_fkey(username, twitter_username, display_name)
      `)
      .or(`user1_id.eq.9b56178a-42c1-42c9-bb7a-495cd31339c1,user2_id.eq.9b56178a-42c1-42c9-bb7a-495cd31339c1`);
    
    if (yourChatsError) {
      console.error('❌ Your chats query failed:', yourChatsError);
    } else {
      console.log(`💬 Found ${yourChats?.length || 0} chats for you:`);
      yourChats?.forEach(chat => {
        const otherUser = chat.user1_id === '9b56178a-42c1-42c9-bb7a-495cd31339c1' ? chat.user2 : chat.user1;
        console.log(`  - Chat with: ${otherUser?.display_name || otherUser?.username || otherUser?.twitter_username}`);
        console.log(`    Last message: "${chat.last_message?.slice(0, 50)}..."`);
      });
    }

    console.log('\n6. Checking YOUR messages...');
    const { data: yourMessages, error: yourMessagesError } = await supabase
      .from('messages')
      .select('*, sender:users!messages_sender_id_fkey(username, twitter_username)')
      .in('chat_id', yourChats?.map(chat => chat.id) || [])
      .order('created_at', { ascending: false })
      .limit(5);
    
    if (yourMessagesError) {
      console.error('❌ Your messages query failed:', yourMessagesError);
    } else {
      console.log(`📨 Found ${yourMessages?.length || 0} recent messages:`);
      yourMessages?.forEach(msg => {
        console.log(`  - ${msg.sender?.username || msg.sender?.twitter_username}: "${msg.content?.slice(0, 50)}..."`);
      });
    }

    // Check if tables exist by trying to get table info
    console.log('\n7. Checking what tables exist...');
    const { data: tables, error: tablesError } = await supabase.rpc('get_table_list');
    if (tablesError) {
      console.log('Could not get table list (normal for security)');
    }

  } catch (error) {
    console.error('💥 Unexpected error:', error);
  }
}

debugSupabase();