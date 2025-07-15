import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Image } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { usePrivy, useLoginWithOAuth } from '@privy-io/expo';

export default function PrivyLoginButton() {
  const privyHookResult = usePrivy();
  const { isReady, user, logout, getAccessToken } = privyHookResult;
  const { login } = useLoginWithOAuth();
  
  console.log('🔍 Full Privy hook result:', privyHookResult);

  const handleLogin = async () => {
    console.log('🔵 Starting OAuth login...');
    console.log('🔍 App Bundle ID (Android):', 'com.solmates');
    console.log('🔍 Environment Check:', {
      appId: process.env.EXPO_PUBLIC_PRIVY_APP_ID,
      appSecret: process.env.EXPO_PUBLIC_PRIVY_APP_SECRET ? 'SET' : 'MISSING',
      projectId: process.env.EXPO_PUBLIC_PROJECT_ID
    });
    console.log('🔍 Privy Configuration:', {
      isReady,
      hasUser: !!user
    });
    
    try {
      console.log('🚀 Calling login function...');
      console.log('🔍 Pre-login - Privy internal state check');
      console.log('🔍 Pre-login - isReady:', isReady);
      console.log('🔍 Pre-login - user:', user);
      
      // Force web OAuth to bypass native app ID validation
      console.log('🌐 Trying web-only OAuth flow...');
      const result = await login({ 
        provider: 'twitter',
        disableSignup: false,
        loginRedirectUrl: 'solmates'
      });
      console.log('✅ Login function completed successfully');
      console.log('✅ Login result:', result);
    } catch (error) {
      console.error('💥 Login function error:', error);
      console.error('💥 Error type:', error.constructor.name);
      console.error('💥 Error message:', error.message);
      console.error('💥 Error stack:', error.stack);
      console.error('💥 Full error object:', JSON.stringify(error, null, 2));
      
    }
  };

  // Debug the ready state
  console.log('🔍 PrivyLoginButton - isReady state:', isReady);
  console.log('🔍 PrivyLoginButton - user:', user);

  // Show loading state during OAuth flow
  if (!isReady) {
    return (
      <View style={styles.container}>
        <Text style={styles.loadingText}>Loading Privy... (ready: {String(isReady)})</Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <View style={styles.loginContainer}>
        <Text style={styles.title}>Welcome to Solmates</Text>
        <Text style={styles.subtitle}>
          Connect with Solana developers & find your next collaborator
        </Text>
        
        <TouchableOpacity
          style={styles.loginButton}
          onPress={handleLogin}
        >
          <LinearGradient
            colors={['#1DA1F2', '#0d8bd9']}
            style={styles.gradient}
          >
            <View style={styles.buttonContent}>
              <Text style={styles.twitterIcon}>🐦</Text>
              <Text style={styles.buttonText}>Continue with Twitter</Text>
            </View>
          </LinearGradient>
        </TouchableOpacity>

        <View style={styles.featuresContainer}>
          <Text style={styles.featuresTitle}>What you get:</Text>
          <Text style={styles.featureItem}>✨ Automatic smart wallet creation</Text>
          <Text style={styles.featureItem}>🖼️ Your Twitter profile picture as avatar</Text>
          <Text style={styles.featureItem}>🤝 Connect with Solana developers</Text>
          <Text style={styles.featureItem}>🔒 Secure & non-custodial</Text>
        </View>

      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#0A0E27',
    padding: 20,
  },
  loadingText: {
    color: '#FFFFFF',
    fontSize: 18,
  },
  loginContainer: {
    width: '100%',
    maxWidth: 400,
    alignItems: 'center',
  },
  title: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#FFFFFF',
    marginBottom: 10,
    textAlign: 'center',
  },
  subtitle: {
    fontSize: 16,
    color: '#B0B0B0',
    textAlign: 'center',
    marginBottom: 40,
    lineHeight: 22,
  },
  loginButton: {
    width: '100%',
    marginBottom: 30,
  },
  gradient: {
    borderRadius: 12,
    padding: 16,
  },
  buttonContent: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
  },
  twitterIcon: {
    fontSize: 20,
    marginRight: 10,
  },
  buttonText: {
    color: '#FFFFFF',
    fontSize: 18,
    fontWeight: '600',
  },
  featuresContainer: {
    width: '100%',
    padding: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
  },
  featuresTitle: {
    color: '#FFFFFF',
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 15,
    textAlign: 'center',
  },
  featureItem: {
    color: '#B0B0B0',
    fontSize: 14,
    marginBottom: 8,
    lineHeight: 20,
  },
  profileContainer: {
    alignItems: 'center',
    width: '100%',
    maxWidth: 400,
  },
  welcomeText: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#FFFFFF',
    marginBottom: 30,
  },
  twitterProfile: {
    alignItems: 'center',
    marginBottom: 30,
  },
  profileImage: {
    width: 120,
    height: 120,
    borderRadius: 60,
    marginBottom: 15,
    borderWidth: 3,
    borderColor: '#9945FF',
  },
  usernameText: {
    fontSize: 18,
    color: '#1DA1F2',
    fontWeight: '600',
    marginBottom: 5,
  },
  nameText: {
    fontSize: 16,
    color: '#FFFFFF',
  },
  walletInfo: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    padding: 15,
    borderRadius: 12,
    marginBottom: 30,
    alignItems: 'center',
  },
  walletLabel: {
    color: '#B0B0B0',
    fontSize: 14,
    marginBottom: 5,
  },
  walletAddress: {
    color: '#9945FF',
    fontSize: 16,
    fontWeight: '600',
  },
  logoutButton: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    padding: 12,
    borderRadius: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  logoutButtonText: {
    color: '#FFFFFF',
    fontSize: 16,
  },
});