import 'react-native-get-random-values';
import { Stack } from 'expo-router';
import { useEffect } from 'react';
import { Platform } from 'react-native';
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

  // Debug Privy App ID
  const appId = process.env.EXPO_PUBLIC_PRIVY_APP_ID || 'cmcnu20ab02zgl10m45m4ev8q';
  const appSecret = process.env.EXPO_PUBLIC_PRIVY_APP_SECRET;
  console.log('Privy App ID:', appId);
  console.log('Privy App ID length:', appId.length);
  console.log('Privy App Secret:', appSecret ? 'SET (length: ' + appSecret.length + ')' : 'MISSING');
  console.log('🔍 All Privy Environment Variables:', {
    appId: process.env.EXPO_PUBLIC_PRIVY_APP_ID,
    appSecret: process.env.EXPO_PUBLIC_PRIVY_APP_SECRET ? 'SET' : 'MISSING',
    projectId: process.env.EXPO_PUBLIC_PROJECT_ID
  });
  
  return (
    <PrivyProvider
      appId={appId}
      clientId="client-WY6N4zWGmZ2dBNY18bizP18WW2McR1iLNSxMVsgMXDPZP"
      appSecret={appSecret}
      onSuccess={async (user, isNewUser) => {
        console.log('✅ Privy login successful:', user);
        console.log('🆕 Is new user:', isNewUser);
        
        // Extract wallet address from linked accounts
        const walletAccount = user.linked_accounts?.find(account => account.type === 'wallet');
        const walletAddress = walletAccount?.address;
        
        console.log('🔄 Auto-syncing user with Supabase...');
        try {
          const supabaseProfile = await ProfileService.syncPrivyUser(user, walletAddress);
          console.log('✅ User synced with Supabase:', supabaseProfile);
          
          // Start analytics session
          const sessionManager = SessionManager.getInstance();
          await sessionManager.startSession(user.id);
        } catch (syncError) {
          console.error('❌ Failed to sync user with Supabase:', syncError);
        }
      }}
      onError={(error) => {
        console.error('❌ Privy error:', error);
        console.error('Error details:', JSON.stringify(error, null, 2));
        console.error('🔍 Error in Provider - App ID being used:', appId);
        console.error('🔍 Error in Provider - App Secret status:', appSecret ? 'SET' : 'MISSING');
      }}
      onReady={() => {
        console.log('🚀 Privy is ready!');
        console.log('🔍 Debug - App Bundle ID:', appId);
        console.log('🔍 Debug - App Secret present:', !!appSecret);
        console.log('🔍 Debug - Platform:', Platform.OS);
        console.log('🔍 Debug - Bundle ID (should be com.solmates):', Application.androidId || Application.bundleId);
      }}
      config={{
        appearance: {
          theme: 'dark',
          accentColor: '#9945FF',
        },
        loginMethods: ['twitter'],
        // embeddedWallets: {
        //   createOnLogin: 'users-without-wallets',
        // },
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