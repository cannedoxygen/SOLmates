const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testBasicConnectivity() {
  console.log('🌐 Testing basic connectivity...');
  console.log('URL:', supabaseUrl);
  
  try {
    // Test basic connection
    const { data, error } = await supabase
      .from('users')
      .select('count')
      .limit(1);
    
    if (error) {
      console.error('❌ Connection test failed:', error.message);
    } else {
      console.log('✅ Basic connectivity working!');
    }
    
    // Test health endpoint
    console.log('🔍 Testing health endpoint...');
    const response = await fetch(`${supabaseUrl}/rest/v1/`);
    console.log('📊 Health status:', response.status);
    
  } catch (err) {
    console.error('❌ Connectivity error:', err.message);
  }
}

testBasicConnectivity();