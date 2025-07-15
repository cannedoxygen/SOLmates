import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet } from 'react-native';
import { useRouter } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';

export default function MockPrivyLogin() {
  const router = useRouter();

  const handleMockLogin = () => {
    console.log('🔄 Mock login - bypassing OAuth for testing');
    // Navigate directly to the main app for testing
    router.replace('/(tabs)/discover');
  };

  return (
    <View style={styles.container}>
      <View style={styles.loginContainer}>
        <Text style={styles.title}>Welcome to Solmates</Text>
        <Text style={styles.subtitle}>
          Connect with Solana developers & find your next collaborator
        </Text>
        
        <TouchableOpacity
          style={styles.loginButton}
          onPress={handleMockLogin}
        >
          <LinearGradient
            colors={['#1DA1F2', '#0d8bd9']}
            style={styles.gradient}
          >
            <View style={styles.buttonContent}>
              <Text style={styles.twitterIcon}>🐦</Text>
              <Text style={styles.buttonText}>Continue with Twitter (Mock)</Text>
            </View>
          </LinearGradient>
        </TouchableOpacity>

        <Text style={styles.warningText}>
          ⚠️ OAuth requires a development build with Privy native extensions
        </Text>
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
    marginBottom: 20,
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
  warningText: {
    color: '#FFA500',
    fontSize: 14,
    textAlign: 'center',
    marginTop: 10,
  },
});