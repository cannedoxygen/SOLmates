# Supabase Setup Guide for Solmates

## 1. Create Supabase Project

1. Go to [https://supabase.com](https://supabase.com)
2. Create a new project with these settings:
   - Project name: `solmates-app` (or your preference)
   - Database Password: Choose a strong password
   - Region: Select closest to your users

## 2. Get Your Credentials

Once your project is created:

1. Go to Settings → API
2. Copy these values:
   - Project URL (looks like: `https://xxxxx.supabase.co`)
   - Anon/Public Key (safe to use in client apps)

## 3. Set Up Database Schema

1. Go to SQL Editor in your Supabase dashboard
2. Create a new query
3. Copy and paste the contents of `schema.sql`
4. Run the query

## 4. Set Up Security Policies

1. Still in SQL Editor
2. Create another new query
3. Copy and paste the contents of `policies.sql`
4. Run the query

## 5. Enable Wallet Authentication

Since this app uses Solana wallet authentication, we need to set up custom JWT:

1. Go to Authentication → Providers
2. Disable Email provider (optional)
3. We'll handle wallet auth through our custom implementation

## 6. Update Your .env File

Replace the placeholder values in your `.env` file:

```env
EXPO_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
EXPO_PUBLIC_SUPABASE_ANON_KEY=your-anon-key-here
```

## 7. Storage Buckets (Optional)

If you want to enable avatar/image uploads:

1. Go to Storage in Supabase dashboard
2. Create a new bucket called `avatars`
3. Set it to public
4. Create another bucket called `chat-images` (keep it private)

## 8. Real-time Subscriptions

The app uses real-time features for chat. These are enabled by default in Supabase.

## 9. Test Your Setup

1. Restart your Expo app
2. The app should now connect to your real Supabase instance
3. Try creating an account with your wallet

## Troubleshooting

- If you get authentication errors, make sure your wallet address is being properly formatted
- Check that RLS policies are enabled on all tables
- Verify your environment variables are loaded correctly
- Check Supabase logs for any SQL errors

## Next Steps

- Set up Supabase Edge Functions for advanced features
- Configure push notifications with Expo and Supabase
- Set up monitoring and analytics