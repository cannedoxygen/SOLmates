require('dotenv').config({ path: '.env' });
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

async function debugMatchNames() {
  console.log('🔍 Debugging match names issue...\n');

  try {
    // First, find the user "canned oxygen"
    const { data: cannedUser, error: userError } = await supabase
      .from('users')
      .select('*')
      .eq('username', 'canned oxygen')
      .single();

    if (userError || !cannedUser) {
      console.error('❌ Could not find user "canned oxygen":', userError);
      return;
    }

    console.log('✅ Found user "canned oxygen":', {
      id: cannedUser.id,
      username: cannedUser.username,
      privy_user_id: cannedUser.privy_user_id
    });

    // Get recent swipes by canned oxygen
    const { data: recentSwipes, error: swipesError } = await supabase
      .from('swipes')
      .select(`
        *,
        swiped_user:users!swipes_swiped_id_fkey(id, username, avatar_url)
      `)
      .eq('swiper_id', cannedUser.id)
      .eq('direction', 'right')
      .order('created_at', { ascending: false })
      .limit(5);

    if (swipesError) {
      console.error('❌ Error fetching swipes:', swipesError);
      return;
    }

    console.log('\n📊 Recent right swipes by canned oxygen:');
    recentSwipes?.forEach(swipe => {
      console.log(`- Swiped on: ${swipe.swiped_user?.username || 'Unknown'} (${swipe.swiped_id}) at ${swipe.created_at}`);
    });

    // Get matches involving canned oxygen
    const { data: matches, error: matchError } = await supabase
      .from('matches')
      .select(`
        *,
        user1:users!matches_user1_id_fkey(id, username),
        user2:users!matches_user2_id_fkey(id, username)
      `)
      .or(`user1_id.eq.${cannedUser.id},user2_id.eq.${cannedUser.id}`)
      .order('matched_at', { ascending: false })
      .limit(5);

    if (matchError) {
      console.error('❌ Error fetching matches:', matchError);
      return;
    }

    console.log('\n💑 Recent matches:');
    matches?.forEach(match => {
      const otherUser = match.user1_id === cannedUser.id ? match.user2 : match.user1;
      console.log(`- Matched with: ${otherUser?.username || 'Unknown'} at ${match.matched_at}`);
      console.log(`  Match ID: ${match.id}`);
      console.log(`  User1: ${match.user1?.username} (${match.user1_id})`);
      console.log(`  User2: ${match.user2?.username} (${match.user2_id})`);
    });

    // Check for any swipes where swiped_id matches canned oxygen's ID
    const { data: swipesOnCanned, error: swipesOnCannedError } = await supabase
      .from('swipes')
      .select(`
        *,
        swiper:users!swipes_swiper_id_fkey(id, username)
      `)
      .eq('swiped_id', cannedUser.id)
      .eq('direction', 'right')
      .order('created_at', { ascending: false })
      .limit(5);

    console.log('\n👀 Who swiped right on canned oxygen:');
    swipesOnCanned?.forEach(swipe => {
      console.log(`- ${swipe.swiper?.username || 'Unknown'} (${swipe.swiper_id}) at ${swipe.created_at}`);
    });

  } catch (error) {
    console.error('❌ Error:', error);
  }

  process.exit(0);
}

debugMatchNames();