-- Update avatar URLs for the new users
-- Run this in Supabase SQL Editor

-- Update toly
UPDATE users 
SET avatar_url = 'https://pbs.twimg.com/profile_images/1587503498765869056/bFiocz3b_400x400.jpg'
WHERE username = 'toly';

-- Update mike_s  
UPDATE users
SET avatar_url = 'https://pbs.twimg.com/profile_images/1780680323203469312/fz3qQgJP_400x400.jpg'
WHERE username = 'mike_s';

-- Update mert_helius
UPDATE users
SET avatar_url = 'https://pbs.twimg.com/profile_images/1761433516354830336/4ZIy1-JR_400x400.jpg'
WHERE username = 'mert_helius';

-- Verify the updates
SELECT username, avatar_url, twitter_avatar_url 
FROM users 
WHERE username IN ('toly', 'mike_s', 'mert_helius');