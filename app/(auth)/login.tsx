import { View, Text, StyleSheet, Pressable, Alert } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useRouter } from 'expo-router';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import Animated, { 
  FadeInDown, 
  FadeInUp,
  useAnimatedStyle,
  useSharedValue,
  withSpring,
} from 'react-native-reanimated';
import { useWallet } from '../../hooks/useWallet';
import { useAuth } from '../../hooks/useAuth';
import { useState } from 'react';
import { Ionicons } from '@expo/vector-icons';

export default function Login() {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { connect, address } = useWallet();
  const { signIn } = useAuth();
  const [isConnecting, setIsConnecting] = useState(false);
  
  const scale = useSharedValue(1);
  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  const handleConnect = async () => {
    try {
      setIsConnecting(true);
      scale.value = withSpring(0.95);
      
      await connect();
      
      if (address) {
        await signIn(address);
        router.replace('/(auth)/onboarding');
      }
    } catch (error) {
      Alert.alert('Connection Failed', 'Please make sure you have a Solana wallet installed');
      console.error('Connection error:', error);
    } finally {
      setIsConnecting(false);
      scale.value = withSpring(1);
    }
  };

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <View style={[styles.content, { paddingTop: insets.top + 20 }]}>
        <Pressable
          style={styles.backButton}
          onPress={() => router.back()}
        >
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>

        <Animated.View 
          entering={FadeInUp.duration(800)}
          style={styles.headerContainer}
        >
          <Text style={styles.title}>Connect Your Wallet</Text>
          <Text style={styles.subtitle}>
            Join the Solana builder community
          </Text>
        </Animated.View>

        <Animated.View 
          entering={FadeInUp.delay(200).duration(800)}
          style={styles.walletContainer}
        >
          <View style={styles.featureList}>
            <View style={styles.featureItem}>
              <Ionicons name="shield-checkmark" size={24} color="#9945FF" />
              <Text style={styles.featureText}>Secure & Non-custodial</Text>
            </View>
            <View style={styles.featureItem}>
              <Ionicons name="people" size={24} color="#9945FF" />
              <Text style={styles.featureText}>Connect with verified builders</Text>
            </View>
            <View style={styles.featureItem}>
              <Ionicons name="trophy" size={24} color="#9945FF" />
              <Text style={styles.featureText}>Earn collaboration badges</Text>
            </View>
          </View>

          <Animated.View style={animatedStyle}>
            <Pressable
              style={[
                styles.connectButton,
                isConnecting && styles.connectingButton,
              ]}
              onPress={handleConnect}
              disabled={isConnecting}
            >
              <LinearGradient
                colors={isConnecting ? ['#666666', '#555555'] : ['#9945FF', '#7B3FF2']}
                style={styles.buttonGradient}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 0 }}
              >
                {isConnecting ? (
                  <Text style={styles.buttonText}>Connecting...</Text>
                ) : (
                  <>
                    <Ionicons name="wallet" size={24} color="#FFFFFF" style={styles.walletIcon} />
                    <Text style={styles.buttonText}>Connect Wallet</Text>
                  </>
                )}
              </LinearGradient>
            </Pressable>
          </Animated.View>
        </Animated.View>

        <Animated.View 
          entering={FadeInDown.delay(400).duration(800)}
          style={[styles.footer, { paddingBottom: insets.bottom + 20 }]}
        >
          <Text style={styles.footerText}>
            Make sure you have a Solana wallet installed
          </Text>
          <Text style={styles.supportedWallets}>
            Phantom • Solflare • Backpack
          </Text>
        </Animated.View>
      </View>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    flex: 1,
    paddingHorizontal: 24,
  },
  backButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 40,
  },
  headerContainer: {
    marginBottom: 60,
  },
  title: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  subtitle: {
    fontSize: 18,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  walletContainer: {
    flex: 1,
    justifyContent: 'center',
  },
  featureList: {
    marginBottom: 60,
  },
  featureItem: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 24,
  },
  featureText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginLeft: 16,
  },
  connectButton: {
    width: '100%',
    height: 60,
    borderRadius: 30,
    overflow: 'hidden',
  },
  connectingButton: {
    opacity: 0.7,
  },
  buttonGradient: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
  },
  walletIcon: {
    marginRight: 12,
  },
  buttonText: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  footer: {
    alignItems: 'center',
  },
  footerText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginBottom: 8,
  },
  supportedWallets: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
});