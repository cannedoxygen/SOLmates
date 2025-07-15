-- Cleanup migration to handle potential duplicate table issues
-- This checks if we have duplicate triggers or indexes from running conflicting migrations

-- First, let's check if the trigger exists before trying to create it
DO $$ 
BEGIN
  -- Check if the trigger already exists
  IF NOT EXISTS (
    SELECT 1 FROM pg_trigger 
    WHERE tgname = 'update_user_subscriptions_updated_at'
  ) THEN
    -- Only create if it doesn't exist
    CREATE TRIGGER update_user_subscriptions_updated_at 
      BEFORE UPDATE ON user_subscriptions
      FOR EACH ROW 
      EXECUTE FUNCTION update_updated_at_column();
  END IF;
END $$;

-- Drop the older trigger if it exists (from the premium_system migration)
DROP TRIGGER IF EXISTS trigger_user_subscriptions_updated_at ON user_subscriptions;

-- Ensure we have all the correct columns in user_subscriptions
-- The original schema might be missing some fields
DO $$ 
BEGIN
  -- Add 'yearly' to subscription_type if not already there
  IF NOT EXISTS (
    SELECT 1 
    FROM pg_constraint 
    WHERE conname = 'user_subscriptions_subscription_type_check'
    AND pg_get_constraintdef(oid) LIKE '%yearly%'
  ) THEN
    ALTER TABLE user_subscriptions 
    DROP CONSTRAINT IF EXISTS user_subscriptions_subscription_type_check;
    
    ALTER TABLE user_subscriptions 
    ADD CONSTRAINT user_subscriptions_subscription_type_check 
    CHECK (subscription_type IN ('monthly', 'yearly', 'super_swipes'));
  END IF;
END $$;

-- Make sure 'free' status is included in the status check
DO $$ 
BEGIN
  ALTER TABLE user_subscriptions 
  DROP CONSTRAINT IF EXISTS user_subscriptions_status_check;
  
  ALTER TABLE user_subscriptions 
  ADD CONSTRAINT user_subscriptions_status_check 
  CHECK (status IN ('free', 'premium', 'expired', 'cancelled'));
EXCEPTION
  WHEN others THEN
    -- If constraint doesn't exist or can't be modified, continue
    NULL;
END $$;

-- Ensure all indexes exist (won't error if they already exist)
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_user_id ON user_subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_status ON user_subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_expires_at ON user_subscriptions(expires_at);
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_subscription_type ON user_subscriptions(subscription_type);

-- Log what we did
DO $$ 
BEGIN
  RAISE NOTICE 'Cleanup migration completed successfully';
END $$;