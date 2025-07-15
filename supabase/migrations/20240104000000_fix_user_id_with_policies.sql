-- Fix User ID Types - Handle RLS Policies
-- This migration fixes the user_id types while properly handling RLS policies

-- Drop existing functions first
DROP FUNCTION IF EXISTS get_user_metrics(UUID) CASCADE;
DROP FUNCTION IF EXISTS get_user_engagement(UUID) CASCADE;

-- Disable RLS and drop all policies on analytics tables
ALTER TABLE analytics_events DISABLE ROW LEVEL SECURITY;
ALTER TABLE user_sessions DISABLE ROW LEVEL SECURITY;
ALTER TABLE user_daily_metrics DISABLE ROW LEVEL SECURITY;

-- Drop all policies on these tables
DROP POLICY IF EXISTS "Users can insert their own events" ON analytics_events;
DROP POLICY IF EXISTS "Users can view their own events" ON analytics_events;
DROP POLICY IF EXISTS "Users can insert their own sessions" ON user_sessions;
DROP POLICY IF EXISTS "Users can view their own sessions" ON user_sessions;
DROP POLICY IF EXISTS "Users can insert their own metrics" ON user_daily_metrics;
DROP POLICY IF EXISTS "Users can view their own metrics" ON user_daily_metrics;

-- Now alter the column types
ALTER TABLE analytics_events ALTER COLUMN user_id TYPE TEXT;
ALTER TABLE user_sessions ALTER COLUMN user_id TYPE TEXT;
ALTER TABLE user_daily_metrics ALTER COLUMN user_id TYPE TEXT;

-- Function to get user metrics (all-time stats) - TEXT parameter for Privy DIDs
CREATE OR REPLACE FUNCTION get_user_metrics(input_user_id TEXT)
RETURNS TABLE (
    total_swipes BIGINT,
    total_matches BIGINT,
    total_messages_sent BIGINT,
    total_messages_received BIGINT,
    profile_views BIGINT,
    match_rate DECIMAL,
    response_rate DECIMAL,
    last_active TIMESTAMP WITH TIME ZONE,
    total_sessions BIGINT,
    avg_session_duration DECIMAL
) AS $$
BEGIN
    RETURN QUERY
    WITH user_stats AS (
        SELECT 
            COALESCE(SUM(CASE WHEN event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 ELSE 0 END), 0) as swipes,
            COALESCE(SUM(CASE WHEN event_type = 'match_created' THEN 1 ELSE 0 END), 0) as matches,
            COALESCE(SUM(CASE WHEN event_type = 'message_sent' THEN 1 ELSE 0 END), 0) as messages_sent,
            COALESCE(SUM(CASE WHEN event_type = 'message_received' THEN 1 ELSE 0 END), 0) as messages_received,
            COALESCE(SUM(CASE WHEN event_type = 'profile_view' THEN 1 ELSE 0 END), 0) as profile_views,
            MAX(created_at) as last_active
        FROM analytics_events 
        WHERE analytics_events.user_id = input_user_id
    ),
    session_stats AS (
        SELECT 
            COUNT(*)::BIGINT as total_sessions,
            COALESCE(AVG(duration_seconds), 0) as avg_duration
        FROM user_sessions 
        WHERE user_sessions.user_id = input_user_id
        AND end_time IS NOT NULL
    )
    SELECT 
        us.swipes,
        us.matches,
        us.messages_sent,
        us.messages_received,
        us.profile_views,
        CASE 
            WHEN us.swipes > 0 THEN ROUND((us.matches::DECIMAL / us.swipes::DECIMAL) * 100, 2)
            ELSE 0
        END as match_rate,
        CASE 
            WHEN us.messages_received > 0 THEN ROUND((us.messages_sent::DECIMAL / us.messages_received::DECIMAL) * 100, 2)
            ELSE 0
        END as response_rate,
        us.last_active,
        ss.total_sessions,
        ROUND(ss.avg_duration, 2) as avg_session_duration
    FROM user_stats us
    CROSS JOIN session_stats ss;
END;
$$ LANGUAGE plpgsql;

-- Function to get user engagement (weekly stats + engagement score) - TEXT parameter for Privy DIDs
CREATE OR REPLACE FUNCTION get_user_engagement(input_user_id TEXT)
RETURNS TABLE (
    weekly_swipes BIGINT,
    weekly_matches BIGINT,
    weekly_messages BIGINT,
    engagement_score INTEGER,
    streak_days INTEGER
) AS $$
BEGIN
    RETURN QUERY
    WITH weekly_stats AS (
        SELECT 
            COALESCE(SUM(CASE WHEN event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 ELSE 0 END), 0) as swipes,
            COALESCE(SUM(CASE WHEN event_type = 'match_created' THEN 1 ELSE 0 END), 0) as matches,
            COALESCE(SUM(CASE WHEN event_type = 'message_sent' THEN 1 ELSE 0 END), 0) as messages
        FROM analytics_events 
        WHERE analytics_events.user_id = input_user_id
        AND created_at >= NOW() - INTERVAL '7 days'
    ),
    streak_calc AS (
        SELECT 
            COUNT(DISTINCT DATE(created_at)) as active_days
        FROM analytics_events
        WHERE analytics_events.user_id = input_user_id
        AND created_at >= NOW() - INTERVAL '30 days'
    ),
    engagement_calc AS (
        SELECT 
            ws.swipes,
            ws.matches,
            ws.messages,
            -- Calculate engagement score (0-100)
            LEAST(100, GREATEST(0, 
                (ws.swipes * 2) + 
                (ws.matches * 10) + 
                (ws.messages * 15) + 
                (sc.active_days * 5)
            )) as score,
            sc.active_days
        FROM weekly_stats ws
        CROSS JOIN streak_calc sc
    )
    SELECT 
        ec.swipes,
        ec.matches,
        ec.messages,
        ec.score::INTEGER,
        ec.active_days::INTEGER
    FROM engagement_calc ec;
END;
$$ LANGUAGE plpgsql;

-- Re-create RLS policies with TEXT user_id (optional - you may want to skip this for analytics)
-- CREATE POLICY "Users can insert their own events" ON analytics_events FOR INSERT WITH CHECK (auth.uid()::text = user_id);
-- CREATE POLICY "Users can view their own events" ON analytics_events FOR SELECT USING (auth.uid()::text = user_id);

-- ALTER TABLE analytics_events ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE user_sessions ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE user_daily_metrics ENABLE ROW LEVEL SECURITY;