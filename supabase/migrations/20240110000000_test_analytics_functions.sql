-- Test Analytics Functions
-- Test the functions directly to see if they return data correctly

-- Test get_user_metrics function for your Privy user ID
SELECT 
    'Testing get_user_metrics' as test_name,
    *
FROM get_user_metrics('did:privy:cmcqo054u00mpjr0mnf2w8uxa');

-- Test get_user_engagement function for your Privy user ID  
SELECT 
    'Testing get_user_engagement' as test_name,
    *
FROM get_user_engagement('did:privy:cmcqo054u00mpjr0mnf2w8uxa');

-- Show breakdown of events for your user ID
SELECT 
    'Event breakdown for your user' as info,
    event_type,
    COUNT(*) as count,
    MIN(created_at) as earliest,
    MAX(created_at) as latest
FROM analytics_events 
WHERE user_id = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa'
GROUP BY event_type
ORDER BY count DESC;

-- Show recent events for your user
SELECT 
    'Recent events for your user' as info,
    event_type,
    event_data,
    created_at
FROM analytics_events 
WHERE user_id = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa'
ORDER BY created_at DESC
LIMIT 10;

-- Test the functions return format
SELECT 
    'Function return format test' as info,
    json_typeof(to_json(get_user_metrics('did:privy:cmcqo054u00mpjr0mnf2w8uxa'))) as metrics_type,
    json_typeof(to_json(get_user_engagement('did:privy:cmcqo054u00mpjr0mnf2w8uxa'))) as engagement_type;