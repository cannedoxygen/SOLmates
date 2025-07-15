-- Debug and Fix User Mapping
-- Check what user data exists and fix the mapping if needed

-- First, let's see what's in the users table
SELECT 
    'Users table structure' as info,
    COUNT(*) as total_users,
    COUNT(privy_user_id) as users_with_privy_id,
    COUNT(id) as users_with_supabase_id
FROM users;

-- Check sample user data to understand the format
SELECT 
    'Sample user data' as info,
    id as supabase_id,
    privy_user_id,
    username,
    created_at
FROM users 
WHERE privy_user_id IS NOT NULL 
LIMIT 3;

-- Check if we have any existing swipes/matches data
SELECT 
    'Existing data counts' as info,
    (SELECT COUNT(*) FROM swipes) as total_swipes,
    (SELECT COUNT(*) FROM matches) as total_matches,
    (SELECT COUNT(*) FROM messages) as total_messages;

-- Check what's currently in analytics_events
SELECT 
    'Analytics events' as info,
    event_type,
    COUNT(*) as count
FROM analytics_events 
GROUP BY event_type;

-- Try direct insert for current user if backfill didn't work
-- This will help us test if the basic system is working

-- Insert a test event for any user with a privy_user_id
INSERT INTO analytics_events (user_id, event_type, event_data, created_at)
SELECT 
    u.privy_user_id,
    'test_event',
    '{"test": true, "source": "manual_test"}',
    NOW()
FROM users u 
WHERE u.privy_user_id IS NOT NULL
LIMIT 1
ON CONFLICT DO NOTHING;

-- Alternative approach: If privy_user_id is not populated, let's try to find your current user
-- and create some test data
DO $$
DECLARE
    current_user_id text;
BEGIN
    -- Try to find a user that might be you (most recent, has username, etc.)
    SELECT privy_user_id INTO current_user_id 
    FROM users 
    WHERE privy_user_id IS NOT NULL 
    AND privy_user_id LIKE 'did:privy:%'
    ORDER BY created_at DESC 
    LIMIT 1;
    
    IF current_user_id IS NOT NULL THEN
        -- Insert some test analytics data for this user
        INSERT INTO analytics_events (user_id, event_type, event_data, created_at) VALUES
        (current_user_id, 'swipe_right', '{"test": true}', NOW() - INTERVAL '1 day'),
        (current_user_id, 'swipe_left', '{"test": true}', NOW() - INTERVAL '2 days'),
        (current_user_id, 'match_created', '{"test": true}', NOW() - INTERVAL '3 days'),
        (current_user_id, 'message_sent', '{"test": true}', NOW() - INTERVAL '4 days'),
        (current_user_id, 'profile_view', '{"test": true}', NOW() - INTERVAL '5 days')
        ON CONFLICT DO NOTHING;
        
        RAISE NOTICE 'Created test data for user: %', current_user_id;
    ELSE
        RAISE NOTICE 'No user found with privy_user_id';
    END IF;
END $$;

-- Show final analytics events count
SELECT 
    'Final analytics count' as info,
    user_id,
    event_type,
    COUNT(*) as count
FROM analytics_events 
GROUP BY user_id, event_type
ORDER BY user_id, event_type;