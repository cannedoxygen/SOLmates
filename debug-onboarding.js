require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function debugOnboarding() {
  console.log('🔍 Debugging onboarding save issue...\n');
  
  // Check environment variables
  console.log('Environment check:');
  console.log('- SUPABASE_URL:', process.env.EXPO_PUBLIC_SUPABASE_URL ? '✅ Set' : '❌ Missing');
  console.log('- SUPABASE_KEY:', process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY ? '✅ Set' : '❌ Missing');
  console.log('');
  
  try {
    // Get a sample user to see the schema
    console.log('📋 Checking users table schema...');
    const { data: sampleUser, error: schemaError } = await supabase
      .from('users')
      .select('*')
      .limit(1);
    
    if (schemaError) {
      console.error('❌ Error getting schema:', schemaError);
      return;
    }
    
    if (sampleUser && sampleUser.length > 0) {
      console.log('\n✅ Users table columns:');
      Object.keys(sampleUser[0]).forEach(key => {
        console.log(`  - ${key}: ${typeof sampleUser[0][key]} (${sampleUser[0][key] === null ? 'null' : 'has value'})`);
      });
    }
    
    // Check for a specific user to see their data
    console.log('\n📋 Looking for users with completed profiles...');
    const { data: completedProfiles, error: profileError } = await supabase
      .from('users')
      .select('id, privy_user_id, username, bio, skills, looking_for, profile_completed')
      .eq('profile_completed', true)
      .limit(3);
    
    if (profileError) {
      console.error('❌ Error getting profiles:', profileError);
    } else if (completedProfiles && completedProfiles.length > 0) {
      console.log(`\n✅ Found ${completedProfiles.length} completed profiles:`);
      completedProfiles.forEach((profile, i) => {
        console.log(`\nProfile ${i + 1}:`);
        console.log(`  - Username: ${profile.username}`);
        console.log(`  - Bio: ${profile.bio ? profile.bio.substring(0, 50) + '...' : 'No bio'}`);
        console.log(`  - Skills: ${profile.skills ? profile.skills.join(', ') : 'None'}`);
        console.log(`  - Looking for: ${profile.looking_for ? profile.looking_for.join(', ') : 'None'}`);
      });
    } else {
      console.log('\n⚠️  No completed profiles found');
    }
    
    // Test an update
    console.log('\n🧪 Testing profile update capability...');
    const testPrivyId = 'test_' + Date.now();
    
    // First create a test user
    const { data: testUser, error: createError } = await supabase
      .from('users')
      .insert([{
        privy_user_id: testPrivyId,
        username: 'test_user',
        bio: 'Test bio',
        skills: ['React', 'TypeScript'],
        looking_for: ['Developer'],
        profile_completed: true,
        is_active: true,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      }])
      .select()
      .single();
    
    if (createError) {
      console.error('❌ Failed to create test user:', createError);
    } else {
      console.log('✅ Test user created successfully');
      
      // Now try to update it
      const { data: updatedUser, error: updateError } = await supabase
        .from('users')
        .update({
          bio: 'Updated bio',
          skills: ['React', 'TypeScript', 'Node.js'],
          updated_at: new Date().toISOString()
        })
        .eq('privy_user_id', testPrivyId)
        .select()
        .single();
      
      if (updateError) {
        console.error('❌ Failed to update test user:', updateError);
      } else {
        console.log('✅ Test user updated successfully');
      }
      
      // Clean up
      await supabase
        .from('users')
        .delete()
        .eq('privy_user_id', testPrivyId);
      console.log('🧹 Test user cleaned up');
    }
    
  } catch (err) {
    console.error('❌ Unexpected error:', err);
  }
}

debugOnboarding();