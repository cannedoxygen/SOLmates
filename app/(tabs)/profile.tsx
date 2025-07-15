import { useState, useEffect } from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  ScrollView, 
  Pressable,
  Image,
  Alert,
  Platform,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { useWallet } from '../../hooks/useWallet';
import { supabase } from '../../lib/supabase/client';
import { ProfileService } from '../../lib/services/profileService';
import { ProfileCardViewer } from '../../components/profile/ProfileCardViewer';
import { UserProfile } from '../../lib/matching/matchEngine';
import { Ionicons } from '@expo/vector-icons';

export default function Profile() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user, logout } = usePrivy();
  const { disconnect, address } = useWallet();
  const [showProfileViewer, setShowProfileViewer] = useState(false);
  const [userProfile, setUserProfile] = useState<UserProfile | null>(null);

  // Extract Twitter and wallet data from linked_accounts
  const twitterAccount = user?.linked_accounts?.find(account => account.type === 'twitter_oauth');
  const walletAccount = user?.linked_accounts?.find(account => account.type === 'wallet');
  
  // Get high-res Twitter profile picture
  const getHighResTwitterImage = (url) => {
    if (!url) return url;
    // Replace _normal with _400x400 for higher resolution
    return url.replace('_normal.', '_400x400.');
  };
  
  console.log('🔍 Profile Debug - Twitter account:', twitterAccount);
  console.log('🔍 Profile Debug - Wallet account:', walletAccount);
  
  // Test Supabase connection
  useEffect(() => {
    const testSupabaseConnection = async () => {
      try {
        console.log('🔄 Testing Supabase connection...');
        console.log('🔍 Supabase URL:', process.env.EXPO_PUBLIC_SUPABASE_URL);
        console.log('🔍 Supabase Key exists:', !!process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY);
        console.log('🔍 Platform:', Platform.OS);
        
        // Try a basic fetch first to test network connectivity
        try {
          console.log('🌐 Testing basic network fetch...');
          const response = await fetch(process.env.EXPO_PUBLIC_SUPABASE_URL + '/rest/v1/', {
            method: 'GET',
            headers: {
              'apikey': process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY || '',
              'Authorization': `Bearer ${process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY}`,
              'Content-Type': 'application/json',
            },
          });
          console.log('🌐 Network fetch status:', response.status);
          if (response.ok) {
            const responseText = await response.text();
            console.log('🌐 Network fetch response:', responseText.substring(0, 200));
          }
        } catch (fetchError) {
          console.error('❌ Basic network fetch failed:', fetchError);
          console.error('❌ Fetch error details:', JSON.stringify(fetchError, null, 2));
        }
        
        // Now try Supabase client
        console.log('🔄 Testing Supabase client...');
        const { data, error } = await supabase.from('users').select('count').limit(1);
        if (error) {
          console.error('❌ Supabase connection error:', error);
          console.error('❌ Error details:', JSON.stringify(error, null, 2));
        } else {
          console.log('✅ Supabase connection successful:', data);
        }
      } catch (err) {
        console.error('❌ Supabase connection failed:', err);
        console.error('❌ Connection error details:', JSON.stringify(err, null, 2));
      }
    };
    
    testSupabaseConnection();
  }, []);

  const [stats, setStats] = useState({
    matches: 0,
    badges: 0,
    projects: 0,
  });

  const [supabaseProfile, setSupabaseProfile] = useState(null);

  // Load real-time stats (matches, badges, projects)
  useEffect(() => {
    const loadStats = async () => {
      if (!user?.id) return;
      
      try {
        // First get the Supabase user ID for this Privy user
        const { data: supabaseUser } = await supabase
          .from('users')
          .select('id')
          .eq('privy_user_id', user.id)
          .single();
          
        if (!supabaseUser) {
          console.log('No Supabase user found for stats');
          return;
        }
        
        // Load matches count
        const { count: matchesCount } = await supabase
          .from('matches')
          .select('*', { count: 'exact', head: true })
          .or(`user1_id.eq.${supabaseUser.id},user2_id.eq.${supabaseUser.id}`);
        
        // Load collaborative badges count (badges earned through collaborations)
        let badgesCount = 0;
        try {
          const { count } = await supabase
            .from('user_badges')
            .select('*', { count: 'exact', head: true })
            .eq('user_id', supabaseUser.id);
          badgesCount = count || 0;
        } catch (badgeError) {
          console.log('Badges table may not exist yet:', badgeError);
        }
        
        // Load collaborative projects count (projects where user is a member)
        let projectsCount = 0;
        try {
          const { count } = await supabase
            .from('project_members')
            .select('*', { count: 'exact', head: true })
            .eq('user_id', supabaseUser.id);
          projectsCount = count || 0;
        } catch (projectError) {
          console.log('Project members table may not exist yet:', projectError);
        }
        
        setStats({
          matches: matchesCount || 0,
          badges: badgesCount,
          projects: projectsCount
        });
      } catch (error) {
        console.error('Error loading stats:', error);
      }
    };

    loadStats();

    // Also load Supabase profile data
    const loadSupabaseProfile = async () => {
      if (!user?.id) return;
      
      try {
        console.log('🔍 Searching for profile with Privy ID:', user.id);
        
        // First try by privy_user_id in users table (correct table)
        const { data: profile, error: directError } = await supabase
          .from('users')
          .select('*')
          .eq('privy_user_id', user.id)
          .single();
        
        if (profile) {
          console.log('✅ Found profile by direct ID match:', profile);
          setSupabaseProfile(profile);
          return;
        }
        
        console.log('⚠️ No direct ID match, trying Twitter username match...');
        
        // Try matching by Twitter username if direct ID fails
        if (twitterAccount?.username) {
          const { data: profileByTwitter } = await supabase
            .from('users')
            .select('*')
            .eq('twitter_username', twitterAccount.username)
            .single();
          
          if (profileByTwitter) {
            console.log('✅ Found profile by Twitter username:', profileByTwitter);
            setSupabaseProfile(profileByTwitter);
            return;
          }
        }
        
        // Let's see what profiles exist in the database
        console.log('🔍 Let me check what users exist...');
        const { data: allProfiles } = await supabase
          .from('users')
          .select('id, privy_user_id, username, twitter_username, avatar_url, bio')
          .limit(5);
        
        console.log('📋 Sample profiles in database:', allProfiles);
        console.log('❌ No matching profile found for user:', user.id);
        
        // Auto-sync with ProfileService if no profile exists
        console.log('🔄 Attempting to sync Privy user with Supabase...');
        try {
          const syncedProfile = await ProfileService.syncPrivyUser(user, walletAccount?.address);
          console.log('✅ Profile synced successfully:', syncedProfile);
          setSupabaseProfile(syncedProfile);
        } catch (syncError) {
          console.error('❌ Failed to sync profile:', syncError);
        }
        
      } catch (error) {
        console.error('Error loading Supabase profile:', error);
      }
    };

    loadSupabaseProfile();
  }, [user?.id]);

  const handleSignOut = async () => {
    Alert.alert(
      'Sign Out',
      'Are you sure you want to sign out?',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Sign Out',
          style: 'destructive',
          onPress: async () => {
            await disconnect();
            await logout();
          },
        },
      ]
    );
  };

  const menuItems = [
    {
      icon: 'card-outline',
      title: 'View Profile Cards',
      subtitle: 'See how others see your profile',
      onPress: () => router.push('/profile-card'),
    },
    {
      icon: 'wallet-outline',
      title: 'Wallet',
      subtitle: 'Manage your SOL and tokens',
      onPress: () => router.push('/wallet'),
    },
    {
      icon: 'star-outline',
      title: 'Premium',
      subtitle: 'Upgrade for more features',
      onPress: () => router.push('/premium'),
    },
    {
      icon: 'stats-chart-outline',
      title: 'Stats',
      subtitle: 'View your match statistics',
      onPress: () => router.push('/stats'),
    },
    {
      icon: 'notifications-outline',
      title: 'Notifications',
      subtitle: 'Manage notification settings',
      onPress: () => router.push('/notifications'),
    },
    {
      icon: 'settings-outline',
      title: 'Settings',
      subtitle: 'App preferences and privacy',
      onPress: () => router.push('/settings'),
    },
    {
      icon: 'diamond-outline',
      title: 'Mint Collab Badge',
      subtitle: 'Create a collaboration NFT',
      onPress: () => router.push('/badge-mint'),
    },
    {
      icon: 'flash-outline',
      title: 'Hackathon Mode',
      subtitle: 'Priority matching for urgent projects',
      onPress: () => router.push('/hackathon-mode'),
    },
  ];

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <ScrollView
        style={styles.scrollView}
        contentContainerStyle={[
          styles.content,
          { paddingTop: insets.top + 20, paddingBottom: insets.bottom + 40 },
        ]}
        showsVerticalScrollIndicator={false}
      >
        <View style={styles.header}>
          <View style={styles.profileSection}>
            <View style={styles.avatarContainer}>
              {twitterAccount?.profile_picture_url ? (
                <Image 
                  source={{ uri: getHighResTwitterImage(twitterAccount.profile_picture_url) }} 
                  style={styles.avatar}
                  onLoad={() => console.log('✅ Twitter image loaded successfully')}
                  onError={(error) => console.error('❌ Twitter image failed to load:', error)}
                />
              ) : supabaseProfile?.twitter_avatar_url ? (
                <Image 
                  source={{ uri: supabaseProfile.twitter_avatar_url }} 
                  style={styles.avatar}
                  onLoad={() => console.log('✅ Supabase Twitter image loaded successfully')}
                  onError={(error) => console.error('❌ Supabase Twitter image failed to load:', error)}
                />
              ) : supabaseProfile?.avatar_url ? (
                <Image 
                  source={{ uri: supabaseProfile.avatar_url }} 
                  style={styles.avatar}
                  onLoad={() => console.log('✅ Supabase image loaded successfully')}
                  onError={(error) => console.error('❌ Supabase image failed to load:', error)}
                />
              ) : (
                <LinearGradient
                  colors={['#9945FF', '#7B3FF2']}
                  style={styles.avatarPlaceholder}
                >
                  <Text style={styles.avatarText}>
                    {(twitterAccount?.name || twitterAccount?.username || supabaseProfile?.display_name || supabaseProfile?.username)?.charAt(0).toUpperCase() || '?'}
                  </Text>
                </LinearGradient>
              )}
            </View>

            <View style={styles.userInfo}>
              <Text style={styles.username}>
                {supabaseProfile?.display_name || twitterAccount?.name || supabaseProfile?.username || twitterAccount?.username || 'Unknown'}
              </Text>
              <Text style={styles.bio} numberOfLines={2}>
                {supabaseProfile?.bio || `@${supabaseProfile?.twitter_username || twitterAccount?.username}` || 'Complete your profile to get started'}
              </Text>
              <View style={styles.connectionStatus}>
                <View style={styles.connectionItem}>
                  <Ionicons 
                    name="logo-twitter" 
                    size={16} 
                    color={twitterAccount ? '#1DA1F2' : '#666'} 
                  />
                  <Text style={[styles.connectionText, { color: twitterAccount ? '#1DA1F2' : '#666' }]}>
                    {twitterAccount ? 'Twitter Connected' : 'Twitter'}
                  </Text>
                </View>
                <View style={styles.connectionItem}>
                  <Ionicons 
                    name="wallet-outline" 
                    size={16} 
                    color={walletAccount ? '#9945FF' : '#666'} 
                  />
                  <Text style={[styles.connectionText, { color: walletAccount ? '#9945FF' : '#666' }]}>
                    {walletAccount ? 'Wallet Connected' : 'No Wallet'}
                  </Text>
                </View>
              </View>
            </View>
          </View>

          <View style={styles.skillsContainer}>
            {user?.skills?.slice(0, 3).map((skill, index) => (
              <View key={index} style={styles.skillTag}>
                <Text style={styles.skillText}>{skill}</Text>
              </View>
            ))}
            {(user?.skills?.length || 0) > 3 && (
              <Text style={styles.moreSkills}>+{(user?.skills?.length || 0) - 3}</Text>
            )}
          </View>
        </View>

        <View style={styles.statsContainer}>
          <View style={styles.statItem}>
            <Text style={styles.statNumber}>{stats.matches}</Text>
            <Text style={styles.statLabel}>Matches</Text>
          </View>
          <View style={styles.statItem}>
            <Text style={styles.statNumber}>{stats.badges}</Text>
            <Text style={styles.statLabel}>Badges</Text>
          </View>
          <View style={styles.statItem}>
            <Text style={styles.statNumber}>{stats.projects}</Text>
            <Text style={styles.statLabel}>Projects</Text>
          </View>
        </View>

        <View style={styles.menuContainer}>
          {menuItems.map((item, index) => (
            <Pressable
              key={index}
              style={({ pressed }) => [
                styles.menuItem,
                pressed && styles.menuItemPressed,
              ]}
              onPress={item.onPress}
            >
              <View style={styles.menuIcon}>
                <Ionicons name={item.icon as any} size={24} color="#9945FF" />
              </View>
              <View style={styles.menuContent}>
                <Text style={styles.menuTitle}>{item.title}</Text>
                <Text style={styles.menuSubtitle}>{item.subtitle}</Text>
              </View>
              <Ionicons name="chevron-forward" size={20} color="#666666" />
            </Pressable>
          ))}
        </View>

        <Pressable style={styles.signOutButton} onPress={handleSignOut}>
          <Ionicons name="log-out-outline" size={20} color="#FF5252" />
          <Text style={styles.signOutText}>Sign Out</Text>
        </Pressable>
      </ScrollView>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  scrollView: {
    flex: 1,
  },
  content: {
    paddingHorizontal: 24,
  },
  header: {
    marginBottom: 32,
  },
  profileSection: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 20,
  },
  avatarContainer: {
    marginRight: 16,
  },
  avatar: {
    width: 80,
    height: 80,
    borderRadius: 40,
  },
  avatarPlaceholder: {
    width: 80,
    height: 80,
    borderRadius: 40,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  userInfo: {
    flex: 1,
  },
  username: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  bio: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 4,
  },
  connectionStatus: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 12,
    marginTop: 4,
  },
  connectionItem: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 4,
  },
  connectionText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
  },
  skillsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    alignItems: 'center',
  },
  skillTag: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 16,
    marginRight: 8,
    marginBottom: 8,
  },
  skillText: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  moreSkills: {
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  statsContainer: {
    flexDirection: 'row',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 32,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  statItem: {
    flex: 1,
    alignItems: 'center',
  },
  statNumber: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  statLabel: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  menuContainer: {
    marginBottom: 32,
  },
  menuItem: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    marginBottom: 12,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  menuItemPressed: {
    opacity: 0.7,
  },
  menuIcon: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
  },
  menuContent: {
    flex: 1,
  },
  menuTitle: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  menuSubtitle: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  signOutButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(255, 82, 82, 0.1)',
    borderRadius: 16,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 82, 82, 0.2)',
  },
  signOutText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FF5252',
    marginLeft: 8,
  },
});