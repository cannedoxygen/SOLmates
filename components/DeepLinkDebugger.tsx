import React, { useEffect, useState } from 'react';
import { View, Text, StyleSheet } from 'react-native';
import * as Linking from 'expo-linking';

export default function DeepLinkDebugger() {
  const [initialUrl, setInitialUrl] = useState<string | null>(null);
  const [lastUrl, setLastUrl] = useState<string | null>(null);
  const [scheme, setScheme] = useState<string>('');

  useEffect(() => {
    // Get the URL scheme
    const urlScheme = Linking.createURL('');
    setScheme(urlScheme);
    console.log('🔗 App URL scheme:', urlScheme);

    // Get initial URL if app was opened via deep link
    Linking.getInitialURL().then((url) => {
      if (url) {
        console.log('🔗 Initial URL:', url);
        setInitialUrl(url);
      }
    });

    // Listen for deep links
    const subscription = Linking.addEventListener('url', (event) => {
      console.log('🔗 Deep link received:', event.url);
      setLastUrl(event.url);
    });

    return () => subscription?.remove();
  }, []);

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Deep Link Debugger</Text>
      <Text style={styles.label}>URL Scheme:</Text>
      <Text style={styles.value}>{scheme}</Text>
      
      <Text style={styles.label}>Initial URL:</Text>
      <Text style={styles.value}>{initialUrl || 'None'}</Text>
      
      <Text style={styles.label}>Last Deep Link:</Text>
      <Text style={styles.value}>{lastUrl || 'None'}</Text>
      
      <Text style={styles.hint}>Test with: adb shell am start -W -a android.intent.action.VIEW -d "solmates://test" com.solmates</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
    backgroundColor: 'rgba(0,0,0,0.8)',
    padding: 10,
  },
  title: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 5,
  },
  label: {
    color: '#aaa',
    fontSize: 12,
    marginTop: 5,
  },
  value: {
    color: '#fff',
    fontSize: 14,
    fontFamily: 'monospace',
  },
  hint: {
    color: '#888',
    fontSize: 10,
    marginTop: 10,
    fontFamily: 'monospace',
  },
});