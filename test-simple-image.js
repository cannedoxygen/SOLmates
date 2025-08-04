const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(process.env.EXPO_PUBLIC_SUPABASE_URL, process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);

async function testWithSimpleUrl() {
  // Test with a simple, known working image URL
  const { error } = await supabase
    .from('users')
    .update({ avatar_url: 'https://picsum.photos/400/400' })
    .eq('username', 'toly');
  
  if (!error) {
    console.log('✅ Set toly to test image: https://picsum.photos/400/400');
    console.log('If this shows up, then GitHub raw URLs are the problem');
    console.log('If this STILL does not show, then there is an app caching issue');
  }
}

testWithSimpleUrl();