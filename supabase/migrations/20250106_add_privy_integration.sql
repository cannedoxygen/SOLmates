-- Add Privy integration fields to users table
ALTER TABLE users 
ADD COLUMN IF NOT EXISTS privy_user_id TEXT UNIQUE,
ADD COLUMN IF NOT EXISTS twitter_username TEXT,
ADD COLUMN IF NOT EXISTS twitter_name TEXT,
ADD COLUMN IF NOT EXISTS twitter_avatar_url TEXT,
ADD COLUMN IF NOT EXISTS profile_completed BOOLEAN DEFAULT false;

-- Create index for efficient Privy user lookups
CREATE INDEX IF NOT EXISTS idx_users_privy_user_id ON users(privy_user_id);

-- Create index for discovery queries (users with completed profiles)
CREATE INDEX IF NOT EXISTS idx_users_discovery ON users(privy_user_id, profile_completed, is_active) 
WHERE profile_completed = true AND is_active = true;

-- Update the wallet_address constraint to allow NULL (since we'll use privy_user_id as primary identifier)
ALTER TABLE users ALTER COLUMN wallet_address DROP NOT NULL;

-- Add comment explaining the new architecture
COMMENT ON COLUMN users.privy_user_id IS 'Primary identifier from Privy SDK - unique per user across all login methods';
COMMENT ON COLUMN users.wallet_address IS 'Solana wallet address from Privy embedded wallet';
COMMENT ON COLUMN users.twitter_username IS 'Twitter username from Privy OAuth (cached)';
COMMENT ON COLUMN users.twitter_name IS 'Twitter display name from Privy OAuth (cached)';
COMMENT ON COLUMN users.twitter_avatar_url IS 'Twitter profile image URL from Privy OAuth (cached)';
COMMENT ON COLUMN users.profile_completed IS 'True when user has filled bio, skills, and looking_for fields';