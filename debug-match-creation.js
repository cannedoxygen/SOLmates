const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

// Initialize Supabase client
const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugMatchCreation() {
  try {
    console.log('🔍 Testing Match Creation Issue...\n');

    // Test case: Get two test users that have swiped right on each other
    const { data: recentSwipes } = await supabase
      .from('swipes')
      .select('*')
      .eq('direction', 'right')
      .order('created_at', { ascending: false })
      .limit(10);

    if (!recentSwipes || recentSwipes.length === 0) {
      console.log('No recent right swipes found');
      return;
    }

    // Find a pair with mutual right swipes
    let testPair = null;
    for (const swipe of recentSwipes) {
      const reciprocal = recentSwipes.find(s => 
        s.swiper_id === swipe.swiped_id && 
        s.swiped_id === swipe.swiper_id
      );
      
      if (reciprocal) {
        testPair = { swipe1: swipe, swipe2: reciprocal };
        break;
      }
    }

    if (!testPair) {
      console.log('No mutual right swipes found to test');
      return;
    }

    console.log('🎯 Found test pair with mutual right swipes:');
    console.log(`User A: ${testPair.swipe1.swiper_id}`);
    console.log(`User B: ${testPair.swipe1.swiped_id}\n`);

    // Check existing match with both orderings
    console.log('📊 Checking for existing match...');
    
    const { data: match1 } = await supabase
      .from('matches')
      .select('*')
      .eq('user1_id', testPair.swipe1.swiper_id)
      .eq('user2_id', testPair.swipe1.swiped_id)
      .single();

    const { data: match2 } = await supabase
      .from('matches')
      .select('*')
      .eq('user1_id', testPair.swipe1.swiped_id)
      .eq('user2_id', testPair.swipe1.swiper_id)
      .single();

    if (match1 || match2) {
      console.log('✅ Match already exists:', match1 || match2);
      return;
    }

    console.log('❌ No match found despite mutual right swipes!\n');

    // Try to create a match manually
    console.log('🔧 Attempting to create match manually...');
    
    // Determine consistent ordering
    const user1_id = testPair.swipe1.swiper_id < testPair.swipe1.swiped_id 
      ? testPair.swipe1.swiper_id 
      : testPair.swipe1.swiped_id;
    const user2_id = testPair.swipe1.swiper_id < testPair.swipe1.swiped_id 
      ? testPair.swipe1.swiped_id 
      : testPair.swipe1.swiper_id;

    console.log(`Ordered IDs: user1_id=${user1_id}, user2_id=${user2_id}`);

    const { data: newMatch, error: matchError } = await supabase
      .from('matches')
      .insert([{
        user1_id,
        user2_id,
        user1_liked: true,
        user2_liked: true,
        matched_at: new Date().toISOString()
      }])
      .select('*');

    if (matchError) {
      console.error('❌ Error creating match:', matchError);
      console.error('Error details:', JSON.stringify(matchError, null, 2));
    } else {
      console.log('✅ Match created successfully:', newMatch);
    }

    // Also try to create a chat
    console.log('\n🔧 Attempting to create chat...');
    const { data: newChat, error: chatError } = await supabase
      .from('chats')
      .insert([{
        user1_id,
        user2_id
      }])
      .select('*');

    if (chatError) {
      console.error('❌ Error creating chat:', chatError);
      if (chatError.code === '23505') {
        console.log('Chat already exists for this pair');
      }
    } else {
      console.log('✅ Chat created successfully:', newChat);
    }

  } catch (error) {
    console.error('❌ Unexpected error:', error);
  }
}

// Run the debug
debugMatchCreation();