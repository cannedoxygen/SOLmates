-- Analytics System Database Schema
-- This migration creates all necessary tables and functions for the analytics system

-- Create analytics_events table for tracking all user interactions
CREATE TABLE IF NOT EXISTS analytics_events (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    event_type TEXT NOT NULL,
    event_data JSONB DEFAULT '{}',
    session_id TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for analytics_events
CREATE INDEX IF NOT EXISTS idx_analytics_events_user_id ON analytics_events (user_id);
CREATE INDEX IF NOT EXISTS idx_analytics_events_event_type ON analytics_events (event_type);
CREATE INDEX IF NOT EXISTS idx_analytics_events_created_at ON analytics_events (created_at);
CREATE INDEX IF NOT EXISTS idx_analytics_events_session_id ON analytics_events (session_id);

-- Create user_sessions table for session tracking
CREATE TABLE IF NOT EXISTS user_sessions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    session_id TEXT NOT NULL UNIQUE,
    start_time TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    end_time TIMESTAMP WITH TIME ZONE,
    duration_seconds INTEGER,
    events_count INTEGER DEFAULT 0
);

-- Create indexes for user_sessions
CREATE INDEX IF NOT EXISTS idx_user_sessions_user_id ON user_sessions (user_id);
CREATE INDEX IF NOT EXISTS idx_user_sessions_session_id ON user_sessions (session_id);
CREATE INDEX IF NOT EXISTS idx_user_sessions_start_time ON user_sessions (start_time);

-- Create user_daily_metrics table for daily aggregated metrics
CREATE TABLE IF NOT EXISTS user_daily_metrics (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    date DATE NOT NULL,
    swipes_count INTEGER DEFAULT 0,
    matches_count INTEGER DEFAULT 0,
    messages_sent_count INTEGER DEFAULT 0,
    messages_received_count INTEGER DEFAULT 0,
    profile_views_count INTEGER DEFAULT 0,
    session_count INTEGER DEFAULT 0,
    total_session_duration INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    UNIQUE(user_id, date)
);

-- Create indexes for user_daily_metrics
CREATE INDEX IF NOT EXISTS idx_user_daily_metrics_user_id ON user_daily_metrics (user_id);
CREATE INDEX IF NOT EXISTS idx_user_daily_metrics_date ON user_daily_metrics (date);

-- Drop existing functions if they exist
DROP FUNCTION IF EXISTS get_user_metrics(UUID);
DROP FUNCTION IF EXISTS get_user_engagement(UUID);
DROP FUNCTION IF EXISTS get_trending_users(INTEGER);

-- Function to get user metrics (all-time stats)
CREATE OR REPLACE FUNCTION get_user_metrics(user_id UUID)
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
        WHERE analytics_events.user_id = get_user_metrics.user_id
    ),
    session_stats AS (
        SELECT 
            COUNT(*)::BIGINT as total_sessions,
            COALESCE(AVG(duration_seconds), 0) as avg_duration
        FROM user_sessions 
        WHERE user_sessions.user_id = get_user_metrics.user_id
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

-- Function to get user engagement (weekly stats + engagement score)
CREATE OR REPLACE FUNCTION get_user_engagement(user_id UUID)
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
        WHERE analytics_events.user_id = get_user_engagement.user_id
        AND created_at >= NOW() - INTERVAL '7 days'
    ),
    streak_calc AS (
        SELECT 
            COUNT(DISTINCT DATE(created_at)) as active_days
        FROM analytics_events
        WHERE analytics_events.user_id = get_user_engagement.user_id
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

-- Drop existing function if it exists
DROP FUNCTION IF EXISTS get_app_metrics();

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

-- Function to get trending users (high match rates)
CREATE OR REPLACE FUNCTION get_trending_users(result_limit INTEGER DEFAULT 10)
RETURNS TABLE (user_id UUID) AS $$
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

-- Drop existing trigger functions if they exist
DROP FUNCTION IF EXISTS update_daily_metrics() CASCADE;
DROP FUNCTION IF EXISTS update_session_events_count() CASCADE;

-- Trigger function to update user_daily_metrics
CREATE OR REPLACE FUNCTION update_daily_metrics()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO user_daily_metrics (user_id, date, swipes_count, matches_count, messages_sent_count, messages_received_count, profile_views_count, session_count, total_session_duration)
    VALUES (NEW.user_id, CURRENT_DATE, 0, 0, 0, 0, 0, 0, 0)
    ON CONFLICT (user_id, date) DO UPDATE SET
        swipes_count = user_daily_metrics.swipes_count + CASE WHEN NEW.event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 ELSE 0 END,
        matches_count = user_daily_metrics.matches_count + CASE WHEN NEW.event_type = 'match_created' THEN 1 ELSE 0 END,
        messages_sent_count = user_daily_metrics.messages_sent_count + CASE WHEN NEW.event_type = 'message_sent' THEN 1 ELSE 0 END,
        messages_received_count = user_daily_metrics.messages_received_count + CASE WHEN NEW.event_type = 'message_received' THEN 1 ELSE 0 END,
        profile_views_count = user_daily_metrics.profile_views_count + CASE WHEN NEW.event_type = 'profile_view' THEN 1 ELSE 0 END,
        updated_at = NOW();
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to automatically update daily metrics
CREATE TRIGGER trigger_update_daily_metrics
    AFTER INSERT ON analytics_events
    FOR EACH ROW
    EXECUTE FUNCTION update_daily_metrics();

-- Function to update session events count
CREATE OR REPLACE FUNCTION update_session_events_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE user_sessions 
    SET events_count = events_count + 1
    WHERE session_id = NEW.session_id;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to update session events count
CREATE TRIGGER trigger_update_session_events_count
    AFTER INSERT ON analytics_events
    FOR EACH ROW
    EXECUTE FUNCTION update_session_events_count();