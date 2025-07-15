-- Analytics and User Metrics System
-- Migration for tracking user behavior and engagement

-- Analytics events table
CREATE TABLE analytics_events (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL, -- Privy user ID
  event_type TEXT NOT NULL CHECK (event_type IN (
    'app_open',
    'profile_view',
    'profile_edit',
    'swipe_left',
    'swipe_right',
    'super_swipe',
    'match_created',
    'message_sent',
    'message_received',
    'chat_opened',
    'user_reported',
    'user_blocked',
    'settings_changed',
    'wallet_connected',
    'tip_sent',
    'tip_received'
  )),
  event_data JSONB,
  session_id TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- User metrics summary table (computed daily)
CREATE TABLE user_metrics (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL UNIQUE,
  total_swipes INTEGER DEFAULT 0,
  total_matches INTEGER DEFAULT 0,
  total_messages_sent INTEGER DEFAULT 0,
  total_messages_received INTEGER DEFAULT 0,
  profile_views INTEGER DEFAULT 0,
  match_rate DECIMAL(5,2) DEFAULT 0.00, -- percentage
  response_rate DECIMAL(5,2) DEFAULT 0.00, -- percentage
  last_active TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  total_sessions INTEGER DEFAULT 0,
  avg_session_duration INTEGER DEFAULT 0, -- in seconds
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Daily app metrics summary
CREATE TABLE daily_metrics (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  date DATE NOT NULL UNIQUE,
  daily_active_users INTEGER DEFAULT 0,
  new_users INTEGER DEFAULT 0,
  total_swipes INTEGER DEFAULT 0,
  total_matches INTEGER DEFAULT 0,
  total_messages INTEGER DEFAULT 0,
  avg_session_duration INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add indexes for performance
CREATE INDEX idx_analytics_events_user_id ON analytics_events(user_id);
CREATE INDEX idx_analytics_events_event_type ON analytics_events(event_type);
CREATE INDEX idx_analytics_events_created_at ON analytics_events(created_at);
CREATE INDEX idx_analytics_events_session_id ON analytics_events(session_id);
CREATE INDEX idx_user_metrics_user_id ON user_metrics(user_id);
CREATE INDEX idx_user_metrics_last_active ON user_metrics(last_active);
CREATE INDEX idx_daily_metrics_date ON daily_metrics(date);

-- RLS Policies
ALTER TABLE analytics_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_metrics ENABLE ROW LEVEL SECURITY;
ALTER TABLE daily_metrics ENABLE ROW LEVEL SECURITY;

-- Analytics events policies
CREATE POLICY "Users can insert their own events" ON analytics_events
  FOR INSERT WITH CHECK (user_id = current_setting('app.current_user_id', true));

CREATE POLICY "Users can view their own events" ON analytics_events
  FOR SELECT USING (user_id = current_setting('app.current_user_id', true));

-- User metrics policies  
CREATE POLICY "Users can view their own metrics" ON user_metrics
  FOR SELECT USING (user_id = current_setting('app.current_user_id', true));

-- Daily metrics policies (read-only for all users)
CREATE POLICY "Anyone can view daily metrics" ON daily_metrics
  FOR SELECT USING (true);

-- Function to get user metrics
CREATE OR REPLACE FUNCTION get_user_metrics(user_id TEXT)
RETURNS TABLE (
  total_swipes INTEGER,
  total_matches INTEGER,
  total_messages_sent INTEGER,
  total_messages_received INTEGER,
  profile_views INTEGER,
  match_rate DECIMAL(5,2),
  response_rate DECIMAL(5,2),
  last_active TIMESTAMP WITH TIME ZONE,
  total_sessions INTEGER,
  avg_session_duration INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    um.total_swipes,
    um.total_matches,
    um.total_messages_sent,
    um.total_messages_received,
    um.profile_views,
    um.match_rate,
    um.response_rate,
    um.last_active,
    um.total_sessions,
    um.avg_session_duration
  FROM user_metrics um
  WHERE um.user_id = get_user_metrics.user_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get app metrics
CREATE OR REPLACE FUNCTION get_app_metrics()
RETURNS TABLE (
  daily_active_users INTEGER,
  weekly_active_users INTEGER,
  monthly_active_users INTEGER,
  total_users INTEGER,
  total_matches INTEGER,
  total_messages INTEGER,
  avg_swipes_per_session DECIMAL(5,2),
  match_conversion_rate DECIMAL(5,2)
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    -- Daily active users (last 24 hours)
    (SELECT COUNT(DISTINCT user_id) FROM analytics_events 
     WHERE created_at >= NOW() - INTERVAL '24 hours')::INTEGER,
    
    -- Weekly active users (last 7 days)
    (SELECT COUNT(DISTINCT user_id) FROM analytics_events 
     WHERE created_at >= NOW() - INTERVAL '7 days')::INTEGER,
    
    -- Monthly active users (last 30 days)
    (SELECT COUNT(DISTINCT user_id) FROM analytics_events 
     WHERE created_at >= NOW() - INTERVAL '30 days')::INTEGER,
    
    -- Total users
    (SELECT COUNT(*) FROM users)::INTEGER,
    
    -- Total matches
    (SELECT COUNT(*) FROM matches)::INTEGER,
    
    -- Total messages
    (SELECT COUNT(*) FROM messages)::INTEGER,
    
    -- Average swipes per session
    (SELECT COALESCE(AVG(swipe_count), 0)::DECIMAL(5,2) FROM (
      SELECT session_id, COUNT(*) as swipe_count
      FROM analytics_events 
      WHERE event_type IN ('swipe_left', 'swipe_right', 'super_swipe')
      AND session_id IS NOT NULL
      GROUP BY session_id
    ) session_swipes),
    
    -- Match conversion rate (matches / right swipes)
    (SELECT CASE 
      WHEN right_swipes > 0 THEN (matches_created * 100.0 / right_swipes)::DECIMAL(5,2)
      ELSE 0.00
    END FROM (
      SELECT 
        (SELECT COUNT(*) FROM analytics_events WHERE event_type = 'swipe_right') as right_swipes,
        (SELECT COUNT(*) FROM analytics_events WHERE event_type = 'match_created') as matches_created
    ) conversion_data);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get user engagement
CREATE OR REPLACE FUNCTION get_user_engagement(user_id TEXT)
RETURNS TABLE (
  weekly_swipes INTEGER,
  weekly_matches INTEGER,
  weekly_messages INTEGER,
  engagement_score INTEGER,
  streak_days INTEGER
) AS $$
DECLARE
  swipes_count INTEGER;
  matches_count INTEGER;
  messages_count INTEGER;
  score INTEGER;
  streak INTEGER;
BEGIN
  -- Count weekly activity
  SELECT COUNT(*) INTO swipes_count
  FROM analytics_events 
  WHERE analytics_events.user_id = get_user_engagement.user_id
  AND event_type IN ('swipe_left', 'swipe_right', 'super_swipe')
  AND created_at >= NOW() - INTERVAL '7 days';
  
  SELECT COUNT(*) INTO matches_count
  FROM analytics_events 
  WHERE analytics_events.user_id = get_user_engagement.user_id
  AND event_type = 'match_created'
  AND created_at >= NOW() - INTERVAL '7 days';
  
  SELECT COUNT(*) INTO messages_count
  FROM analytics_events 
  WHERE analytics_events.user_id = get_user_engagement.user_id
  AND event_type = 'message_sent'
  AND created_at >= NOW() - INTERVAL '7 days';
  
  -- Calculate engagement score (0-100)
  score := LEAST(100, (swipes_count * 2) + (matches_count * 10) + (messages_count * 5));
  
  -- Calculate streak (consecutive days with activity)
  WITH daily_activity AS (
    SELECT DATE(created_at) as activity_date
    FROM analytics_events
    WHERE analytics_events.user_id = get_user_engagement.user_id
    AND created_at >= NOW() - INTERVAL '30 days'
    GROUP BY DATE(created_at)
    ORDER BY DATE(created_at) DESC
  ),
  streak_calc AS (
    SELECT 
      activity_date,
      activity_date - INTERVAL '1 day' * (ROW_NUMBER() OVER (ORDER BY activity_date DESC) - 1) as streak_group
    FROM daily_activity
  )
  SELECT COUNT(*) INTO streak
  FROM streak_calc
  WHERE streak_group = (SELECT streak_group FROM streak_calc LIMIT 1);
  
  RETURN QUERY SELECT swipes_count, matches_count, messages_count, score, COALESCE(streak, 0);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get trending users (users with high match rates)
CREATE OR REPLACE FUNCTION get_trending_users(result_limit INTEGER DEFAULT 10)
RETURNS TABLE (user_id TEXT) AS $$
BEGIN
  RETURN QUERY
  SELECT um.user_id
  FROM user_metrics um
  WHERE um.total_swipes >= 10 -- Minimum activity threshold
  AND um.last_active >= NOW() - INTERVAL '7 days' -- Active in last week
  ORDER BY um.match_rate DESC, um.total_matches DESC
  LIMIT result_limit;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to update user metrics (call this periodically)
CREATE OR REPLACE FUNCTION update_user_metrics(target_user_id TEXT)
RETURNS VOID AS $$
DECLARE
  swipes_count INTEGER;
  matches_count INTEGER;
  messages_sent_count INTEGER;
  messages_received_count INTEGER;
  profile_views_count INTEGER;
  match_rate_calc DECIMAL(5,2);
  sessions_count INTEGER;
  avg_duration INTEGER;
BEGIN
  -- Calculate metrics from events
  SELECT COUNT(*) INTO swipes_count
  FROM analytics_events 
  WHERE user_id = target_user_id
  AND event_type IN ('swipe_left', 'swipe_right', 'super_swipe');
  
  SELECT COUNT(*) INTO matches_count
  FROM analytics_events 
  WHERE user_id = target_user_id
  AND event_type = 'match_created';
  
  SELECT COUNT(*) INTO messages_sent_count
  FROM analytics_events 
  WHERE user_id = target_user_id
  AND event_type = 'message_sent';
  
  SELECT COUNT(*) INTO messages_received_count
  FROM analytics_events 
  WHERE user_id = target_user_id
  AND event_type = 'message_received';
  
  SELECT COUNT(*) INTO profile_views_count
  FROM analytics_events 
  WHERE user_id = target_user_id
  AND event_type = 'profile_view';
  
  -- Calculate match rate
  SELECT COUNT(*) INTO matches_count FROM analytics_events 
  WHERE user_id = target_user_id AND event_type = 'swipe_right';
  
  IF swipes_count > 0 THEN
    match_rate_calc := (matches_count * 100.0 / swipes_count)::DECIMAL(5,2);
  ELSE
    match_rate_calc := 0.00;
  END IF;
  
  -- Calculate session metrics
  SELECT COUNT(DISTINCT session_id) INTO sessions_count
  FROM analytics_events 
  WHERE user_id = target_user_id
  AND session_id IS NOT NULL;
  
  -- Insert or update user metrics
  INSERT INTO user_metrics (
    user_id,
    total_swipes,
    total_matches,
    total_messages_sent,
    total_messages_received,
    profile_views,
    match_rate,
    total_sessions,
    updated_at
  ) VALUES (
    target_user_id,
    swipes_count,
    matches_count,
    messages_sent_count,
    messages_received_count,
    profile_views_count,
    match_rate_calc,
    sessions_count,
    NOW()
  )
  ON CONFLICT (user_id) DO UPDATE SET
    total_swipes = EXCLUDED.total_swipes,
    total_matches = EXCLUDED.total_matches,
    total_messages_sent = EXCLUDED.total_messages_sent,
    total_messages_received = EXCLUDED.total_messages_received,
    profile_views = EXCLUDED.profile_views,
    match_rate = EXCLUDED.match_rate,
    total_sessions = EXCLUDED.total_sessions,
    updated_at = NOW();
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Create function to auto-create user metrics
CREATE OR REPLACE FUNCTION create_user_metrics()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO user_metrics (user_id)
  VALUES (NEW.privy_user_id)
  ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to create user metrics when user is created
CREATE TRIGGER trigger_create_user_metrics
  AFTER INSERT ON users
  FOR EACH ROW
  EXECUTE FUNCTION create_user_metrics();