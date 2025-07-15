-- Remove Test Super Like Event
-- Clean up the test super like event that was inserted for testing

DELETE FROM analytics_events 
WHERE user_id = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa'
AND event_type = 'super_swipe'
AND event_data->>'swiped_user_id' = 'test_target';

-- Show remaining events for verification
SELECT 
    'Events after cleanup' as info,
    event_type,
    COUNT(*) as count
FROM analytics_events 
WHERE user_id = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa'
GROUP BY event_type
ORDER BY count DESC;