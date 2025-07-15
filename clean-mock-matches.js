const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function cleanMockMatches() {
  try {
    console.log('🧹 Cleaning up mock matches...');
    
    // First, get canned oxygen's user ID
    const { data: cannedUser } = await supabase
      .from('users')
      .select('id')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (!cannedUser) {
      console.log('❌ Could not find canned oxygen user');
      return;
    }
    
    console.log('👤 Canned oxygen user ID:', cannedUser.id);
    
    // Get all matches involving canned oxygen
    const { data: allMatches } = await supabase
      .from('matches')
      .select('*, user1:user1_id(*), user2:user2_id(*)')
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`);
    
    console.log(`📊 Found ${allMatches?.length || 0} total matches`);
    
    if (!allMatches || allMatches.length === 0) {
      console.log('No matches found');
      return;
    }
    
    // Identify mock matches (where the other user has a mock privy_user_id)
    const mockMatches = [];
    const realMatches = [];
    
    allMatches.forEach(match => {
      const otherUser = match.user1_id === cannedUser.id ? match.user2 : match.user1;
      
      if (otherUser.privy_user_id && otherUser.privy_user_id.includes('mock_user')) {
        mockMatches.push({
          matchId: match.id,
          otherUsername: otherUser.username,
          otherPrivyId: otherUser.privy_user_id
        });
      } else {
        realMatches.push({
          matchId: match.id,
          otherUsername: otherUser.username,
          otherPrivyId: otherUser.privy_user_id
        });
      }
    });
    
    console.log(`\n🤖 Mock matches to delete: ${mockMatches.length}`);
    mockMatches.forEach(m => console.log(`  - ${m.otherUsername} (${m.matchId})`));
    
    console.log(`\n👥 Real matches to keep: ${realMatches.length}`);
    realMatches.forEach(m => console.log(`  - ${m.otherUsername} (${m.matchId})`));
    
    if (mockMatches.length > 0) {
      console.log('\n🗑️ Deleting mock matches...');
      
      const matchIdsToDelete = mockMatches.map(m => m.matchId);
      
      const { error: deleteError } = await supabase
        .from('matches')
        .delete()
        .in('id', matchIdsToDelete);
      
      if (deleteError) {
        console.error('❌ Error deleting matches:', deleteError);
      } else {
        console.log(`✅ Successfully deleted ${mockMatches.length} mock matches`);
      }
    } else {
      console.log('✅ No mock matches found to delete');
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

cleanMockMatches();