import React, { useState } from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Image, ActivityIndicator, Alert } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { usePrivy, useLoginWithOAuth, useEmbeddedSolanaWallet } from '@privy-io/expo';

export default function PrivyLoginButton() {
  const privyHookResult = usePrivy();
  const { isReady, user, logout, getAccessToken } = privyHookResult;
  const { wallets: solanaWallets, create: createSolanaWallet } = useEmbeddedSolanaWallet();
  const { login } = useLoginWithOAuth({
    onSuccess: async (user, isNewUser) => {
      try {
      
        // Create embedded Solana wallet using proper hook
        
        let walletAddress = null;
        
        // Check if we have a Solana wallet from the hook
        if (solanaWallets && solanaWallets.length > 0) {
          walletAddress = solanaWallets[0].address;
          // Wallet already exists
        } else {
          try {
            // Create the first Solana wallet for the user
            const provider = await createSolanaWallet();
            
            // Re-check wallets after creation
            if (solanaWallets && solanaWallets.length > 0) {
              walletAddress = solanaWallets[0].address;
              // Successfully created wallet
            } else {
              // Wait for wallet to appear in array
              
              // Wait a bit for the wallet to appear in the array
              const maxWaitTime = 10000; // 10 seconds
              const checkInterval = 500; // Check every 500ms
              const startTime = Date.now();
              
              while (!walletAddress && (Date.now() - startTime) < maxWaitTime) {
                if (solanaWallets && solanaWallets.length > 0) {
                  walletAddress = solanaWallets[0].address;
                  // Wallet now visible
                  break;
                }
                
                const elapsed = Date.now() - startTime;
                // Still waiting...
                
                await new Promise(resolve => setTimeout(resolve, checkInterval));
              }
            }
          } catch (createError) {
            console.error('Failed to create embedded wallet:', createError);
          }
        }
        
        // Auto-sync user with Supabase
        // Import these at the top of the file when needed
        const { ProfileService } = await import('../lib/services/profileService');
        const { SessionManager } = await import('../lib/services/sessionManager');
        
        try {
          // Sync user even without wallet - allows Privy to create wallet without interference
          console.log('🔄 Starting profile sync for user:', user.id);
          const supabaseProfile = await ProfileService.syncPrivyUser(user, walletAddress);
          console.log('✅ Profile synced successfully:', supabaseProfile.id);
          
          // If no wallet was found initially, wait a bit more and check again
          if (!walletAddress) {
            // Check again for wallet after brief delay
            await new Promise(resolve => setTimeout(resolve, 2000)); // Wait 2 more seconds
            
            const walletAccount = user.linked_accounts?.find(account => account.type === 'wallet');
            if (walletAccount?.address) {
              // Update profile with wallet address
              try {
                await ProfileService.updateUserWallet(user.id, walletAccount.address);
              } catch (updateError) {
                // Wallet update failed, but user can continue
              }
            }
          }
          
          // Start analytics session
          const sessionManager = SessionManager.getInstance();
          await sessionManager.startSession(user.id);
        } catch (syncError) {
          console.error('❌ Profile sync failed:', syncError);
          
          // Retry sync after delay
          setTimeout(async () => {
            try {
              console.log('🔄 Retrying profile sync...');
              const retryProfile = await ProfileService.syncPrivyUser(user, walletAddress);
              console.log('✅ Profile sync succeeded on retry:', retryProfile.id);
            } catch (retryError) {
              console.error('❌ Profile sync retry failed:', retryError);
              // Log to analytics or error tracking service
              Alert.alert(
                'Profile Sync Issue',
                'There was an issue syncing your profile. Please try logging in again.',
                [{ text: 'OK' }]
              );
            }
          }, 3000); // Retry after 3 seconds
        }
      } catch (onSuccessError) {
        console.error('Login callback error:', onSuccessError);
      }
    },
    onError: (error) => {
      console.error('Login error:', error);
    }
  });
  const [isLoggingIn, setIsLoggingIn] = useState(false);
  const [error, setError] = useState(null);
  

  const handleLogin = async () => {
    setIsLoggingIn(true);
    setError(null);
    
    try {
      
      // Add timeout wrapper to catch hanging requests
      const loginWithTimeout = new Promise((resolve, reject) => {
        const timeout = setTimeout(() => {
          reject(new Error('Login timeout - Privy OAuth took too long (30s)'));
        }, 30000);

        
        login({ 
          provider: 'twitter'
        }).then(result => {
          clearTimeout(timeout);
          resolve(result);
        }).catch(err => {
          clearTimeout(timeout);
          reject(err);
        });
      });

      const result = await loginWithTimeout;
    } catch (error) {
      
      // Show user-friendly error message
      if (error.message.includes('timeout') || error.message.includes('Ping reached timeout')) {
        setError('Connection timeout. Please check your internet and try again.');
        Alert.alert(
          'Connection Timeout', 
          'The login request timed out. Please check your internet connection and try again.',
          [{ text: 'OK' }]
        );
      } else {
        setError('Login failed. Please try again.');
        Alert.alert(
          'Login Failed', 
          'There was an error logging in. Please try again.',
          [{ text: 'OK' }]
        );
      }
    } finally {
      setIsLoggingIn(false);
    }
  };


  // Show loading state during OAuth flow
  if (!isReady) {
    return (
      <View style={styles.container}>
        <ActivityIndicator size="large" color="#9945FF" />
      </View>
    );
  }

  // If user exists but has no embedded Solana wallet, show logout option
  if (user) {
    const hasEmbeddedWallet = solanaWallets && solanaWallets.length > 0;
    if (!hasEmbeddedWallet) {
      return (
        <View style={styles.container}>
          <View style={styles.loginContainer}>
            <Text style={styles.title}>Wallet Issue Detected</Text>
            <Text style={styles.subtitle}>
              You're logged in but don't have an embedded wallet. Please log out and log back in to fix this.
            </Text>
            
            <TouchableOpacity
              style={styles.loginButton}
              onPress={async () => {
                await logout();
              }}
            >
              <LinearGradient
                colors={['#FF6B6B', '#EE5A5A']}
                style={styles.gradient}
              >
                <View style={styles.buttonContent}>
                  <Text style={styles.buttonText}>Log Out & Try Again</Text>
                </View>
              </LinearGradient>
            </TouchableOpacity>
          </View>
        </View>
      );
    }
  }

  return (
    <View style={styles.container}>
      <View style={styles.loginContainer}>
        <Text style={styles.title}>Welcome to Solmates</Text>
        <Text style={styles.subtitle}>
          Connect with Solana developers & find your next collaborator
        </Text>
        
        <TouchableOpacity
          style={[styles.loginButton, isLoggingIn && styles.loginButtonDisabled]}
          onPress={handleLogin}
          disabled={isLoggingIn}
        >
          <LinearGradient
            colors={isLoggingIn ? ['#666666', '#555555'] : ['#1DA1F2', '#0d8bd9']}
            style={styles.gradient}
          >
            <View style={styles.buttonContent}>
              {isLoggingIn ? (
                <>
                  <ActivityIndicator size="small" color="#FFFFFF" />
                  <Text style={[styles.buttonText, {marginLeft: 10}]}>Connecting...</Text>
                </>
              ) : (
                <>
                  <Text style={styles.twitterIcon}>🐦</Text>
                  <Text style={styles.buttonText}>Continue with Twitter</Text>
                </>
              )}
            </View>
          </LinearGradient>
        </TouchableOpacity>

        {error && (
          <View style={styles.errorContainer}>
            <Text style={styles.errorText}>{error}</Text>
            <TouchableOpacity onPress={() => setError(null)} style={styles.retryButton}>
              <Text style={styles.retryText}>Try Again</Text>
            </TouchableOpacity>
          </View>
        )}

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
  loginButtonDisabled: {
    opacity: 0.7,
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
  errorContainer: {
    backgroundColor: 'rgba(255, 0, 0, 0.1)',
    padding: 15,
    borderRadius: 8,
    marginBottom: 20,
    alignItems: 'center',
  },
  errorText: {
    color: '#FF6B6B',
    fontSize: 14,
    textAlign: 'center',
    marginBottom: 10,
  },
  retryButton: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    paddingHorizontal: 15,
    paddingVertical: 8,
    borderRadius: 6,
  },
  retryText: {
    color: '#FFFFFF',
    fontSize: 14,
    fontWeight: '600',
  },
});