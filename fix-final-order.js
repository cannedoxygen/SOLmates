const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixFinalOrder() {
  const now = new Date();
  
  // App shows NEWEST first, so:
  
  // Mert - newest timestamp (appears FIRST)
  await supabase
    .from('users')
    .update({ 
      created_at: new Date(now.getTime() - 1000).toISOString() // 1 second ago
    })
    .eq('username', 'mert_helius');
  console.log('✅ Set mert_helius as newest (first)');
  
  // Mike - middle timestamp (appears SECOND)
  await supabase
    .from('users')
    .update({ 
      created_at: new Date(now.getTime() - 5000).toISOString() // 5 seconds ago
    })
    .eq('username', 'mike_s');
  console.log('✅ Set mike_s as middle (second)');
  
  // Toly - oldest timestamp (appears THIRD)
  await supabase
    .from('users')
    .update({ 
      created_at: new Date(now.getTime() - 10000).toISOString() // 10 seconds ago
    })
    .eq('username', 'toly');
  console.log('✅ Set toly as oldest (third)');
  
  console.log('\\n🎯 Order should now be: Mert → Mike → Toly');
}

fixFinalOrder();