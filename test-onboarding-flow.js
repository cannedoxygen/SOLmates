require('dotenv').config();

// Import the ProfileService exactly as it's used in the app
const { ProfileService } = require('./lib/services/profileService');

async function testOnboardingFlow() {
  console.log('🧪 Testing onboarding flow...\n');
  
  try {
    // Simulate a real Privy user ID (this should be the format Privy uses)
    const mockPrivyUserId = 'did:privy:' + Date.now();
    
    console.log('👤 Mock Privy User ID:', mockPrivyUserId);
    
    // Simulate the onboarding data
    const onboardingData = {
      username: 'testuser_onboard',
      bio: 'This is my test bio for onboarding',
      skills: ['React', 'TypeScript', 'Web3'],
      looking_for: ['Developer', 'Designer']
    };
    
    console.log('📝 Onboarding data:', onboardingData);
    
    // Call the exact same function as onboarding
    console.log('\n🔄 Calling ProfileService.updateUserProfile...');
    
    const result = await ProfileService.updateUserProfile(mockPrivyUserId, onboardingData);
    
    console.log('✅ ProfileService.updateUserProfile succeeded!');
    console.log('📄 Result:', {
      id: result.id,
      username: result.username,
      bio: result.bio,
      skills: result.skills,
      looking_for: result.looking_for,
      profile_completed: result.profile_completed
    });
    
    // Verify the data was saved correctly
    console.log('\n🔍 Verifying saved data...');
    const savedProfile = await ProfileService.getUserProfile(mockPrivyUserId);
    
    if (savedProfile) {
      console.log('✅ Profile found in database:');
      console.log('📄 Saved profile:', {
        username: savedProfile.username,
        bio: savedProfile.bio,
        skills: savedProfile.skills,
        looking_for: savedProfile.looking_for,
        profile_completed: savedProfile.profile_completed
      });
    } else {
      console.error('❌ Profile not found after save!');
    }
    
    // Clean up
    console.log('\n🧹 Cleaning up test data...');
    const { createClient } = require('@supabase/supabase-js');
    const supabase = createClient(
      process.env.EXPO_PUBLIC_SUPABASE_URL,
      process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
    );
    
    await supabase
      .from('users')
      .delete()
      .eq('privy_user_id', mockPrivyUserId);
    
    console.log('✅ Test completed successfully!');
    
  } catch (error) {
    console.error('❌ Test failed:', error);
    console.error('❌ Error message:', error.message);
    console.error('❌ Error stack:', error.stack);
  }
}

testOnboardingFlow();