// Create reciprocal swipes for demo purposes
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function createDemoMatches() {
  try {
    console.log('🎭 Creating demo matches...');
    
    // Get canned oxygen user
    const { data: cannedUser, error: userError } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    if (userError || !cannedUser) {
      console.error('❌ Could not find canned oxygen user:', userError);
      return;
    }
    
    console.log('✅ Found canned oxygen user:', cannedUser);
    
    // Get the users canned oxygen has swiped right on
    const { data: cannedSwipes, error: swipeError } = await supabase
      .from('swipes')
      .select(`
        swiped_id,
        swiped_user:swiped_id(id, username)
      `)
      .eq('swiper_id', cannedUser.id)
      .eq('direction', 'right');
    
    if (swipeError) {
      console.error('❌ Error fetching canned swipes:', swipeError);
      return;
    }
    
    console.log('📱 Users canned oxygen swiped right on:', cannedSwipes);
    
    // Create reciprocal swipes for each user canned oxygen liked
    for (const swipe of cannedSwipes) {
      const otherUserId = swipe.swiped_id;
      const otherUsername = swipe.swiped_user?.username;
      
      console.log(`\n💕 Creating reciprocal swipe: ${otherUsername} → Canned Oxygen`);
      
      // Check if reciprocal swipe already exists
      const { data: existingSwipe } = await supabase
        .from('swipes')
        .select('id')
        .eq('swiper_id', otherUserId)
        .eq('swiped_id', cannedUser.id)
        .single();
      
      if (existingSwipe) {
        console.log(`  ⚠️  Reciprocal swipe already exists`);
        continue;
      }
      
      // Create the reciprocal swipe
      const { data: newSwipe, error: newSwipeError } = await supabase
        .from('swipes')
        .insert([{
          swiper_id: otherUserId,
          swiped_id: cannedUser.id,
          direction: 'right',
          created_at: new Date().toISOString(),
        }])
        .select('*');
      
      if (newSwipeError) {
        console.error(`  ❌ Failed to create reciprocal swipe:`, newSwipeError);
        continue;
      }
      
      console.log(`  ✅ Reciprocal swipe created`);
      
      // Now create the match
      console.log(`  🤝 Creating match between ${cannedUser.username} and ${otherUsername}`);
      
      const { data: match, error: matchError } = await supabase
        .from('matches')
        .insert([{
          user1_id: cannedUser.id < otherUserId ? cannedUser.id : otherUserId,
          user2_id: cannedUser.id < otherUserId ? otherUserId : cannedUser.id,
          user1_liked: true,
          user2_liked: true,
          matched_at: new Date().toISOString(),
          created_at: new Date().toISOString(),
        }])
        .select('*');
      
      if (matchError) {
        console.error(`  ❌ Failed to create match:`, matchError);
        continue;
      }
      
      console.log(`  ✅ Match created!`);
      
      // Create chat
      const { data: chat, error: chatError } = await supabase
        .from('chats')
        .insert([{
          user1_id: cannedUser.id < otherUserId ? cannedUser.id : otherUserId,
          user2_id: cannedUser.id < otherUserId ? otherUserId : cannedUser.id,
          created_at: new Date().toISOString(),
        }])
        .select('*');
      
      if (chatError) {
        console.error(`  ❌ Failed to create chat:`, chatError);
      } else {
        console.log(`  💬 Chat created!`);
      }
    }
    
    console.log('\n🎉 Demo matches setup complete!');
    
    // Show final match count
    const { count: matchCount } = await supabase
      .from('matches')
      .select('*', { count: 'exact', head: true })
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
    console.log(`📊 Total matches for ${cannedUser.username}: ${matchCount || 0}`);
    
  } catch (error) {
    console.error('❌ Error creating demo matches:', error);
  }
}

createDemoMatches();