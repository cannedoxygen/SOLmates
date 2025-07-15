const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkMatch() {
  try {
    console.log('🔍 Checking for match between "canned oxygen" and "simp"...');
    
    // First, let's find both users
    console.log('\n📝 Looking for users...');
    
    const { data: allUsers, error: usersError } = await supabase
      .from('users')
      .select('id, username, display_name, wallet_address, privy_user_id')
      .or('username.ilike.%canned%,username.ilike.%simp%,display_name.ilike.%canned%,display_name.ilike.%simp%');
    
    if (usersError) {
      console.error('❌ Error fetching users:', usersError);
      return;
    }
    
    console.log('👥 Found users:', allUsers);
    
    const cannedUser = allUsers.find(u => 
      u.username?.toLowerCase().includes('canned') || 
      u.display_name?.toLowerCase().includes('canned')
    );
    
    const simpUser = allUsers.find(u => 
      u.username?.toLowerCase().includes('simp') || 
      u.display_name?.toLowerCase().includes('simp')
    );
    
    if (!cannedUser) {
      console.log('❌ Could not find "canned oxygen" user');
      return;
    }
    
    if (!simpUser) {
      console.log('❌ Could not find "simp" user');
      return;
    }
    
    console.log('\n✅ Found users:');
    console.log('🥫 Canned:', { 
      id: cannedUser.id, 
      username: cannedUser.username, 
      display_name: cannedUser.display_name,
      has_wallet: !!cannedUser.wallet_address 
    });
    console.log('🐒 Simp:', { 
      id: simpUser.id, 
      username: simpUser.username, 
      display_name: simpUser.display_name,
      has_wallet: !!simpUser.wallet_address 
    });
    
    // Now check for matches between them
    console.log('\n🔍 Checking for matches...');
    
    const { data: matches, error: matchError } = await supabase
      .from('matches')
      .select('*')
      .or(`and(user1_id.eq.${cannedUser.id},user2_id.eq.${simpUser.id}),and(user1_id.eq.${simpUser.id},user2_id.eq.${cannedUser.id})`);
    
    if (matchError) {
      console.error('❌ Error fetching matches:', matchError);
      return;
    }
    
    if (!matches || matches.length === 0) {
      console.log('❌ No match found between these users');
    } else {
      console.log('\n🎉 Found match(es):');
      matches.forEach(match => {
        console.log('📋 Match details:', {
          id: match.id,
          user1_id: match.user1_id,
          user2_id: match.user2_id,
          user1_liked: match.user1_liked,
          user2_liked: match.user2_liked,
          matched_at: match.matched_at,
          created_at: match.created_at,
          is_mutual: match.user1_liked && match.user2_liked,
          has_match_id: !!match.id
        });
      });
    }
    
    // Also check swipes
    console.log('\n🔍 Checking swipes...');
    
    const { data: swipes, error: swipeError } = await supabase
      .from('swipes')
      .select('*')
      .or(`and(swiper_id.eq.${cannedUser.id},swiped_id.eq.${simpUser.id}),and(swiper_id.eq.${simpUser.id},swiped_id.eq.${cannedUser.id})`);
    
    if (swipeError) {
      console.error('❌ Error fetching swipes:', swipeError);
    } else if (swipes && swipes.length > 0) {
      console.log('📱 Found swipes:');
      swipes.forEach(swipe => {
        console.log('👆 Swipe:', {
          swiper: swipe.swiper_id === cannedUser.id ? 'canned' : 'simp',
          swiped: swipe.swiped_id === cannedUser.id ? 'canned' : 'simp',
          direction: swipe.direction,
          created_at: swipe.created_at
        });
      });
    } else {
      console.log('❌ No swipes found between these users');
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

checkMatch();