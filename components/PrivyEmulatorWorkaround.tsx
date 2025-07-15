import React, { useState } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Alert } from 'react-native';

// This is a temporary workaround for Android emulator OAuth issues
export default function PrivyEmulatorWorkaround() {
  const [authToken, setAuthToken] = useState('');
  
  const handleManualAuth = async () => {
    Alert.alert(
      'Manual OAuth Workaround',
      'This is a temporary workaround for emulator testing:\n\n' +
      '1. Open this URL in your computer browser:\n' +
      'https://auth.privy.io/oauth/twitter?app_id=cmcnu20ab02zgl10m45m4ev8q\n\n' +
      '2. Complete Twitter auth\n' +
      '3. Copy the token from the redirect URL\n' +
      '4. Paste it here',
      [{ text: 'OK' }]
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Emulator OAuth Workaround</Text>
      <Text style={styles.subtitle}>For testing only - OAuth redirects don't work on emulators</Text>
      
      <TouchableOpacity style={styles.button} onPress={handleManualAuth}>
        <Text style={styles.buttonText}>Show Manual Auth Instructions</Text>
      </TouchableOpacity>
      
      <TextInput
        style={styles.input}
        placeholder="Paste auth token here"
        value={authToken}
        onChangeText={setAuthToken}
        placeholderTextColor="#666"
      />
      
      <TouchableOpacity 
        style={[styles.button, { opacity: authToken ? 1 : 0.5 }]}
        disabled={!authToken}
        onPress={() => {
          // This would need Privy to expose a manual token auth method
          Alert.alert('Note', 'This workaround requires Privy to expose manual token authentication');
        }}
      >
        <Text style={styles.buttonText}>Authenticate with Token</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'rgba(0,0,0,0.8)',
    padding: 20,
    marginTop: 20,
    borderRadius: 10,
  },
  title: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 5,
  },
  subtitle: {
    color: '#aaa',
    fontSize: 12,
    marginBottom: 15,
  },
  button: {
    backgroundColor: '#9945FF',
    padding: 12,
    borderRadius: 8,
    marginBottom: 10,
  },
  buttonText: {
    color: '#fff',
    fontSize: 14,
    textAlign: 'center',
    fontWeight: '600',
  },
  input: {
    backgroundColor: '#222',
    color: '#fff',
    padding: 12,
    borderRadius: 8,
    marginBottom: 10,
    borderWidth: 1,
    borderColor: '#444',
  },
});