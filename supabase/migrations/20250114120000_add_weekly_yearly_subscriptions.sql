-- Add Weekly and Yearly Subscription Types
-- Update the subscription_type check constraint to include weekly and yearly

-- First, drop the existing check constraint
ALTER TABLE user_subscriptions DROP CONSTRAINT IF EXISTS user_subscriptions_subscription_type_check;

-- Add the new check constraint with weekly and yearly options
ALTER TABLE user_subscriptions ADD CONSTRAINT user_subscriptions_subscription_type_check 
CHECK (subscription_type IN ('weekly', 'monthly', 'yearly', 'super_swipes'));

-- Update the get_user_premium_status function to check for any premium subscription type
DROP FUNCTION IF EXISTS get_user_premium_status(TEXT);

CREATE OR REPLACE FUNCTION get_user_premium_status(target_user_id TEXT)
RETURNS TABLE (
  is_premium BOOLEAN,
  subscription_type TEXT,
  expires_at TIMESTAMP WITH TIME ZONE,
  days_remaining INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    CASE WHEN us.id IS NOT NULL THEN true ELSE false END as is_premium,
    us.subscription_type,
    us.expires_at,
    CASE 
      WHEN us.expires_at IS NULL THEN NULL
      ELSE EXTRACT(days FROM us.expires_at - NOW())::INTEGER
    END as days_remaining
  FROM user_subscriptions us
  WHERE us.user_id = target_user_id
  AND us.status = 'premium'
  AND (us.expires_at IS NULL OR us.expires_at > NOW())
  AND us.subscription_type IN ('weekly', 'monthly', 'yearly')
  ORDER BY us.created_at DESC
  LIMIT 1;
  
  -- If no active subscription found, return free tier status
  IF NOT FOUND THEN
    RETURN QUERY SELECT false, NULL::TEXT, NULL::TIMESTAMP WITH TIME ZONE, NULL::INTEGER;
  END IF;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Test the updated function
SELECT 
    'Updated Premium Status Function Test' as test,
    get_user_premium_status('did:privy:cmcqo054u00mpjr0mnf2w8uxa') as status;