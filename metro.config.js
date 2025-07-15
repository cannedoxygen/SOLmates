const { getDefaultConfig } = require('expo/metro-config');

const config = getDefaultConfig(__dirname);

// Add Node.js polyfills for Web3/crypto modules
config.resolver.alias = {
  ...config.resolver.alias,
  crypto: require.resolve('expo-crypto'),
  stream: require.resolve('readable-stream'),
  buffer: require.resolve('buffer'),
  process: require.resolve('process/browser'),
};

// Ensure Metro knows about these platforms
config.resolver.platforms = ['ios', 'android', 'native', 'web'];

// Auto-inject polyfills for better compatibility
config.transformer.getTransformOptions = async () => ({
  transform: {
    experimentalImportSupport: false,
    inlineRequires: true,
  },
});

module.exports = config;