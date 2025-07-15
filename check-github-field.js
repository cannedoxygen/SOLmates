const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkGithubField() {
  try {
    console.log('🔍 Checking GitHub field for canned oxygen...');
    
    // Get canned oxygen's user profile
    const { data: user, error } = await supabase
      .from('users')
      .select('id, username, privy_user_id, github_url, twitter_url, website_url')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (error) {
      console.error('❌ Error:', error);
      return;
    }
    
    if (user) {
      console.log('👤 User profile:', {
        id: user.id,
        username: user.username,
        privy_user_id: user.privy_user_id,
        github_url: user.github_url,
        twitter_url: user.twitter_url,
        website_url: user.website_url
      });
      
      if (!user.github_url) {
        console.log('⚠️ GitHub URL is null/empty');
        
        // Check if we should add a test GitHub URL
        console.log('🔧 Adding test GitHub URL...');
        const { data: updated, error: updateError } = await supabase
          .from('users')
          .update({ github_url: 'https://github.com/cannedoxygen' })
          .eq('id', user.id)
          .select();
          
        if (updateError) {
          console.error('❌ Update error:', updateError);
        } else {
          console.log('✅ Updated user with GitHub URL:', updated);
        }
      } else {
        console.log('✅ GitHub URL exists:', user.github_url);
      }
    } else {
      console.log('❌ User not found');
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

checkGithubField();