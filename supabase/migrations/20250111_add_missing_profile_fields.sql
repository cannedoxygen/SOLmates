-- Add missing profile fields to users table
-- These fields are used in onboarding and profile cards but missing from schema

ALTER TABLE users 
ADD COLUMN IF NOT EXISTS privy_user_id TEXT UNIQUE,
ADD COLUMN IF NOT EXISTS timezone TEXT,
ADD COLUMN IF NOT EXISTS response_time TEXT DEFAULT 'Unknown',
ADD COLUMN IF NOT EXISTS profile_completed BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS twitter_username TEXT,
ADD COLUMN IF NOT EXISTS twitter_name TEXT,
ADD COLUMN IF NOT EXISTS twitter_avatar_url TEXT;

-- Add index for privy_user_id for performance
CREATE INDEX IF NOT EXISTS idx_users_privy_user_id ON users(privy_user_id);

-- Add comment to document the purpose of new fields
COMMENT ON COLUMN users.privy_user_id IS 'Privy authentication user ID for linking accounts';
COMMENT ON COLUMN users.timezone IS 'User timezone preference (e.g., UTC+5:30)';
COMMENT ON COLUMN users.response_time IS 'Average response time display (e.g., Within 1 hour)';
COMMENT ON COLUMN users.profile_completed IS 'Whether user has completed onboarding profile setup';
COMMENT ON COLUMN users.twitter_username IS 'Twitter/X username without @ symbol';
COMMENT ON COLUMN users.twitter_name IS 'Twitter/X display name';
COMMENT ON COLUMN users.twitter_avatar_url IS 'Twitter/X profile image URL';