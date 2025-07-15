-- Show Actual Function Results
-- Display the actual data returned by the analytics functions

-- Test get_user_metrics and show actual values
WITH metrics AS (
    SELECT * FROM get_user_metrics('did:privy:cmcqo054u00mpjr0mnf2w8uxa')
)
SELECT 
    'User Metrics Results' as info,
    total_swipes,
    total_matches, 
    total_messages_sent,
    total_messages_received,
    profile_views,
    match_rate,
    response_rate,
    last_active,
    total_sessions,
    avg_session_duration
FROM metrics;

-- Test get_user_engagement and show actual values
WITH engagement AS (
    SELECT * FROM get_user_engagement('did:privy:cmcqo054u00mpjr0mnf2w8uxa')
)
SELECT 
    'User Engagement Results' as info,
    weekly_swipes,
    weekly_matches,
    weekly_messages,
    engagement_score,
    streak_days
FROM engagement;

-- Show your event breakdown again to compare
SELECT 
    'Your Events Breakdown' as info,
    event_type,
    COUNT(*) as count
FROM analytics_events 
WHERE user_id = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa'
GROUP BY event_type
ORDER BY count DESC;