require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function testProfileUpdate() {
  console.log('🧪 Testing profile update with real data...\n');
  
  try {
    // First, let's see what users exist
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('id, privy_user_id, username, bio, skills, looking_for, profile_completed')
      .limit(5);
    
    if (usersError) {
      console.error('❌ Error getting users:', usersError);
      return;
    }
    
    console.log(`📋 Found ${users.length} users in database:`);
    users.forEach((user, i) => {
      console.log(`${i + 1}. ${user.username} (${user.privy_user_id}) - Profile completed: ${user.profile_completed}`);
    });
    
    // Let's try to update one of these users
    if (users.length > 0) {
      const testUser = users[0];
      console.log(`\n🔄 Trying to update user: ${testUser.username}`);
      
      const updateData = {
        bio: 'Updated bio from test - ' + new Date().toISOString(),
        skills: ['React', 'TypeScript', 'Testing'],
        looking_for: ['Developer', 'Tester'],
        profile_completed: true,
        updated_at: new Date().toISOString(),
      };
      
      const { data: updatedUser, error: updateError } = await supabase
        .from('users')
        .update(updateData)
        .eq('privy_user_id', testUser.privy_user_id)
        .select()
        .single();
      
      if (updateError) {
        console.error('❌ Update failed:', updateError);
        console.error('❌ Error code:', updateError.code);
        console.error('❌ Error details:', updateError.details);
        console.error('❌ Error hint:', updateError.hint);
        console.error('❌ Error message:', updateError.message);
      } else {
        console.log('✅ Update successful!');
        console.log('📄 Updated user data:', {
          username: updatedUser.username,
          bio: updatedUser.bio,
          skills: updatedUser.skills,
          looking_for: updatedUser.looking_for,
          profile_completed: updatedUser.profile_completed
        });
      }
    }
    
  } catch (err) {
    console.error('❌ Unexpected error:', err);
  }
}

testProfileUpdate();