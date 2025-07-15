-- Add missing profile fields for enhanced profile cards
-- This migration adds columns that were referenced in the app but don't exist in the schema

-- Add timezone column
ALTER TABLE users 
ADD COLUMN IF NOT EXISTS timezone TEXT;

-- Add interests column (for AboutMeCard)
ALTER TABLE users 
ADD COLUMN IF NOT EXISTS interests TEXT[];

-- Add index for better performance on new fields
CREATE INDEX IF NOT EXISTS idx_users_timezone ON users(timezone);
CREATE INDEX IF NOT EXISTS idx_users_interests ON users USING GIN(interests);

-- Update any existing users to have empty arrays for interests if null
UPDATE users 
SET interests = '{}' 
WHERE interests IS NULL;