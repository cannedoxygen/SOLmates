// Debug matching issue after reset
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.EXPO_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugMatchingIssue() {
  try {
    console.log('🔍 Debugging matching issue...');
    
    // Get canned oxygen user
    const { data: cannedUser, error: userError } = await supabase
      .from('users')
      .select('id, username, display_name')
      .or('username.ilike.%canned%,display_name.ilike.%canned%')
      .single();
    
    if (userError || !cannedUser) {
      console.error('❌ Could not find canned oxygen user:', userError);
      return;
    }
    
    console.log('✅ Found canned oxygen user:', cannedUser);
    
    // Check current swipes
    console.log('\n📊 Current swipes for canned oxygen:');
    const { data: swipes, error: swipeError } = await supabase
      .from('swipes')
      .select(`
        id, 
        direction, 
        created_at,
        swiped_user:swiped_id(username, display_name)
      `)
      .eq('swiper_id', cannedUser.id)
      .order('created_at', { ascending: false })
      .limit(10);
    
    if (swipeError) {
      console.error('❌ Error fetching swipes:', swipeError);
    } else {
      console.log('Swipes:', swipes);
    }
    
    // Check current matches
    console.log('\n🤝 Current matches for canned oxygen:');
    const { data: matches, error: matchError } = await supabase
      .from('matches')
      .select(`
        id,
        matched_at,
        user1:user1_id(username, display_name),
        user2:user2_id(username, display_name)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('matched_at', { ascending: false });
    
    if (matchError) {
      console.error('❌ Error fetching matches:', matchError);
    } else {
      console.log('Matches:', matches);
    }
    
    // Check if there are any reciprocal swipes from users who swiped right on canned oxygen
    console.log('\n🔄 Checking for reciprocal swipes (others who swiped right on canned oxygen):');
    const { data: reciprocalSwipes, error: reciprocalError } = await supabase
      .from('swipes')
      .select(`
        id,
        direction,
        created_at,
        swiper_user:swiper_id(username, display_name)
      `)
      .eq('swiped_id', cannedUser.id)
      .in('direction', ['right', 'super'])
      .order('created_at', { ascending: false })
      .limit(10);
    
    if (reciprocalError) {
      console.error('❌ Error fetching reciprocal swipes:', reciprocalError);
    } else {
      console.log('Users who swiped right on canned oxygen:', reciprocalSwipes);
      
      // For each reciprocal swipe, check if canned oxygen has swiped back
      if (reciprocalSwipes && reciprocalSwipes.length > 0) {
        console.log('\n🔍 Checking if matches should exist...');
        
        for (const reciprocal of reciprocalSwipes) {
          const otherUserId = reciprocal.swiper_user?.id || 'unknown';
          
          // Check if canned oxygen swiped right back
          const { data: backSwipe } = await supabase
            .from('swipes')
            .select('direction, created_at')
            .eq('swiper_id', cannedUser.id)
            .eq('swiped_id', otherUserId)
            .in('direction', ['right', 'super'])
            .single();
          
          if (backSwipe) {
            console.log(`✅ Should be match with ${reciprocal.swiper_user?.username}:`, {
              theyLikedUs: reciprocal.created_at,
              weLikedThem: backSwipe.created_at
            });
            
            // Check if match exists
            const { data: existingMatch } = await supabase
              .from('matches')
              .select('id, matched_at')
              .or(
                `and(user1_id.eq.${cannedUser.id},user2_id.eq.${otherUserId}),and(user1_id.eq.${otherUserId},user2_id.eq.${cannedUser.id})`
              )
              .single();
            
            if (existingMatch) {
              console.log(`  🤝 Match exists: ${existingMatch.id}`);
            } else {
              console.log(`  ❌ Match MISSING! Should create match.`);
            }
          }
        }
      }
    }
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugMatchingIssue();