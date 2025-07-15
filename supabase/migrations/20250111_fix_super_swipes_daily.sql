-- Fix super swipes to be 5 per day instead of per week
-- Updates the get_user_daily_usage function

CREATE OR REPLACE FUNCTION get_user_daily_usage(target_user_id TEXT, target_date DATE DEFAULT CURRENT_DATE)
RETURNS TABLE (
  swipes_used INTEGER,
  super_swipes_used INTEGER,
  swipes_remaining INTEGER,
  super_swipes_remaining INTEGER,
  is_premium BOOLEAN
) AS $$
DECLARE
  daily_record RECORD;
  premium_status RECORD;
  super_swipe_purchases INTEGER;
  super_swipes_used_since_purchase INTEGER;
  available_purchased_super_swipes INTEGER;
BEGIN
  -- Get premium status
  SELECT * INTO premium_status FROM get_user_premium_status(target_user_id);
  
  -- Get daily usage
  SELECT * INTO daily_record FROM user_daily_limits
  WHERE user_id = target_user_id AND date = target_date;
  
  -- If no record exists, create one
  IF daily_record IS NULL THEN
    INSERT INTO user_daily_limits (user_id, date, swipes_used, super_swipes_used)
    VALUES (target_user_id, target_date, 0, 0)
    ON CONFLICT (user_id, date) DO NOTHING;
    
    daily_record.swipes_used := 0;
    daily_record.super_swipes_used := 0;
  END IF;
  
  -- Calculate available super swipes from purchases
  SELECT COUNT(*) INTO super_swipe_purchases
  FROM user_subscriptions
  WHERE user_id = target_user_id 
  AND subscription_type = 'super_swipes' 
  AND status = 'premium';
  
  -- Get super swipes used since first purchase
  SELECT COUNT(*) INTO super_swipes_used_since_purchase
  FROM analytics_events ae
  JOIN user_subscriptions us ON ae.created_at >= us.created_at
  WHERE ae.user_id = target_user_id 
  AND ae.event_type = 'super_swipe'
  AND us.subscription_type = 'super_swipes'
  AND us.status = 'premium'
  LIMIT 1;
  
  available_purchased_super_swipes := GREATEST(0, super_swipe_purchases - COALESCE(super_swipes_used_since_purchase, 0));
  
  RETURN QUERY SELECT 
    daily_record.swipes_used,
    daily_record.super_swipes_used,
    CASE 
      WHEN premium_status.is_premium THEN 999 -- Unlimited for premium (we track but don't limit)
      ELSE GREATEST(0, 20 - daily_record.swipes_used) -- Free tier: 20 per day
    END as swipes_remaining,
    CASE 
      WHEN premium_status.is_premium THEN GREATEST(0, 5 - daily_record.super_swipes_used) -- Premium: 5 per DAY (fixed from week)
      ELSE GREATEST(0, 1 - daily_record.super_swipes_used) + available_purchased_super_swipes -- Free: 1 per day + purchased
    END as super_swipes_remaining,
    COALESCE(premium_status.is_premium, false);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;