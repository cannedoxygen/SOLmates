// Test script to validate Privy configuration
const { PrivyProvider } = require('@privy-io/expo');

console.log('🔍 Testing Privy Configuration...');

// Test the config object structure
const testConfig = {
  appearance: {
    theme: 'dark',
    accentColor: '#9945FF',
  },
  loginMethods: ['twitter'],
  embeddedWallets: {
    createOnLogin: 'all-users',
    solana: {
      network: 'mainnet-beta',
      noPromptOnSignature: false,
    },
  },
};

console.log('✅ Config structure:', JSON.stringify(testConfig, null, 2));

// Validate required properties
const validationChecks = [
  { check: testConfig.loginMethods?.includes('twitter'), name: 'Twitter login enabled' },
  { check: testConfig.embeddedWallets?.createOnLogin === 'all-users', name: 'Create wallet for all users' },
  { check: testConfig.embeddedWallets?.solana?.network === 'mainnet-beta', name: 'Solana mainnet configured' },
  { check: typeof testConfig.embeddedWallets?.solana?.noPromptOnSignature === 'boolean', name: 'No prompt setting configured' },
];

console.log('\n🧪 Configuration Validation:');
validationChecks.forEach(({ check, name }) => {
  console.log(`${check ? '✅' : '❌'} ${name}`);
});

// Check environment variables
console.log('\n🔑 Environment Variables:');
console.log(`App ID: ${process.env.EXPO_PUBLIC_PRIVY_APP_ID ? 'SET' : 'MISSING'}`);
console.log(`App Secret: ${process.env.EXPO_PUBLIC_PRIVY_APP_SECRET ? 'SET' : 'MISSING'}`);

console.log('\n🎯 Next Steps:');
console.log('1. If all checks pass ✅, the config should work');
console.log('2. If any checks fail ❌, fix those issues first');
console.log('3. Test this config in a minimal reproduction app');