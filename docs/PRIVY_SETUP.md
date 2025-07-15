# Privy Setup Guide for Solmates

## 1. Create Privy Account

1. Go to [https://dashboard.privy.io](https://dashboard.privy.io)
2. Sign up for a free account
3. Create a new application

## 2. Configure Your App

### Basic Settings
1. Go to **Settings** → **Basics**
2. Set your app name: `Solmates`
3. Set your app URL: `https://solmates.app`
4. Copy your **App ID** (you'll need this)

### URL Configuration
1. Go to **Settings** → **URLs**
2. Add these redirect URLs:
   - `solmates://` (for mobile deep linking)
   - `https://solmates.app` (for web fallback)
   - `exp://192.168.1.120:8081` (for Expo development - replace IP with your actual IP)

### Twitter OAuth Setup
1. Go to **Login Methods**
2. Enable **Twitter**
3. You'll need to create a Twitter Developer account:
   - Go to [developer.twitter.com](https://developer.twitter.com)
   - Create an app
   - Get your Twitter API keys
4. Add Twitter credentials to Privy dashboard

## 3. Update Environment Variables

Update your `.env` file:
```env
EXPO_PUBLIC_PRIVY_APP_ID=your-actual-privy-app-id-here
```

## 4. Android Configuration (Already Done)

✅ URL scheme configured in `app.json`:
```json
{
  "scheme": "solmates",
  "android": {
    "intentFilters": [
      {
        "action": "VIEW",
        "category": ["DEFAULT", "BROWSABLE"],
        "data": { "scheme": "solmates" }
      }
    ]
  }
}
```

## 5. Test the Setup

1. Restart your Expo development server:
   ```bash
   npx expo start -c
   ```

2. Open the app on Android emulator
3. You should see the Twitter login button
4. Tap "Continue with Twitter"
5. Complete OAuth flow
6. Check console logs for user data

## 6. Expected Flow

1. **User taps login** → Twitter OAuth opens
2. **User authorizes** → Privy creates embedded wallet
3. **Profile data received** → Twitter username, name, profile picture
4. **Wallet created** → Non-custodial Solana wallet
5. **User logged in** → Navigate to main app

## 7. Accessing User Data

After login, you can access:

```javascript
import { usePrivy } from '@privy-io/expo';

function MyComponent() {
  const { user, authenticated } = usePrivy();
  
  if (authenticated && user.twitter) {
    console.log('Username:', user.twitter.username);
    console.log('Profile Picture:', user.twitter.profilePictureUrl);
    console.log('Wallet Address:', user.wallet?.address);
  }
}
```

## 8. Production Setup

When ready for production:

1. **Update redirect URLs** in Privy dashboard
2. **Add production domain** (e.g., `https://solmates.app`)
3. **Update app.json** with production URL scheme
4. **Build and test** with EAS Build

## 9. Troubleshooting

### Common Issues:

**"Invalid redirect URI"**
- Check URL schemes in Privy dashboard
- Ensure `app.json` scheme matches

**"Twitter OAuth failed"**
- Verify Twitter API credentials in Privy dashboard
- Check Twitter app permissions

**"Embedded wallet not created"**
- Ensure `createOnLogin: 'users-without-wallets'` is set
- Check user object in console logs

## 10. Security Notes

- App ID is safe to expose in client code
- Never expose your Privy API secret key
- Twitter profile pictures are public URLs
- Embedded wallets are non-custodial and secure

## Support

- [Privy Documentation](https://docs.privy.io)
- [Privy Discord](https://discord.gg/privy)
- Check console logs for detailed error messages