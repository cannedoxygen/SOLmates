import { View, Text, StyleSheet, Image, Pressable } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useRouter } from 'expo-router';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import Animated, { FadeInDown, FadeInUp } from 'react-native-reanimated';

export default function Welcome() {
  const router = useRouter();
  const insets = useSafeAreaInsets();

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <View style={[styles.content, { paddingTop: insets.top + 40 }]}>
        <Animated.View 
          entering={FadeInUp.duration(1000)}
          style={styles.logoContainer}
        >
          <View style={styles.logoPlaceholder}>
            <Text style={styles.logoText}>S</Text>
          </View>
        </Animated.View>

        <Animated.View 
          entering={FadeInUp.delay(300).duration(1000)}
          style={styles.textContainer}
        >
          <Text style={styles.title}>Solmates</Text>
          <Text style={styles.tagline}>
            Find Your Perfect Collab on Solana
          </Text>
          <Text style={styles.description}>
            Connect with developers, artists, and builders to create the next big thing in Web3
          </Text>
        </Animated.View>

        <Animated.View 
          entering={FadeInDown.delay(600).duration(1000)}
          style={[styles.buttonContainer, { paddingBottom: insets.bottom + 40 }]}
        >
          <Pressable
            style={({ pressed }) => [
              styles.primaryButton,
              pressed && styles.buttonPressed,
            ]}
            onPress={() => router.push('/(auth)/login')}
          >
            <LinearGradient
              colors={['#9945FF', '#7B3FF2']}
              style={styles.buttonGradient}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0 }}
            >
              <Text style={styles.buttonText}>Connect Wallet</Text>
            </LinearGradient>
          </Pressable>

          <Text style={styles.disclaimer}>
            By connecting, you agree to our Terms & Privacy Policy
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
    justifyContent: 'space-between',
    paddingHorizontal: 24,
  },
  logoContainer: {
    alignItems: 'center',
    marginTop: 40,
  },
  logoPlaceholder: {
    width: 120,
    height: 120,
    borderRadius: 60,
    backgroundColor: '#9945FF',
    justifyContent: 'center',
    alignItems: 'center',
  },
  logoText: {
    fontSize: 48,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  textContainer: {
    alignItems: 'center',
    paddingHorizontal: 20,
  },
  title: {
    fontSize: 48,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  tagline: {
    fontSize: 24,
    fontFamily: 'Inter-SemiBold',
    color: '#9945FF',
    textAlign: 'center',
    marginBottom: 16,
  },
  description: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    lineHeight: 24,
  },
  buttonContainer: {
    width: '100%',
  },
  primaryButton: {
    width: '100%',
    height: 56,
    borderRadius: 28,
    overflow: 'hidden',
    marginBottom: 16,
  },
  buttonGradient: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  buttonText: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  buttonPressed: {
    opacity: 0.8,
  },
  disclaimer: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
  },
});