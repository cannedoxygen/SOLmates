import { useEffect, useState } from 'react';
import { View, ActivityIndicator, StyleSheet, Text } from 'react-native';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import PrivyLoginButton from '../components/PrivyLoginButton';
import DeepLinkDebugger from '../components/DeepLinkDebugger';
import { ProfileService } from '../lib/services/profileService';

export default function Index() {
  const router = useRouter();
  const { isReady, user } = usePrivy();
  const [checkingProfile, setCheckingProfile] = useState(false);

  useEffect(() => {
    console.log('🔍 Index component - Privy state:', { isReady, user: !!user });
    if (isReady && user) {
      checkProfileAndRoute();
    }
  }, [isReady, user]);

  const checkProfileAndRoute = async () => {
    if (!user) return;
    
    setCheckingProfile(true);
    try {
      console.log('🔍 Checking if user has completed profile...');
      const profile = await ProfileService.getUserProfile(user.id);
      
      if (!profile || !profile.profile_completed) {
        console.log('📝 Profile incomplete, redirecting to onboarding');
        router.replace('/(auth)/onboarding');
      } else {
        console.log('✅ Profile complete, navigating to discover');
        router.replace('/(tabs)/discover');
      }
    } catch (error) {
      console.error('Error checking profile:', error);
      // If profile doesn't exist, send to onboarding
      router.replace('/(auth)/onboarding');
    } finally {
      setCheckingProfile(false);
    }
  };

  console.log('🔄 Current Privy state:', { isReady, user: !!user });

  if (!isReady) {
    console.log('⏳ Privy not ready, showing loading...');
    return (
      <View style={styles.container}>
        <ActivityIndicator size="large" color="#9945FF" />
        <Text style={styles.loadingText}>Initializing Privy...</Text>
      </View>
    );
  }

  if (!user) {
    console.log('👤 No user, showing login button');
    // Use mock login for now since OAuth isn't working
    return (
      <View style={{ flex: 1 }}>
        <PrivyLoginButton />
        <DeepLinkDebugger />
      </View>
    );
  }

  console.log('🔄 User exists, checking profile...');
  return (
    <View style={styles.container}>
      <ActivityIndicator size="large" color="#9945FF" />
      <Text style={styles.loadingText}>
        {checkingProfile ? 'Checking your profile...' : 'Logging you in...'}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#0A0E27',
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    color: '#FFFFFF',
    marginTop: 10,
    fontSize: 16,
  },
});