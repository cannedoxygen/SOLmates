const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function fixTestWebsite() {
  try {
    console.log('🔧 Removing test website URL from your profile...');
    
    // Clear the test website URL that was added during debugging
    const { data: updatedProfile, error } = await supabase
      .from('users')
      .update({ 
        website_url: null,
        updated_at: new Date().toISOString()
      })
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .select();
    
    if (error) {
      console.error('❌ Error:', error);
      return;
    }
    
    if (updatedProfile && updatedProfile.length > 0) {
      console.log('✅ Successfully cleared test website URL');
      console.log('📋 Updated profile:');
      console.log(`   Username: ${updatedProfile[0].username}`);
      console.log(`   GitHub URL: ${updatedProfile[0].github_url}`);
      console.log(`   Website URL: ${updatedProfile[0].website_url}`);
      
      if (updatedProfile[0].github_url && !updatedProfile[0].website_url) {
        console.log('\n✅ Now your Links card should only show GitHub');
      } else if (!updatedProfile[0].github_url && !updatedProfile[0].website_url) {
        console.log('\n✅ Now your Links card should be hidden completely');
      }
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

fixTestWebsite();