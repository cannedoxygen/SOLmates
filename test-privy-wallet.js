// Test script to validate Privy embedded wallet configuration
const React = require('react');

console.log('🔍 Testing Privy Embedded Wallet Configuration...');

// Test the actual config we're using
const testConfig = {
  appId: process.env.EXPO_PUBLIC_PRIVY_APP_ID || 'cmcnu20ab02zgl10m45m4ev8q',
  clientId: 'client-WY6N4zWGmZ2dBNY18bizP18WW2McR1iLNSxMVsgMXDPZP',
  appSecret: process.env.EXPO_PUBLIC_PRIVY_APP_SECRET,
  config: {
    appearance: {
      theme: 'dark',
      accentColor: '#9945FF',
    },
    loginMethods: ['twitter'],
    embeddedWallets: {
      createOnLogin: 'users-without-wallets',
      solana: {
        createOnLogin: 'all-users',
        network: 'mainnet-beta',
        noPromptOnSignature: false,
      },
    },
  }
};

console.log('📋 Configuration Validation:');
console.log('✅ App ID:', testConfig.appId);
console.log('✅ Client ID:', testConfig.clientId);
console.log('✅ App Secret:', testConfig.appSecret ? 'SET' : 'MISSING');
console.log('✅ Embedded Wallets Config:', JSON.stringify(testConfig.config.embeddedWallets, null, 2));

// Test configuration structure
const validationTests = [
  {
    name: 'App ID format',
    test: () => testConfig.appId && testConfig.appId.length === 25,
    expected: '25 character string'
  },
  {
    name: 'Client ID format', 
    test: () => testConfig.clientId && testConfig.clientId.startsWith('client-'),
    expected: 'Starts with "client-"'
  },
  {
    name: 'App Secret present',
    test: () => !!testConfig.appSecret,
    expected: 'Environment variable set'
  },
  {
    name: 'Twitter login enabled',
    test: () => testConfig.config.loginMethods.includes('twitter'),
    expected: 'Twitter in loginMethods array'
  },
  {
    name: 'Embedded wallets config',
    test: () => !!testConfig.config.embeddedWallets,
    expected: 'embeddedWallets object exists'
  },
  {
    name: 'Solana config structure',
    test: () => testConfig.config.embeddedWallets.solana &&
              testConfig.config.embeddedWallets.solana.network === 'mainnet-beta',
    expected: 'Solana mainnet-beta configured'
  },
  {
    name: 'Wallet creation settings',
    test: () => testConfig.config.embeddedWallets.solana.createOnLogin === 'all-users',
    expected: 'createOnLogin set to all-users for Solana'
  }
];

console.log('\n🧪 Running Validation Tests:');
let passed = 0;
let failed = 0;

validationTests.forEach((test, index) => {
  try {
    const result = test.test();
    if (result) {
      console.log(`✅ ${index + 1}. ${test.name}`);
      passed++;
    } else {
      console.log(`❌ ${index + 1}. ${test.name} - Expected: ${test.expected}`);
      failed++;
    }
  } catch (error) {
    console.log(`💥 ${index + 1}. ${test.name} - Error: ${error.message}`);
    failed++;
  }
});

console.log(`\n📊 Test Results: ${passed} passed, ${failed} failed`);

// Check for common issues
console.log('\n🔍 Common Issue Checks:');

if (!process.env.EXPO_PUBLIC_PRIVY_APP_SECRET) {
  console.log('⚠️  EXPO_PUBLIC_PRIVY_APP_SECRET not found in environment');
}

if (testConfig.config.embeddedWallets.createOnLogin === 'users-without-wallets' && 
    testConfig.config.embeddedWallets.solana.createOnLogin === 'all-users') {
  console.log('⚠️  Conflicting createOnLogin settings detected');
  console.log('   - Global: users-without-wallets');
  console.log('   - Solana: all-users');
  console.log('   - This might cause initialization issues');
}

console.log('\n🎯 Next Steps:');
if (failed === 0) {
  console.log('✅ Configuration looks correct');
  console.log('✅ The issue might be in runtime initialization');
  console.log('✅ Try checking Privy dashboard settings');
} else {
  console.log('❌ Fix the configuration issues above');
  console.log('❌ Rebuild after making changes');
}

console.log('\n💡 Debugging Tips:');
console.log('1. Check Privy dashboard for your app settings');
console.log('2. Verify Solana embedded wallets are enabled');
console.log('3. Check if there are any API rate limits');
console.log('4. Try with a fresh user account');