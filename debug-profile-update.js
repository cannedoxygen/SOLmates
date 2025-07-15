const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugProfileUpdate() {
  try {
    const privyUserId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
    console.log('🔍 Debugging profile update for:', privyUserId);
    
    // Check for existing users
    const { data: existingUsers, error: fetchError } = await supabase
      .from('users')
      .select('*')
      .eq('privy_user_id', privyUserId);
    
    if (fetchError) {
      console.error('❌ Fetch error:', fetchError);
      return;
    }
    
    console.log('📋 Existing users found:', existingUsers?.length);
    
    if (existingUsers && existingUsers.length > 0) {
      console.log('👤 Existing user details:');
      existingUsers.forEach((user, index) => {
        console.log(`  ${index + 1}. ID: ${user.id}`);
        console.log(`     Username: ${user.username}`);
        console.log(`     Privy ID: ${user.privy_user_id}`);
        console.log(`     GitHub: ${user.github_url}`);
        console.log(`     Website: ${user.website_url}`);
        console.log(`     Profile Completed: ${user.profile_completed}`);
        console.log(`     Created: ${user.created_at}`);
        console.log(`     Updated: ${user.updated_at}`);
        console.log('');
      });
      
      // Try a test update
      const testData = {
        bio: 'Updated bio for testing - ' + new Date().toISOString(),
        github_url: 'https://github.com/cannedoxygen',
        website_url: 'https://testwebsite.com',
        updated_at: new Date().toISOString(),
      };
      
      console.log('🧪 Attempting test update...');
      const { data: updatedUser, error: updateError } = await supabase
        .from('users')
        .update(testData)
        .eq('id', existingUsers[0].id)
        .select()
        .single();
      
      if (updateError) {
        console.error('❌ Test update failed:', updateError);
      } else {
        console.log('✅ Test update successful:', {
          id: updatedUser.id,
          bio: updatedUser.bio,
          github_url: updatedUser.github_url,
          website_url: updatedUser.website_url
        });
      }
    } else {
      console.log('❌ No existing user found');
    }
    
  } catch (error) {
    console.error('❌ Debug error:', error);
  }
}

debugProfileUpdate();