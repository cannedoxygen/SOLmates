const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function fixExistingMatch() {
  try {
    console.log('🔧 Fixing existing match between canned oxygen and simp...');
    
    // Update the specific match we found
    const matchId = 'a276d241-cd96-4a21-b404-ecdbcf6fb080';
    
    const { data: updatedMatch, error } = await supabase
      .from('matches')
      .update({
        user1_liked: true,
        user2_liked: true
      })
      .eq('id', matchId)
      .select();
    
    if (error) {
      console.error('❌ Error updating match:', error);
      return;
    }
    
    console.log('✅ Match updated successfully:', updatedMatch);
    
    // Verify the update
    const { data: verifyMatch } = await supabase
      .from('matches')
      .select('*')
      .eq('id', matchId)
      .single();
    
    console.log('🔍 Verified match data:', {
      id: verifyMatch.id,
      user1_liked: verifyMatch.user1_liked,
      user2_liked: verifyMatch.user2_liked,
      matched_at: verifyMatch.matched_at
    });
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

fixExistingMatch();