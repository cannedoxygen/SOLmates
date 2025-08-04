// Restore all swipes and matches for canned oxygen
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function restoreAllData() {
  try {
    console.log('🔄 Restoring all swipes and matches for canned oxygen...\n');
    
    // Get canned oxygen user
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id, username')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    if (!cannedUser) {
      console.error('❌ Could not find canned oxygen user');
      return;
    }
    
    console.log('✅ Found user:', cannedUser);
    
    // Get all other users who previously swiped right on canned oxygen
    const { data: otherUsers } = await supabase
      .from('users')
      .select('id, username')
      .neq('id', cannedUser.id)
      .in('username', ['Preciou70331026', 'dev abdul', 'SIMP', 'T-101']);
    
    console.log(`\n📋 Found ${otherUsers?.length || 0} users to restore relationships with`);
    
    // Restore swipes and matches
    for (const otherUser of otherUsers || []) {
      console.log(`\n👤 Processing ${otherUser.username}...`);
      
      // Check if they already swiped right on canned oxygen
      const { data: existingSwipe } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', otherUser.id)
        .eq('swiped_id', cannedUser.id)
        .eq('direction', 'right')
        .single();
      
      if (!existingSwipe) {
        // Create their swipe on canned oxygen
        const { error: swipeError } = await supabase
          .from('swipes')
          .insert([{
            swiper_id: otherUser.id,
            swiped_id: cannedUser.id,
            direction: 'right',
            created_at: new Date(Date.now() - Math.random() * 86400000).toISOString() // Random time in last 24h
          }]);
        
        if (!swipeError) {
          console.log(`  ✅ Created ${otherUser.username} → canned oxygen swipe`);
        }
      } else {
        console.log(`  ⏭️ ${otherUser.username} already swiped right on canned oxygen`);
      }
      
      // Check if canned oxygen swiped on them
      const { data: cannedSwipe } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', cannedUser.id)
        .eq('swiped_id', otherUser.id)
        .single();
      
      if (!cannedSwipe) {
        // Create canned oxygen's swipe
        const { error: swipeError } = await supabase
          .from('swipes')
          .insert([{
            swiper_id: cannedUser.id,
            swiped_id: otherUser.id,
            direction: 'right',
            created_at: new Date().toISOString()
          }]);
        
        if (!swipeError) {
          console.log(`  ✅ Created canned oxygen → ${otherUser.username} swipe`);
        }
      } else {
        console.log(`  ⏭️ Canned oxygen already swiped on ${otherUser.username}`);
      }
      
      // Check if match exists
      const { data: existingMatch } = await supabase
        .from('matches')
        .select('*')
        .or(
          `and(user1_id.eq.${cannedUser.id},user2_id.eq.${otherUser.id}),and(user1_id.eq.${otherUser.id},user2_id.eq.${cannedUser.id})`
        )
        .single();
      
      if (!existingMatch && cannedSwipe?.direction === 'right') {
        // Create match
        const { error: matchError } = await supabase
          .from('matches')
          .insert([{
            user1_id: cannedUser.id < otherUser.id ? cannedUser.id : otherUser.id,
            user2_id: cannedUser.id < otherUser.id ? otherUser.id : cannedUser.id,
            user1_liked: true,
            user2_liked: true,
            matched_at: new Date().toISOString(),
            created_at: new Date().toISOString()
          }]);
        
        if (!matchError) {
          console.log(`  ✅ Created match with ${otherUser.username}`);
        }
      } else if (existingMatch) {
        console.log(`  ⏭️ Already matched with ${otherUser.username}`);
      }
      
      // Special handling for Preciou70331026 - ensure chat exists
      if (otherUser.username === 'Preciou70331026') {
        const { data: existingChat } = await supabase
          .from('chats')
          .select('*')
          .or(
            `and(user1_id.eq.${cannedUser.id},user2_id.eq.${otherUser.id}),and(user1_id.eq.${otherUser.id},user2_id.eq.${cannedUser.id})`
          )
          .single();
        
        if (!existingChat) {
          const { error: chatError } = await supabase
            .from('chats')
            .insert([{
              user1_id: cannedUser.id < otherUser.id ? cannedUser.id : otherUser.id,
              user2_id: cannedUser.id < otherUser.id ? otherUser.id : cannedUser.id,
              created_at: new Date().toISOString()
            }]);
          
          if (!chatError) {
            console.log(`  ✅ Created chat with ${otherUser.username}`);
          }
        } else {
          console.log(`  ⏭️ Chat already exists with ${otherUser.username}`);
        }
      }
    }
    
    console.log('\n✅ All data restored!');
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

restoreAllData();