const privy = require('@privy-io/server-auth');
require('dotenv').config();

async function debugPrivyAPI() {
  console.log('🔍 Debugging Privy API Configuration...');
  
  const appId = process.env.EXPO_PUBLIC_PRIVY_APP_ID;
  const appSecret = process.env.EXPO_PUBLIC_PRIVY_APP_SECRET;
  
  console.log('App ID:', appId);
  console.log('App Secret present:', !!appSecret);
  
  if (!appId || !appSecret) {
    console.error('❌ Missing App ID or App Secret');
    return;
  }
  
  try {
    // Initialize the Privy API client
    console.log('Available exports:', Object.keys(privy));
    
    const privyClient = new privy.PrivyClient({
      appId: appId,
      appSecret: appSecret,
    });
    
    console.log('✅ Privy API client initialized');
    
    // Try to get app configuration
    console.log('🔍 Attempting to fetch app configuration...');
    
    // This might fail but will give us more info about the API connection
    const response = await privyClient.getApp();
    console.log('✅ App config retrieved:', response);
    
  } catch (error) {
    console.error('❌ Privy API Error:', error.message);
    console.error('❌ Error details:', error);
    
    // Check if it's an authentication error vs configuration error
    if (error.message?.includes('401') || error.message?.includes('Unauthorized')) {
      console.error('🚨 This suggests your App ID or App Secret is incorrect');
    } else if (error.message?.includes('app identifier') || error.message?.includes('com.solmates')) {
      console.error('🚨 This confirms the app identifier issue');
    }
  }
}

debugPrivyAPI();