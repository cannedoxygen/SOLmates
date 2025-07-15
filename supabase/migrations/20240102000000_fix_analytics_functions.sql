-- Fix Analytics Functions - Remove Function Overloading Conflicts
-- This migration fixes the function signature conflicts for analytics functions

-- Drop all existing analytics functions with CASCADE to remove triggers/dependencies
DROP FUNCTION IF EXISTS get_user_metrics(text) CASCADE;
DROP FUNCTION IF EXISTS get_user_metrics(uuid) CASCADE;
DROP FUNCTION IF EXISTS get_user_engagement(text) CASCADE;
DROP FUNCTION IF EXISTS get_user_engagement(uuid) CASCADE;
DROP FUNCTION IF EXISTS get_trending_users(integer) CASCADE;
DROP FUNCTION IF EXISTS get_app_metrics() CASCADE;

-- Function to get user metrics (all-time stats) - UUID parameter only
CREATE OR REPLACE FUNCTION get_user_metrics(input_user_id UUID)
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
        WHERE analytics_events.user_id = input_user_id::TEXT
    ),
    session_stats AS (
        SELECT 
            COUNT(*)::BIGINT as total_sessions,
            COALESCE(AVG(duration_seconds), 0) as avg_duration
        FROM user_sessions 
        WHERE user_sessions.user_id = input_user_id::TEXT
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

-- Function to get user engagement (weekly stats + engagement score) - UUID parameter only
CREATE OR REPLACE FUNCTION get_user_engagement(input_user_id UUID)
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
        WHERE analytics_events.user_id = input_user_id::TEXT
        AND created_at >= NOW() - INTERVAL '7 days'
    ),
    streak_calc AS (
        SELECT 
            COUNT(DISTINCT DATE(created_at)) as active_days
        FROM analytics_events
        WHERE analytics_events.user_id = input_user_id::TEXT
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

-- Function to get app-wide metrics
CREATE OR REPLACE FUNCTION get_app_metrics()
RETURNS TABLE (
    daily_active_users BIGINT,
    weekly_active_users BIGINT,
    monthly_active_users BIGINT,
    total_users BIGINT,
    total_matches BIGINT,
    total_messages BIGINT,
    avg_swipes_per_session DECIMAL,
    match_conversion_rate DECIMAL
) AS $$
BEGIN
    RETURN QUERY
    WITH daily_users AS (
        SELECT COUNT(DISTINCT user_id) as dau
        FROM analytics_events 
        WHERE created_at >= CURRENT_DATE
    ),
    weekly_users AS (
        SELECT COUNT(DISTINCT user_id) as wau
        FROM analytics_events 
        WHERE created_at >= CURRENT_DATE - INTERVAL '7 days'
    ),
    monthly_users AS (
        SELECT COUNT(DISTINCT user_id) as mau
        FROM analytics_events 
        WHERE created_at >= CURRENT_DATE - INTERVAL '30 days'
    ),
    total_users AS (
        SELECT COUNT(DISTINCT user_id) as total
        FROM analytics_events
    ),
    app_stats AS (
        SELECT 
            COUNT(CASE WHEN event_type = 'match_created' THEN 1 END) as total_matches,
            COUNT(CASE WHEN event_type = 'message_sent' THEN 1 END) as total_messages,
            COUNT(CASE WHEN event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 END) as total_swipes
        FROM analytics_events
    ),
    session_stats AS (
        SELECT 
            COUNT(*) as total_sessions,
            COALESCE(AVG(events_count), 0) as avg_events_per_session
        FROM user_sessions
        WHERE end_time IS NOT NULL
    )
    SELECT 
        du.dau,
        wu.wau,
        mu.mau,
        tu.total,
        ast.total_matches,
        ast.total_messages,
        ROUND(ss.avg_events_per_session, 2) as avg_swipes_per_session,
        CASE 
            WHEN ast.total_swipes > 0 THEN ROUND((ast.total_matches::DECIMAL / ast.total_swipes::DECIMAL) * 100, 2)
            ELSE 0
        END as match_conversion_rate
    FROM daily_users du
    CROSS JOIN weekly_users wu
    CROSS JOIN monthly_users mu
    CROSS JOIN total_users tu
    CROSS JOIN app_stats ast
    CROSS JOIN session_stats ss;
END;
$$ LANGUAGE plpgsql;

-- Function to get trending users (high match rates) - INTEGER parameter only
CREATE OR REPLACE FUNCTION get_trending_users(result_limit INTEGER DEFAULT 10)
RETURNS TABLE (user_id TEXT) AS $$
BEGIN
    RETURN QUERY
    WITH user_match_rates AS (
        SELECT 
            ae.user_id,
            COUNT(CASE WHEN event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 END) as swipes,
            COUNT(CASE WHEN event_type = 'match_created' THEN 1 END) as matches
        FROM analytics_events ae
        WHERE ae.created_at >= NOW() - INTERVAL '7 days'
        GROUP BY ae.user_id
        HAVING COUNT(CASE WHEN event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 END) >= 10
    )
    SELECT umr.user_id
    FROM user_match_rates umr
    ORDER BY (umr.matches::DECIMAL / umr.swipes::DECIMAL) DESC
    LIMIT result_limit;
END;
$$ LANGUAGE plpgsql;