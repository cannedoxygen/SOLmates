const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function fixUserBio() {
  console.log('🔧 Fixing user bio...');
  
  const userId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  
  try {
    const { data, error } = await supabase
      .from('users')
      .update({ 
        bio: 'a little bit of this, a little bit of that...'
      })
      .eq('privy_user_id', userId);
    
    if (error) {
      console.error('❌ Error:', error);
    } else {
      console.log('✅ Bio updated successfully!');
    }
  } catch (err) {
    console.error('❌ Error:', err);
  }
}

fixUserBio();