-- Add Super Likes Tracking to Analytics
-- Update analytics functions to track super likes

-- Update get_user_engagement function to include super likes
DROP FUNCTION IF EXISTS get_user_engagement(TEXT);

CREATE OR REPLACE FUNCTION get_user_engagement(input_user_id TEXT)
RETURNS JSON AS $$
DECLARE
    result JSON;
BEGIN
    WITH weekly_stats AS (
        SELECT 
            COALESCE(SUM(CASE WHEN event_type IN ('swipe_left', 'swipe_right') THEN 1 ELSE 0 END), 0) as swipes,
            COALESCE(SUM(CASE WHEN event_type = 'super_swipe' THEN 1 ELSE 0 END), 0) as super_likes,
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
    )
    SELECT json_build_object(
        'weekly_swipes', ws.swipes,
        'weekly_matches', ws.matches,
        'weekly_messages', ws.messages,
        'weekly_super_likes', ws.super_likes,
        'engagement_score', LEAST(100, GREATEST(0, 
            (ws.swipes * 2) + 
            (ws.super_likes * 5) + 
            (ws.matches * 10) + 
            (ws.messages * 15) + 
            (sc.active_days * 5)
        )),
        'streak_days', sc.active_days
    ) INTO result
    FROM weekly_stats ws
    CROSS JOIN streak_calc sc;
    
    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Also update get_user_metrics to track total super likes
DROP FUNCTION IF EXISTS get_user_metrics(TEXT);

CREATE OR REPLACE FUNCTION get_user_metrics(input_user_id TEXT)
RETURNS JSON AS $$
DECLARE
    result JSON;
BEGIN
    WITH user_stats AS (
        SELECT 
            COALESCE(SUM(CASE WHEN event_type IN ('swipe_left', 'swipe_right') THEN 1 ELSE 0 END), 0) as swipes,
            COALESCE(SUM(CASE WHEN event_type = 'super_swipe' THEN 1 ELSE 0 END), 0) as super_swipes,
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
    SELECT json_build_object(
        'total_swipes', us.swipes,
        'total_super_swipes', us.super_swipes,
        'total_matches', us.matches,
        'total_messages_sent', us.messages_sent,
        'total_messages_received', us.messages_received,
        'profile_views', us.profile_views,
        'match_rate', CASE 
            WHEN (us.swipes + us.super_swipes) > 0 THEN ROUND((us.matches::DECIMAL / (us.swipes + us.super_swipes)::DECIMAL) * 100, 2)
            ELSE 0
        END,
        'response_rate', CASE 
            WHEN us.messages_received > 0 THEN ROUND((us.messages_sent::DECIMAL / us.messages_received::DECIMAL) * 100, 2)
            ELSE 0
        END,
        'last_active', us.last_active,
        'total_sessions', COALESCE(ss.total_sessions, 0),
        'avg_session_duration', ROUND(COALESCE(ss.avg_duration, 0), 2)
    ) INTO result
    FROM user_stats us
    CROSS JOIN session_stats ss;
    
    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Test the updated functions
SELECT 
    'Super Likes Engagement Test' as test,
    get_user_engagement('did:privy:cmcqo054u00mpjr0mnf2w8uxa') as engagement;

-- Insert a test super like event to verify tracking
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
VALUES (
    'did:privy:cmcqo054u00mpjr0mnf2w8uxa',
    'super_swipe',
    '{"swiped_user_id": "test_target", "direction": "super"}',
    NOW()
) ON CONFLICT DO NOTHING;