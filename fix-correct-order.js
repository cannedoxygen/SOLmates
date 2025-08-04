const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function fixCorrectOrder() {
  const now = new Date();
  
  // Since the order is reversed, make Mert the OLDEST to appear first
  
  // Mert - oldest (appears first)
  await supabase
    .from('users')
    .update({ 
      created_at: new Date(now.getTime() - 10000).toISOString() // 10 seconds ago
    })
    .eq('username', 'mert_helius');
  console.log('✅ Set mert_helius as oldest (first)');
  
  // Mike - middle
  await supabase
    .from('users')
    .update({ 
      created_at: new Date(now.getTime() - 5000).toISOString() // 5 seconds ago
    })
    .eq('username', 'mike_s');
  console.log('✅ Set mike_s as middle (second)');
  
  // Toly - newest (appears last)
  await supabase
    .from('users')
    .update({ 
      created_at: new Date(now.getTime() - 1000).toISOString() // 1 second ago
    })
    .eq('username', 'toly');
  console.log('✅ Set toly as newest (third)');
  
  console.log('\\n🎯 Order should now be: Mert → Mike → Toly');
}

fixCorrectOrder();