// Test minimal React Native style connection without AsyncStorage
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

// Test 1: Minimal configuration (like browser/web)
const supabaseMinimal = createClient(supabaseUrl, supabaseKey);

// Test 2: Configuration closer to React Native but without AsyncStorage
const supabaseRNStyle = createClient(supabaseUrl, supabaseKey, {
  auth: {
    autoRefreshToken: true,
    persistSession: false, // Disable session persistence
    detectSessionInUrl: false,
  },
  global: {
    headers: {
      'Content-Type': 'application/json',
    },
  },
});

async function testConnections() {
  console.log('🧪 Testing different Supabase configurations...');
  
  // Test minimal config
  try {
    console.log('\n1. Testing minimal configuration...');
    const { data, error } = await supabaseMinimal.from('users').select('count').limit(1);
    if (error) {
      console.error('❌ Minimal config failed:', error);
    } else {
      console.log('✅ Minimal config works');
    }
  } catch (err) {
    console.error('❌ Minimal config error:', err);
  }

  // Test RN-style config
  try {
    console.log('\n2. Testing RN-style configuration...');
    const { data, error } = await supabaseRNStyle.from('users').select('count').limit(1);
    if (error) {
      console.error('❌ RN-style config failed:', error);
    } else {
      console.log('✅ RN-style config works');
    }
  } catch (err) {
    console.error('❌ RN-style config error:', err);
  }

  // Test specific query that app is doing
  try {
    console.log('\n3. Testing specific user query...');
    const { data, error } = await supabaseRNStyle
      .from('users')
      .select('*')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (error) {
      console.error('❌ User query failed:', error);
    } else {
      console.log('✅ User query works:', data?.username);
    }
  } catch (err) {
    console.error('❌ User query error:', err);
  }
}

testConnections();