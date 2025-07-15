const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function investigateData() {
  console.log('🔍 Investigating database tables...');
  
  try {
    // Check users table
    console.log('\n=== USERS TABLE ===');
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('id, username, privy_user_id, created_at')
      .limit(10);
    
    if (usersError) {
      console.error('Users error:', usersError);
    } else {
      console.log('Users found:', users?.length || 0);
      users?.forEach((user, i) => {
        console.log(`  ${i+1}. ${user.username} (${user.id})`);
      });
    }
    
    // Check matches table
    console.log('\n=== MATCHES TABLE ===');
    const { data: matches, error: matchesError } = await supabase
      .from('matches')
      .select('*')
      .limit(10);
    
    if (matchesError) {
      console.error('Matches error:', matchesError);
    } else {
      console.log('Matches found:', matches?.length || 0);
      matches?.forEach((match, i) => {
        console.log(`  ${i+1}. ${match.user1_id} <-> ${match.user2_id} (matched: ${match.matched_at})`);
      });
    }
    
    // Check swipes table
    console.log('\n=== SWIPES TABLE ===');
    const { data: swipes, error: swipesError } = await supabase
      .from('swipes')
      .select('*')
      .limit(10);
    
    if (swipesError) {
      console.error('Swipes error:', swipesError);
    } else {
      console.log('Swipes found:', swipes?.length || 0);
      swipes?.forEach((swipe, i) => {
        console.log(`  ${i+1}. ${swipe.swiper_id} -> ${swipe.swiped_id} (${swipe.direction})`);
      });
    }
    
    // Check chats table
    console.log('\n=== CHATS TABLE ===');
    const { data: chats, error: chatsError } = await supabase
      .from('chats')
      .select('*')
      .limit(10);
    
    if (chatsError) {
      console.error('Chats error:', chatsError);
    } else {
      console.log('Chats found:', chats?.length || 0);
      chats?.forEach((chat, i) => {
        console.log(`  ${i+1}. ${chat.user1_id} <-> ${chat.user2_id} (${chat.id})`);
      });
    }
    
    // Check your specific user
    console.log('\n=== YOUR USER DATA ===');
    const { data: yourUser, error: yourUserError } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (yourUserError) {
      console.error('Your user error:', yourUserError);
    } else {
      console.log('Your user ID:', yourUser?.id);
      console.log('Your username:', yourUser?.username);
      
      // Check matches for your user
      const { data: yourMatches, error: yourMatchesError } = await supabase
        .from('matches')
        .select('*')
        .or(`user1_id.eq.${yourUser.id},user2_id.eq.${yourUser.id}`);
      
      if (!yourMatchesError) {
        console.log('Your matches:', yourMatches?.length || 0);
      }
      
      // Check chats for your user
      const { data: yourChats, error: yourChatsError } = await supabase
        .from('chats')
        .select('*')
        .or(`user1_id.eq.${yourUser.id},user2_id.eq.${yourUser.id}`);
      
      if (!yourChatsError) {
        console.log('Your chats:', yourChats?.length || 0);
      }
    }
    
  } catch (error) {
    console.error('❌ Investigation failed:', error);
  }
}

investigateData();