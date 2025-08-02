import { useEffect, useState } from 'react';
import { View, ActivityIndicator, StyleSheet, Text, Alert } from 'react-native';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import PrivyLoginButton from '../components/PrivyLoginButton';
import { ProfileService } from '../lib/services/profileService';

export default function Index() {
  const router = useRouter();
  const { isReady, user, logout } = usePrivy();
  const [checkingProfile, setCheckingProfile] = useState(false);

  useEffect(() => {
    if (isReady && user) {
      checkProfileAndRoute();
    }
  }, [isReady, user]);

  const checkProfileAndRoute = async () => {
    if (!user) return;
    
    setCheckingProfile(true);
    try {
      // Check if user has completed profile
      const profile = await ProfileService.getUserProfile(user.id);
      
      if (!profile || !profile.profile_completed) {
        router.replace('/(auth)/onboarding');
      } else {
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

  if (!isReady) {
    return (
      <View style={styles.container}>
        <ActivityIndicator size="large" color="#9945FF" />
      </View>
    );
  }

  if (!user) {
    return (
      <View style={{ flex: 1 }}>
        <PrivyLoginButton />
      </View>
    );
  }
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