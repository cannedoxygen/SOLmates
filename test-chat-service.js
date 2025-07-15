// Test chat service functionality
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function testChatRooms() {
  console.log('🧪 Testing chat room loading...');
  
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

    // Step 2: Check matches
    console.log('2. Checking matches...');
    const { data: matches, error: matchError } = await supabase
      .from('matches')
      .select('*')
      .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`);

    if (matchError) {
      console.error('❌ Error getting matches:', matchError);
      return;
    }

    console.log(`✅ Found ${matches?.length || 0} matches`);
    if (matches?.length > 0) {
      console.log('Match details:', matches.map(m => ({
        id: m.id,
        user1_id: m.user1_id,
        user2_id: m.user2_id,
        created_at: m.created_at
      })));
    }

    // Step 3: Check chat rooms table structure
    console.log('3. Checking chat_rooms table...');
    const { data: allChatRooms, error: roomError } = await supabase
      .from('chat_rooms')
      .select('*')
      .limit(5);

    if (roomError) {
      console.error('❌ Error accessing chat_rooms table:', roomError);
    } else {
      console.log(`✅ Found ${allChatRooms?.length || 0} total chat rooms in database`);
      if (allChatRooms?.length > 0) {
        console.log('Sample chat room structure:', allChatRooms[0]);
      }
    }

    // Step 4: Try the full chat service logic
    console.log('4. Testing full chat service logic...');
    const { data: matchesWithChatRooms, error: fullError } = await supabase
      .from('matches')
      .select('*, chat_rooms(*)')
      .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`);

    if (fullError) {
      console.error('❌ Error with chat rooms join:', fullError);
    } else {
      console.log(`✅ Matches with chat rooms query successful`);
      console.log('Results:', matchesWithChatRooms?.map(m => ({
        match_id: m.id,
        chat_rooms_count: m.chat_rooms?.length || 0,
        chat_rooms: m.chat_rooms
      })));
    }

  } catch (error) {
    console.error('💥 Unexpected error:', error);
  }
}

testChatRooms();