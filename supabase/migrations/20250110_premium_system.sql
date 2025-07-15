-- Premium Features and BONK Payments System
-- Migration for subscription management and premium features

-- User subscriptions table
CREATE TABLE user_subscriptions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL, -- Privy user ID
  subscription_type TEXT NOT NULL CHECK (subscription_type IN (
    'monthly',
    'super_swipes'
  )),
  status TEXT NOT NULL DEFAULT 'premium' CHECK (status IN (
    'premium',
    'expired',
    'cancelled'
  )),
  bonk_amount_paid BIGINT NOT NULL, -- Amount of BONK tokens paid
  usd_amount DECIMAL(10,2) NOT NULL, -- USD equivalent
  transaction_hash TEXT, -- Solana transaction hash
  expires_at TIMESTAMP WITH TIME ZONE, -- NULL for consumables like super swipes
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- User daily limits tracking
CREATE TABLE user_daily_limits (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL,
  date DATE NOT NULL,
  swipes_used INTEGER DEFAULT 0,
  super_swipes_used INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Unique constraint to prevent duplicate daily records
  UNIQUE(user_id, date)
);

-- Premium feature usage tracking
CREATE TABLE premium_feature_usage (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL,
  feature_type TEXT NOT NULL CHECK (feature_type IN (
    'who_liked_me',
    'priority_discovery',
    'unlimited_swipes',
    'super_swipe_pack'
  )),
  usage_count INTEGER DEFAULT 1,
  subscription_id UUID REFERENCES user_subscriptions(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add indexes for performance
CREATE INDEX idx_user_subscriptions_user_id ON user_subscriptions(user_id);
CREATE INDEX idx_user_subscriptions_status ON user_subscriptions(status);
CREATE INDEX idx_user_subscriptions_expires_at ON user_subscriptions(expires_at);
CREATE INDEX idx_user_subscriptions_type ON user_subscriptions(subscription_type);
CREATE INDEX idx_user_daily_limits_user_date ON user_daily_limits(user_id, date);
CREATE INDEX idx_premium_feature_usage_user_id ON premium_feature_usage(user_id);
CREATE INDEX idx_premium_feature_usage_feature ON premium_feature_usage(feature_type);

-- RLS Policies
ALTER TABLE user_subscriptions ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_daily_limits ENABLE ROW LEVEL SECURITY;
ALTER TABLE premium_feature_usage ENABLE ROW LEVEL SECURITY;

-- Subscription policies
CREATE POLICY "Users can view their own subscriptions" ON user_subscriptions
  FOR SELECT USING (user_id = current_setting('app.current_user_id', true));

CREATE POLICY "Users can insert their own subscriptions" ON user_subscriptions
  FOR INSERT WITH CHECK (user_id = current_setting('app.current_user_id', true));

-- Daily limits policies
CREATE POLICY "Users can manage their daily limits" ON user_daily_limits
  FOR ALL USING (user_id = current_setting('app.current_user_id', true));

-- Feature usage policies
CREATE POLICY "Users can view their feature usage" ON premium_feature_usage
  FOR SELECT USING (user_id = current_setting('app.current_user_id', true));

CREATE POLICY "Users can insert their feature usage" ON premium_feature_usage
  FOR INSERT WITH CHECK (user_id = current_setting('app.current_user_id', true));

-- Function to get user's current premium status
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
  AND us.subscription_type = 'monthly'
  ORDER BY us.created_at DESC
  LIMIT 1;
  
  -- If no active subscription found, return free tier status
  IF NOT FOUND THEN
    RETURN QUERY SELECT false, NULL::TEXT, NULL::TIMESTAMP WITH TIME ZONE, NULL::INTEGER;
  END IF;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get user's daily usage
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
      WHEN premium_status.is_premium THEN 999 -- Unlimited for premium
      ELSE GREATEST(0, 20 - daily_record.swipes_used) -- Free tier: 20 per day
    END as swipes_remaining,
    CASE 
      WHEN premium_status.is_premium THEN GREATEST(0, 5 - daily_record.super_swipes_used) -- Premium: 5 per week
      ELSE GREATEST(0, 1 - daily_record.super_swipes_used) + available_purchased_super_swipes -- Free: 1 per day + purchased
    END as super_swipes_remaining,
    COALESCE(premium_status.is_premium, false);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to record usage (called when user swipes)
CREATE OR REPLACE FUNCTION record_user_action(
  target_user_id TEXT, 
  action_type TEXT, -- 'swipe' or 'super_swipe'
  target_date DATE DEFAULT CURRENT_DATE
)
RETURNS BOOLEAN AS $$
DECLARE
  current_usage RECORD;
BEGIN
  -- Get current usage
  SELECT * INTO current_usage FROM get_user_daily_usage(target_user_id, target_date);
  
  -- Check if action is allowed
  IF action_type = 'swipe' AND current_usage.swipes_remaining <= 0 THEN
    RETURN false;
  ELSIF action_type = 'super_swipe' AND current_usage.super_swipes_remaining <= 0 THEN
    RETURN false;
  END IF;
  
  -- Record the usage
  INSERT INTO user_daily_limits (user_id, date, swipes_used, super_swipes_used)
  VALUES (
    target_user_id, 
    target_date,
    CASE WHEN action_type = 'swipe' THEN 1 ELSE 0 END,
    CASE WHEN action_type = 'super_swipe' THEN 1 ELSE 0 END
  )
  ON CONFLICT (user_id, date) DO UPDATE SET
    swipes_used = user_daily_limits.swipes_used + 
      CASE WHEN action_type = 'swipe' THEN 1 ELSE 0 END,
    super_swipes_used = user_daily_limits.super_swipes_used + 
      CASE WHEN action_type = 'super_swipe' THEN 1 ELSE 0 END,
    updated_at = NOW();
  
  RETURN true;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to clean up old daily limits (run periodically)
CREATE OR REPLACE FUNCTION cleanup_old_daily_limits()
RETURNS VOID AS $$
BEGIN
  DELETE FROM user_daily_limits 
  WHERE date < CURRENT_DATE - INTERVAL '30 days';
  
  DELETE FROM premium_feature_usage 
  WHERE created_at < NOW() - INTERVAL '90 days';
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger to update timestamps
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Add update triggers
CREATE TRIGGER trigger_user_subscriptions_updated_at
  BEFORE UPDATE ON user_subscriptions
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER trigger_user_daily_limits_updated_at
  BEFORE UPDATE ON user_daily_limits
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();