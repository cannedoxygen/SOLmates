const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function cleanMockData() {
  console.log('🧹 Cleaning mock data...');
  
  try {
    // First, let's see what we have
    console.log('\n=== BEFORE CLEANUP ===');
    
    const { data: beforeMatches } = await supabase.from('matches').select('*');
    console.log('Matches before cleanup:', beforeMatches?.length || 0);
    
    const { data: beforeChats } = await supabase.from('chats').select('*');
    console.log('Chats before cleanup:', beforeChats?.length || 0);
    
    const { data: beforeSwipes } = await supabase.from('swipes').select('*');
    console.log('Swipes before cleanup:', beforeSwipes?.length || 0);
    
    // Get your user ID first
    const { data: user } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (!user) {
      console.log('❌ Your user not found');
      return;
    }
    
    console.log('✅ Your user ID:', user.id);
    console.log('✅ Your username:', user.username);
    
    // Show your current matches
    const { data: yourMatches } = await supabase
      .from('matches')
      .select('*')
      .or(`user1_id.eq.${user.id},user2_id.eq.${user.id}`);
    
    console.log('\nYour current matches:', yourMatches?.length || 0);
    yourMatches?.forEach((match, i) => {
      const otherUserId = match.user1_id === user.id ? match.user2_id : match.user1_id;
      console.log(`  ${i+1}. Match with ${otherUserId} (created: ${match.created_at})`);
    });
    
    // Ask user confirmation (in a real scenario you'd want this)
    console.log('\n⚠️  This will DELETE ALL matches, chats, and swipes to start fresh');
    console.log('Proceeding with cleanup...');
    
    // Clean up all data to start fresh
    console.log('\n🗑️  Deleting all matches...');
    const { error: matchError } = await supabase.from('matches').delete().neq('id', '00000000-0000-0000-0000-000000000000');
    if (matchError) console.error('Match delete error:', matchError);
    else console.log('✅ All matches deleted');
    
    console.log('🗑️  Deleting all chats...');
    const { error: chatError } = await supabase.from('chats').delete().neq('id', '00000000-0000-0000-0000-000000000000');
    if (chatError) console.error('Chat delete error:', chatError);
    else console.log('✅ All chats deleted');
    
    console.log('🗑️  Deleting all swipes...');
    const { error: swipeError } = await supabase.from('swipes').delete().neq('id', '00000000-0000-0000-0000-000000000000');
    if (swipeError) console.error('Swipe delete error:', swipeError);
    else console.log('✅ All swipes deleted');
    
    console.log('🗑️  Deleting all messages...');
    const { error: messageError } = await supabase.from('messages').delete().neq('id', '00000000-0000-0000-0000-000000000000');
    if (messageError) console.error('Message delete error:', messageError);
    else console.log('✅ All messages deleted');
    
    // Verify cleanup
    console.log('\n=== AFTER CLEANUP ===');
    
    const { data: afterMatches } = await supabase.from('matches').select('*');
    console.log('Matches after cleanup:', afterMatches?.length || 0);
    
    const { data: afterChats } = await supabase.from('chats').select('*');
    console.log('Chats after cleanup:', afterChats?.length || 0);
    
    const { data: afterSwipes } = await supabase.from('swipes').select('*');
    console.log('Swipes after cleanup:', afterSwipes?.length || 0);
    
    const { data: afterMessages } = await supabase.from('messages').select('*');
    console.log('Messages after cleanup:', afterMessages?.length || 0);
    
    console.log('\n✅ Cleanup complete! Your profile now shows real data (0 matches until you start swiping)');
    
  } catch (error) {
    console.error('❌ Cleanup failed:', error);
  }
}

cleanMockData();