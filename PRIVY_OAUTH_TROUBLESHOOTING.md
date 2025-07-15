# Privy OAuth Android Emulator Troubleshooting Guide

## Issue Summary
The Privy OAuth callback is not working on Android emulator. After clicking "Continue with Twitter" and authorizing, no callback is received back to the app.

## Root Causes Identified

1. **Missing Deep Link Configuration in Android Manifest**
   - The Android manifest was missing the intent filters for deep linking
   - This has been fixed by adding the appropriate intent filters

2. **Package Name Inconsistency**
   - Build.gradle uses `com.solmates`
   - App.json was using `com.solmates.app`
   - This has been fixed to use `com.solmates` consistently

3. **Android Emulator OAuth Redirect Limitations**
   - Custom URI schemes have restrictions on newer Chrome versions
   - Android emulators may have issues with OAuth redirects

## Solutions Applied

### 1. Updated Android Manifest
Added deep linking intent filters to `/android/app/src/main/AndroidManifest.xml`:

```xml
<intent-filter>
  <action android:name="android.intent.action.VIEW"/>
  <category android:name="android.intent.category.DEFAULT"/>
  <category android:name="android.intent.category.BROWSABLE"/>
  <data android:scheme="solmates"/>
</intent-filter>
```

### 2. Fixed Package Name
Updated `app.json` to use consistent package name:
```json
"package": "com.solmates"
```

### 3. Added Deep Link Debugger
Created a debug component to monitor deep link events in real-time.

## Testing Steps

### 1. Rebuild the App
```bash
# Clean and rebuild
cd android && ./gradlew clean
npx expo run:android
```

### 2. Test Deep Links Manually
After the app is running on the emulator:

```bash
# Test the custom scheme
adb shell am start -W -a android.intent.action.VIEW -d "solmates://oauth/callback" com.solmates

# Test without path
adb shell am start -W -a android.intent.action.VIEW -d "solmates://" com.solmates
```

### 3. Monitor Deep Link Events
The DeepLinkDebugger component will show:
- Initial URL (if app was opened via deep link)
- All received deep link events
- Error messages if any

## Additional Troubleshooting

### 1. Verify Privy Dashboard Configuration
Ensure your Privy dashboard has:
- URL Scheme: `solmates`
- Android Package Name: `com.solmates`
- Proper OAuth redirect URIs configured

### 2. Check Chrome Version
If using Chrome in the emulator:
```bash
adb shell dumpsys package com.android.chrome | grep versionName
```

### 3. Alternative Testing Methods

#### Use Physical Device
OAuth flows often work better on physical devices:
```bash
npx expo run:android --device
```

#### Use Development Build
Instead of Expo Go, use a development build:
```bash
eas build --platform android --profile development
```

### 4. Debug OAuth Flow
Add more logging to track the OAuth flow:

```javascript
// In PrivyLoginButton.tsx
const { login: loginWithOAuth } = useLoginWithOAuth({
  onSuccess: ({ user, isNewUser }) => {
    console.log('✅ OAuth success - Full response:', { user, isNewUser });
  },
  onError: (error) => {
    console.error('❌ OAuth error - Full error:', error);
    console.error('Error stack:', error.stack);
  }
});
```

### 5. Check Browser Behavior
The OAuth flow opens a browser. Monitor what happens:
- Does the browser open?
- Does Twitter auth page load?
- After authorizing, what URL does the browser try to open?

### 6. Android Emulator Specific Issues

#### Enable Chrome Custom Tabs
Ensure Chrome Custom Tabs are enabled in the emulator.

#### Check Intent Resolution
```bash
adb shell pm query-activities -a android.intent.action.VIEW -d "solmates://oauth/callback"
```

This should show your app if deep links are configured correctly.

## Known Limitations

1. **Expo Go**: Cannot test OAuth flows in Expo Go due to custom scheme limitations
2. **Android Emulator**: Some emulator configurations may not properly handle OAuth redirects
3. **Chrome Restrictions**: Newer Chrome versions restrict custom URI schemes for security

## Recommended Solution

For reliable OAuth testing on Android:
1. Use a physical device
2. Create a development build with EAS
3. Ensure all configurations match between Privy dashboard and app

## Next Steps

1. Test the deep links using the provided adb commands
2. Monitor the DeepLinkDebugger output
3. Check if the OAuth callback reaches the app
4. If issues persist, test on a physical device