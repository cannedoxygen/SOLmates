const { createClient } = require('@supabase/supabase-js');

// Initialize Supabase client
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkProfileLinks() {
  try {
    console.log('🔍 Checking profile links for canned oxygen...');
    
    // Get your current profile
    const { data: profile, error } = await supabase
      .from('users')
      .select('id, username, github_url, website_url, twitter_url')
      .eq('privy_user_id', 'did:privy:cmcqo054u00mpjr0mnf2w8uxa')
      .single();
    
    if (error) {
      console.error('❌ Error:', error);
      return;
    }
    
    if (profile) {
      console.log('👤 Your current profile:');
      console.log(`   Username: ${profile.username}`);
      console.log(`   GitHub URL: ${profile.github_url}`);
      console.log(`   Website URL: ${profile.website_url}`);
      console.log(`   Twitter URL: ${profile.twitter_url}`);
      
      // Check if any links exist
      const hasGitHub = !!profile.github_url;
      const hasWebsite = !!profile.website_url;
      const shouldShowCard = hasGitHub || hasWebsite;
      
      console.log('\n📊 Link Status:');
      console.log(`   Has GitHub: ${hasGitHub}`);
      console.log(`   Has Website: ${hasWebsite}`);
      console.log(`   Should show Links card: ${shouldShowCard}`);
      
      if (!shouldShowCard) {
        console.log('\n⚠️ Links card will not appear because no GitHub or Website URL is set');
      } else {
        console.log('\n✅ Links card should appear with:');
        if (hasGitHub) console.log(`   - GitHub: ${profile.github_url}`);
        if (hasWebsite) console.log(`   - Website: ${profile.website_url}`);
      }
    } else {
      console.log('❌ Profile not found');
    }
    
  } catch (error) {
    console.error('❌ Error:', error);
  }
}

checkProfileLinks();