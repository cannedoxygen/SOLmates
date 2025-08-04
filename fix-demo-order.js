const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixDemoOrder() {
  // Get your user ID
  const { data: cannedUser } = await supabase
    .from('users')
    .select('id')
    .or('username.ilike.%canned%,display_name.ilike.%canned%')
    .single();
    
  // Get demo users
  const { data: demoUsers } = await supabase
    .from('users')
    .select('id, username')
    .in('username', ['toly', 'mike_s', 'mert_helius']);
  
  console.log('Demo users:', demoUsers);
  
  if (cannedUser && demoUsers) {
    // Delete any swipes on demo users
    for (const demoUser of demoUsers) {
      const { error } = await supabase
        .from('swipes')
        .delete()
        .eq('swiper_id', cannedUser.id)
        .eq('swiped_id', demoUser.id);
        
      console.log(`✅ Cleared swipe on ${demoUser.username}`);
    }
    
    // Set created_at timestamps to control order: mert (newest), mike, toly (oldest)
    const now = new Date();
    
    // Mert - most recent (appears first)
    await supabase
      .from('users')
      .update({ 
        created_at: new Date(now.getTime() - 1000).toISOString() // 1 second ago
      })
      .eq('username', 'mert_helius');
    console.log('✅ Set mert_helius as newest');
    
    // Mike - middle
    await supabase
      .from('users')
      .update({ 
        created_at: new Date(now.getTime() - 2000).toISOString() // 2 seconds ago
      })
      .eq('username', 'mike_s');
    console.log('✅ Set mike_s as middle');
    
    // Toly - oldest
    await supabase
      .from('users')
      .update({ 
        created_at: new Date(now.getTime() - 3000).toISOString() // 3 seconds ago
      })
      .eq('username', 'toly');
    console.log('✅ Set toly as oldest');
    
    console.log('\\n🎯 Order should now be: Mert → Mike → Toly');
  }
}

fixDemoOrder();