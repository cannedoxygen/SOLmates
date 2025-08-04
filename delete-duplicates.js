const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.EXPO_PUBLIC_SUPABASE_URL,
  process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY
);

async function deleteDuplicates() {
  try {
    console.log('🗑️ Deleting duplicate users...\n');

    // Get all users
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('*')
      .order('created_at', { ascending: true });

    if (usersError) throw usersError;

    const duplicateUsers = [
      users.find(u => u.username === 'Preciou70331026'), // This should map to phenool
      users.find(u => u.username === 'unbello2211')      // This should map to dev abdul
    ];

    const originalUsers = [
      users.find(u => u.username === 'phenool'),
      users.find(u => u.username === 'dev abdul')
    ];

    const privyIds = [
      'cmdrfcdby00usl50jtr0pai6g',
      'cmdr2e4gl00m4jl5dc09iy'
    ];

    // First, transfer all swipes and matches from duplicates to originals
    for (let i = 0; i < duplicateUsers.length; i++) {
      const duplicate = duplicateUsers[i];
      const original = originalUsers[i];
      const privyId = privyIds[i];

      if (!duplicate || !original) continue;

      console.log(`\n🔄 Transferring data from ${duplicate.username} to ${original.username}:`);

      // Transfer swipes where duplicate is the swiper
      const { data: swipesByDuplicate } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiper_id', duplicate.id);

      if (swipesByDuplicate && swipesByDuplicate.length > 0) {
        console.log(`  Moving ${swipesByDuplicate.length} swipes by duplicate...`);
        
        for (const swipe of swipesByDuplicate) {
          // Check if original already has this swipe
          const { data: existingSwipe } = await supabase
            .from('swipes')
            .select('*')
            .eq('swiper_id', original.id)
            .eq('swiped_id', swipe.swiped_id)
            .single();

          if (!existingSwipe) {
            // Update swipe to point to original
            await supabase
              .from('swipes')
              .update({ swiper_id: original.id })
              .eq('id', swipe.id);
          } else {
            // Delete duplicate swipe
            await supabase.from('swipes').delete().eq('id', swipe.id);
          }
        }
      }

      // Transfer swipes where duplicate is the target
      const { data: swipesOnDuplicate } = await supabase
        .from('swipes')
        .select('*')
        .eq('swiped_id', duplicate.id);

      if (swipesOnDuplicate && swipesOnDuplicate.length > 0) {
        console.log(`  Moving ${swipesOnDuplicate.length} swipes on duplicate...`);
        
        for (const swipe of swipesOnDuplicate) {
          // Check if someone already swiped on original
          const { data: existingSwipe } = await supabase
            .from('swipes')
            .select('*')
            .eq('swiper_id', swipe.swiper_id)
            .eq('swiped_id', original.id)
            .single();

          if (!existingSwipe) {
            // Update swipe to point to original
            await supabase
              .from('swipes')
              .update({ swiped_id: original.id })
              .eq('id', swipe.id);
          } else {
            // Delete duplicate swipe
            await supabase.from('swipes').delete().eq('id', swipe.id);
          }
        }
      }

      // Transfer matches
      const { data: matchesAsUser1 } = await supabase
        .from('matches')
        .select('*')
        .eq('user1_id', duplicate.id);

      const { data: matchesAsUser2 } = await supabase
        .from('matches')
        .select('*')
        .eq('user2_id', duplicate.id);

      const allMatches = [...(matchesAsUser1 || []), ...(matchesAsUser2 || [])];
      
      if (allMatches.length > 0) {
        console.log(`  Moving ${allMatches.length} matches...`);
        
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

          if (!existingMatch) {
            // Update match to use original user
            await supabase
              .from('matches')
              .update({
                user1_id: user1_id,
                user2_id: user2_id
              })
              .eq('id', match.id);
          } else {
            // Delete duplicate match
            await supabase.from('matches').delete().eq('id', match.id);
          }
        }
      }

      // Now delete the duplicate user
      console.log(`  Deleting duplicate user ${duplicate.username}...`);
      const { error: deleteError } = await supabase
        .from('users')
        .delete()
        .eq('id', duplicate.id);

      if (deleteError) {
        console.error(`  ❌ Error deleting duplicate: ${deleteError.message}`);
      } else {
        console.log(`  ✅ Deleted duplicate user`);
      }

      // Now update the original with the correct Privy ID
      console.log(`  Updating ${original.username} with Privy ID...`);
      const { error: updateError } = await supabase
        .from('users')
        .update({ privy_user_id: privyId })
        .eq('id', original.id);

      if (updateError) {
        console.error(`  ❌ Error updating Privy ID: ${updateError.message}`);
      } else {
        console.log(`  ✅ Updated Privy ID`);
      }
    }

    console.log('\n✨ Final user list:');
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

// Run the cleanup
deleteDuplicates();