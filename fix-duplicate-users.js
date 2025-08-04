const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function fixDuplicateUsers() {
  try {
    console.log('🔧 Fixing duplicate users...\n');

    // Get all users
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('*')
      .order('created_at', { ascending: true });

    if (usersError) throw usersError;

    console.log('Current users:');
    users.forEach(user => {
      console.log(`  - ${user.username} (${user.id}) - Created: ${new Date(user.created_at).toLocaleString()}`);
    });

    // Identify duplicates and originals
    const duplicates = [
      {
        duplicate: users.find(u => u.username === 'Preciou70331026'),
        original: users.find(u => u.username === 'phenool'),
        privyId: 'cmdrfcdby00usl50jtr0pai6g'
      },
      {
        duplicate: users.find(u => u.username === 'unbello2211'),
        original: users.find(u => u.username === 'dev abdul'),
        privyId: 'cmdr2e4gl00m4jl5dc09iy'
      }
    ];

    for (const { duplicate, original, privyId } of duplicates) {
      if (!duplicate || !original) {
        console.log(`Skipping - couldn't find both users`);
        continue;
      }

      console.log(`\n🔄 Processing ${duplicate.username} -> ${original.username}:`);

      // 1. Update the original user with the correct Privy ID
      console.log(`  Updating ${original.username} with Privy ID ${privyId}...`);
      const { error: updateError } = await supabase
        .from('users')
        .update({ privy_user_id: privyId })
        .eq('id', original.id);

      if (updateError) {
        console.error(`  ❌ Error updating original user: ${updateError.message}`);
        continue;
      }

      // 2. Move swipes from duplicate to original
      console.log(`  Moving swipes from duplicate to original...`);
      
      // Get swipes by duplicate user
      const { data: swipesByDuplicate } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', duplicate.id);

      // Get swipes on duplicate user  
      const { data: swipesOnDuplicate } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiped_id', duplicate.id);

      // Update swiper_id for swipes by duplicate
      if (swipesByDuplicate && swipesByDuplicate.length > 0) {
        for (const swipe of swipesByDuplicate) {
          // Check if original already has this swipe
          const { data: existingSwipe } = await supabase
            .from('swipes')
            .select('*')
            .eq('swiper_id', original.id)
            .eq('swiped_id', swipe.swiped_id)
            .single();

          if (existingSwipe) {
            // Delete duplicate swipe
            await supabase.from('swipes').delete().eq('id', swipe.id);
          } else {
            // Update swipe to point to original
            await supabase
              .from('swipes')
              .update({ swiper_id: original.id })
              .eq('id', swipe.id);
          }
        }
      }

      // Update swiped_id for swipes on duplicate
      if (swipesOnDuplicate && swipesOnDuplicate.length > 0) {
        for (const swipe of swipesOnDuplicate) {
          // Check if someone already swiped on original
          const { data: existingSwipe } = await supabase
            .from('swipes')
            .select('*')
            .eq('swiper_id', swipe.swiper_id)
            .eq('swiped_id', original.id)
            .single();

          if (existingSwipe) {
            // Delete duplicate swipe
            await supabase.from('swipes').delete().eq('id', swipe.id);
          } else {
            // Update swipe to point to original
            await supabase
              .from('swipes')
              .update({ swiped_id: original.id })
              .eq('id', swipe.id);
          }
        }
      }

      // 3. Update matches involving duplicate
      console.log(`  Updating matches...`);
      
      // Get matches where duplicate is user1
      const { data: matchesAsUser1 } = await supabase
        .from('matches')
        .select('*')
        .eq('user1_id', duplicate.id);

      // Get matches where duplicate is user2
      const { data: matchesAsUser2 } = await supabase
        .from('matches')
        .select('*')
        .eq('user2_id', duplicate.id);

      // Update or merge matches
      const allMatches = [...(matchesAsUser1 || []), ...(matchesAsUser2 || [])];
      
      for (const match of allMatches) {
        const otherUserId = match.user1_id === duplicate.id ? match.user2_id : match.user1_id;
        
        // Determine correct user1_id and user2_id (smaller first)
        const user1_id = original.id < otherUserId ? original.id : otherUserId;
        const user2_id = original.id < otherUserId ? otherUserId : original.id;
        
        // Check if match already exists with original
        const { data: existingMatch } = await supabase
          .from('matches')
          .select('*')
          .eq('user1_id', user1_id)
          .eq('user2_id', user2_id)
          .single();

        if (existingMatch) {
          // Delete duplicate match
          await supabase.from('matches').delete().eq('id', match.id);
        } else {
          // Update match to use original user
          await supabase
            .from('matches')
            .update({
              user1_id: user1_id,
              user2_id: user2_id
            })
            .eq('id', match.id);
        }
      }

      // 4. Delete the duplicate user
      console.log(`  Deleting duplicate user...`);
      const { error: deleteError } = await supabase
        .from('users')
        .delete()
        .eq('id', duplicate.id);

      if (deleteError) {
        console.error(`  ❌ Error deleting duplicate: ${deleteError.message}`);
      } else {
        console.log(`  ✅ Successfully removed duplicate ${duplicate.username}`);
      }
    }

    console.log('\n✨ Cleanup complete! Final user list:');
    const { data: finalUsers } = await supabase
      .from('users')
      .select('*')
      .order('created_at', { ascending: true });

    finalUsers.forEach(user => {
      console.log(`  - ${user.username} (Privy: ${user.privy_user_id})`);
    });

  } catch (error) {
    console.error('Error:', error);
  }
}

// Run the fix
fixDuplicateUsers();