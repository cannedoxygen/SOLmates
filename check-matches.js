const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function checkMatches() {
  console.log('🔍 Checking matches data...');
  
  try {
    // Get your user
    const { data: user } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (!user) {
      console.log('❌ User not found');
      return;
    }
    
    console.log('✅ Your user ID:', user.id);
    console.log('✅ Your username:', user.username);
    
    // Get all matches
    const { data: matches } = await supabase
      .from('matches')
      .select('*');
    
    console.log('\n=== ALL MATCHES IN DATABASE ===');
    console.log('Total matches:', matches?.length || 0);
    matches?.forEach((match, i) => {
      console.log(`${i+1}. ${match.user1_id} <-> ${match.user2_id} (matched: ${match.matched_at})`);
    });
    
    // Get your specific matches
    const { data: yourMatches } = await supabase
      .from('matches')
      .select('*')
      .or(`user1_id.eq.${user.id},user2_id.eq.${user.id}`);
    
    console.log('\n=== YOUR MATCHES ===');
    console.log('Your matches:', yourMatches?.length || 0);
    yourMatches?.forEach((match, i) => {
      console.log(`${i+1}. You <-> ${match.user1_id === user.id ? match.user2_id : match.user1_id} (matched: ${match.matched_at})`);
    });
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

checkMatches();