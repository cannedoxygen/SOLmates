// CRITICAL: Import order matters! react-native-get-random-values MUST be first
import 'react-native-get-random-values';

// Force crypto.getRandomValues to be available globally
if (typeof global.crypto !== 'object') {
  global.crypto = {};
}

// Ensure getRandomValues is properly set
if (!global.crypto.getRandomValues) {
  console.error('Warning: crypto.getRandomValues not set by react-native-get-random-values');
  // Fallback implementation
  global.crypto.getRandomValues = function(array) {
    for (let i = 0; i < array.length; i++) {
      array[i] = Math.floor(Math.random() * 256);
    }
    return array;
  };
}

// Then other polyfills
import '@ethersproject/shims';
import { Buffer } from 'buffer';

// Ensure globals are available
global.Buffer = Buffer;

// Import the actual app LAST
import 'expo-router/entry';