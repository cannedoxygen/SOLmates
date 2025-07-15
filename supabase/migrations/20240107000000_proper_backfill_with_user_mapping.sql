-- Proper Backfill with User ID Mapping
-- This migration properly maps between Privy user IDs and Supabase user IDs for backfilling

-- First, let's map existing data using the users table to connect Privy IDs to Supabase UUIDs

-- Backfill swipes using user mapping
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    u.privy_user_id as user_id,
    CASE 
        WHEN s.direction = 'left' THEN 'swipe_left'
        WHEN s.direction = 'right' THEN 'swipe_right'
        WHEN s.direction = 'super' THEN 'super_swipe'
        ELSE 'swipe_right'
    END as event_type,
    jsonb_build_object(
        'swiped_user_id', s.swiped_id,
        'direction', s.direction,
        'backfilled', true
    ) as event_data,
    s.created_at
FROM swipes s
JOIN users u ON u.id = s.swiper_id
WHERE u.privy_user_id IS NOT NULL
AND s.created_at IS NOT NULL
ON CONFLICT DO NOTHING;

-- Backfill matches using user mapping (events for both users in each match)
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    u1.privy_user_id as user_id,
    'match_created' as event_type,
    jsonb_build_object(
        'matched_user_id', m.user2_id,
        'match_id', m.id,
        'backfilled', true
    ) as event_data,
    COALESCE(m.matched_at, m.created_at) as created_at
FROM matches m
JOIN users u1 ON u1.id = m.user1_id
WHERE u1.privy_user_id IS NOT NULL
AND m.created_at IS NOT NULL
UNION ALL
SELECT 
    u2.privy_user_id as user_id,
    'match_created' as event_type,
    jsonb_build_object(
        'matched_user_id', m.user1_id,
        'match_id', m.id,
        'backfilled', true
    ) as event_data,
    COALESCE(m.matched_at, m.created_at) as created_at
FROM matches m
JOIN users u2 ON u2.id = m.user2_id
WHERE u2.privy_user_id IS NOT NULL
AND m.created_at IS NOT NULL
ON CONFLICT DO NOTHING;

-- Backfill messages using user mapping
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    u.privy_user_id as user_id,
    'message_sent' as event_type,
    jsonb_build_object(
        'chat_id', m.chat_id,
        'message_type', COALESCE(m.message_type, 'text'),
        'backfilled', true
    ) as event_data,
    m.created_at
FROM messages m
JOIN users u ON u.id = m.sender_id
WHERE u.privy_user_id IS NOT NULL
AND m.created_at IS NOT NULL
AND m.sender_id IS NOT NULL
ON CONFLICT DO NOTHING;

-- Backfill message received events
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT DISTINCT
    recipient_user.privy_user_id as user_id,
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
JOIN users sender_user ON sender_user.id = m.sender_id
JOIN users recipient_user ON (
    recipient_user.id = CASE 
        WHEN c.user1_id = m.sender_id THEN c.user2_id
        WHEN c.user2_id = m.sender_id THEN c.user1_id
    END
)
WHERE recipient_user.privy_user_id IS NOT NULL
AND sender_user.privy_user_id IS NOT NULL
AND m.created_at IS NOT NULL
AND m.sender_id IS NOT NULL
ON CONFLICT DO NOTHING;

-- Create approximate user sessions for users with Privy IDs
INSERT INTO user_sessions (user_id, session_id, start_time, end_time, duration_seconds, events_count)
WITH user_activity AS (
    SELECT 
        user_id,
        DATE_TRUNC('hour', created_at) as session_hour,
        MIN(created_at) as session_start,
        MAX(created_at) as session_end,
        COUNT(*) as event_count
    FROM analytics_events
    WHERE created_at >= NOW() - INTERVAL '30 days'
    AND user_id LIKE 'did:privy:%' -- Only for Privy users
    GROUP BY user_id, DATE_TRUNC('hour', created_at)
    HAVING COUNT(*) >= 2
)
SELECT 
    user_id,
    'backfilled_' || user_id || '_' || EXTRACT(EPOCH FROM session_start)::TEXT as session_id,
    session_start,
    session_end,
    EXTRACT(EPOCH FROM (session_end - session_start))::INTEGER as duration_seconds,
    event_count
FROM user_activity
WHERE session_start != session_end
AND user_id LIKE 'did:privy:%'
ON CONFLICT DO NOTHING;

-- Update daily metrics for Privy users
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
    AND user_id LIKE 'did:privy:%'
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

-- Debug: Show counts of backfilled events
SELECT 
    event_type,
    COUNT(*) as count,
    COUNT(CASE WHEN (event_data->>'backfilled')::boolean = true THEN 1 END) as backfilled_count
FROM analytics_events 
GROUP BY event_type 
ORDER BY count DESC;