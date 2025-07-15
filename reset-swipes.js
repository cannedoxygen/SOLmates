const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseServiceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.IjrRlvyO2ZSa9R0wSZvvb7PbXDLYyJ5g4VGVLwTf6-k';

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function resetSwipes() {
  console.log('🔄 Resetting swipes...');
  
  const userId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  
  try {
    // Delete all swipes for the user
    const { error } = await supabase
      .from('swipes')
      .delete()
      .eq('swiper_id', userId);
    
    if (error) {
      console.error('❌ Error resetting swipes:', error);
    } else {
      console.log('✅ Swipes reset successfully!');
    }
  } catch (err) {
    console.error('❌ Error:', err);
  }
}

resetSwipes();