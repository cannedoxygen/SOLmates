-- Backfill Analytics Data from Existing Tables
-- This migration populates analytics_events with historical data from existing tables

-- Insert historical swipe events from existing swipes table
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    swiper_id as user_id,
    CASE 
        WHEN direction = 'left' THEN 'swipe_left'
        WHEN direction = 'right' THEN 'swipe_right'
        WHEN direction = 'super' THEN 'super_swipe'
        ELSE 'swipe_right'
    END as event_type,
    jsonb_build_object(
        'swiped_user_id', swiped_id,
        'direction', direction,
        'backfilled', true
    ) as event_data,
    created_at
FROM swipes
WHERE created_at IS NOT NULL
ON CONFLICT DO NOTHING;

-- Insert historical match events from existing matches table
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    user1_id as user_id,
    'match_created' as event_type,
    jsonb_build_object(
        'matched_user_id', user2_id,
        'match_id', id,
        'backfilled', true
    ) as event_data,
    COALESCE(matched_at, created_at) as created_at
FROM matches
WHERE created_at IS NOT NULL
UNION ALL
SELECT 
    user2_id as user_id,
    'match_created' as event_type,
    jsonb_build_object(
        'matched_user_id', user1_id,
        'match_id', id,
        'backfilled', true
    ) as event_data,
    COALESCE(matched_at, created_at) as created_at
FROM matches
WHERE created_at IS NOT NULL
ON CONFLICT DO NOTHING;

-- Insert historical message events from existing messages table
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    sender_id as user_id,
    'message_sent' as event_type,
    jsonb_build_object(
        'chat_id', chat_id,
        'message_type', COALESCE(message_type, 'text'),
        'backfilled', true
    ) as event_data,
    created_at
FROM messages
WHERE created_at IS NOT NULL
AND sender_id IS NOT NULL
ON CONFLICT DO NOTHING;

-- Insert corresponding message_received events
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT DISTINCT
    CASE 
        WHEN c.user1_id = m.sender_id THEN c.user2_id
        WHEN c.user2_id = m.sender_id THEN c.user1_id
        ELSE NULL
    END as user_id,
    'message_received' as event_type,
    jsonb_build_object(
        'chat_id', m.chat_id,
        'sender_id', m.sender_id,
        'message_type', COALESCE(m.message_type, 'text'),
        'backfilled', true
    ) as event_data,
    m.created_at
FROM messages m
JOIN chats c ON c.id = m.chat_id
WHERE m.created_at IS NOT NULL
AND m.sender_id IS NOT NULL
AND (c.user1_id IS NOT NULL AND c.user2_id IS NOT NULL)
AND CASE 
    WHEN c.user1_id = m.sender_id THEN c.user2_id
    WHEN c.user2_id = m.sender_id THEN c.user1_id
    ELSE NULL
END IS NOT NULL
ON CONFLICT DO NOTHING;

-- Create user sessions from app usage patterns (approximation based on message/swipe activity)
INSERT INTO user_sessions (user_id, session_id, start_time, end_time, duration_seconds, events_count)
WITH user_activity AS (
    SELECT 
        user_id,
        DATE_TRUNC('hour', created_at) as session_hour,
        MIN(created_at) as session_start,
        MAX(created_at) as session_end,
        COUNT(*) as event_count
    FROM analytics_events
    WHERE created_at >= NOW() - INTERVAL '30 days' -- Only last 30 days for sessions
    GROUP BY user_id, DATE_TRUNC('hour', created_at)
    HAVING COUNT(*) >= 2 -- Only sessions with multiple events
)
SELECT 
    user_id,
    'backfilled_' || user_id || '_' || EXTRACT(EPOCH FROM session_start)::TEXT as session_id,
    session_start,
    session_end,
    EXTRACT(EPOCH FROM (session_end - session_start))::INTEGER as duration_seconds,
    event_count
FROM user_activity
WHERE session_start != session_end -- Only sessions with duration
ON CONFLICT DO NOTHING;

-- Update daily metrics for recent activity (last 30 days)
INSERT INTO user_daily_metrics (user_id, date, swipes_count, matches_count, messages_sent_count, messages_received_count, profile_views_count)
WITH daily_activity AS (
    SELECT 
        user_id,
        DATE(created_at) as activity_date,
        SUM(CASE WHEN event_type IN ('swipe_left', 'swipe_right', 'super_swipe') THEN 1 ELSE 0 END) as swipes,
        SUM(CASE WHEN event_type = 'match_created' THEN 1 ELSE 0 END) as matches,
        SUM(CASE WHEN event_type = 'message_sent' THEN 1 ELSE 0 END) as messages_sent,
        SUM(CASE WHEN event_type = 'message_received' THEN 1 ELSE 0 END) as messages_received,
        SUM(CASE WHEN event_type = 'profile_view' THEN 1 ELSE 0 END) as profile_views
    FROM analytics_events
    WHERE created_at >= CURRENT_DATE - INTERVAL '30 days'
    GROUP BY user_id, DATE(created_at)
)
SELECT 
    user_id,
    activity_date,
    swipes::INTEGER,
    matches::INTEGER,
    messages_sent::INTEGER,
    messages_received::INTEGER,
    profile_views::INTEGER
FROM daily_activity
ON CONFLICT (user_id, date) DO UPDATE SET
    swipes_count = EXCLUDED.swipes_count,
    matches_count = EXCLUDED.matches_count,
    messages_sent_count = EXCLUDED.messages_sent_count,
    messages_received_count = EXCLUDED.messages_received_count,
    profile_views_count = EXCLUDED.profile_views_count,
    updated_at = NOW();