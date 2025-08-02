import 'react-native-get-random-values';
import { Stack } from 'expo-router';
import { useEffect } from 'react';
import { Platform } from 'react-native';
import { LogBox } from 'react-native';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import { StatusBar } from 'expo-status-bar';
import * as SplashScreen from 'expo-splash-screen';
import * as Application from 'expo-application';
import { useFonts } from 'expo-font';
import { PrivyProvider } from '@privy-io/expo';
import { AuthProvider } from '../context/AuthContext';
import { WalletProvider } from '../context/WalletContext';
import { ThemeProvider } from '../context/ThemeContext';
import { NotificationProvider } from '../context/NotificationContext';
import { ChatProvider } from '../context/ChatContext';
import { ProfileService } from '../lib/services/profileService';
import { SessionManager } from '../lib/services/sessionManager';

SplashScreen.preventAutoHideAsync();

// Ignore Privy timeout warnings that don't affect functionality
LogBox.ignoreLogs([
  'Ping reached timeout',
  'Embedded wallet proxy not initialized',
  'Cannot connect to Metro',
]);

export default function RootLayout() {
  // const [fontsLoaded] = useFonts({
  //   'Inter-Regular': require('../assets/fonts/Inter-Regular.ttf'),
  //   'Inter-Medium': require('../assets/fonts/Inter-Medium.ttf'),
  //   'Inter-SemiBold': require('../assets/fonts/Inter-SemiBold.ttf'),
  //   'Inter-Bold': require('../assets/fonts/Inter-Bold.ttf'),
  // });
  const fontsLoaded = true; // Mock for UI testing

  useEffect(() => {
    if (fontsLoaded) {
      SplashScreen.hideAsync();
    }
  }, [fontsLoaded]);

  if (!fontsLoaded) {
    return null;
  }

  const appId = process.env.EXPO_PUBLIC_PRIVY_APP_ID || 'cmcnu20ab02zgl10m45m4ev8q';
  const appSecret = process.env.EXPO_PUBLIC_PRIVY_APP_SECRET;
  
  return (
    <PrivyProvider
      appId={appId}
      clientId="client-WY6N4zWGmZ2dBNY18bizP18WW2McR1iLNSxMVsgMXDPZP"
      appSecret={appSecret}
      onError={(error) => {
        console.error('Privy error:', error);
      }}
      onReady={() => {}}
      config={{
        appearance: {
          theme: 'dark',
          accentColor: '#9945FF',
        },
        loginMethods: ['twitter'],
        embeddedWallets: {
          createOnLogin: 'all-users',
          solana: {
            createOnLogin: 'all-users',
            network: 'mainnet-beta',
            noPromptOnSignature: false,
          },
        },
        solanaClusters: [
          {
            name: 'mainnet-beta',
            rpcUrl: process.env.EXPO_PUBLIC_RPC_ENDPOINT || 'https://api.mainnet-beta.solana.com',
          },
        ],
      }}
    >
      <GestureHandlerRootView style={{ flex: 1 }}>
        <SafeAreaProvider>
          <ThemeProvider>
            <WalletProvider>
              <AuthProvider>
                <NotificationProvider>
                  <ChatProvider>
                    <StatusBar style="light" />
                    <Stack
                      screenOptions={{
                        headerShown: false,
                        animation: 'slide_from_right',
                        contentStyle: {
                          backgroundColor: '#0A0E27',
                        },
                      }}
                    >
                      <Stack.Screen name="index" />
                      <Stack.Screen name="(auth)" />
                      <Stack.Screen name="(tabs)" />
                      <Stack.Screen
                        name="user-profile"
                        options={{
                          presentation: 'modal',
                          animation: 'slide_from_bottom',
                        }}
                      />
                      <Stack.Screen
                        name="project-room"
                        options={{
                          presentation: 'modal',
                          animation: 'slide_from_bottom',
                        }}
                      />
                      <Stack.Screen
                        name="badge-mint"
                        options={{
                          presentation: 'modal',
                          animation: 'slide_from_bottom',
                        }}
                      />
                      <Stack.Screen
                        name="hackathon-mode"
                        options={{
                          presentation: 'modal',
                          animation: 'slide_from_bottom',
                        }}
                      />
                    </Stack>
                  </ChatProvider>
                </NotificationProvider>
              </AuthProvider>
            </WalletProvider>
          </ThemeProvider>
        </SafeAreaProvider>
      </GestureHandlerRootView>
    </PrivyProvider>
  );
}