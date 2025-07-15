-- Debug with Valid Event Types
-- Check what user data exists and create test data with valid event types

-- First, let's see what event types are allowed
SELECT 
    'Checking constraint' as info,
    conname as constraint_name,
    pg_get_constraintdef(oid) as constraint_definition
FROM pg_constraint 
WHERE conrelid = 'analytics_events'::regclass 
AND contype = 'c';

-- Check what's in the users table
SELECT 
    'Users table data' as info,
    COUNT(*) as total_users,
    COUNT(privy_user_id) as users_with_privy_id
FROM users;

-- Show sample user data to understand the format
SELECT 
    'Sample user data' as info,
    id as supabase_id,
    privy_user_id,
    username,
    created_at
FROM users 
WHERE privy_user_id IS NOT NULL 
ORDER BY created_at DESC
LIMIT 3;

-- Check existing data counts
SELECT 
    'Existing data' as info,
    (SELECT COUNT(*) FROM swipes) as total_swipes,
    (SELECT COUNT(*) FROM matches) as total_matches,
    (SELECT COUNT(*) FROM messages) as total_messages;

-- Check current analytics events
SELECT 
    'Current analytics' as info,
    event_type,
    COUNT(*) as count
FROM analytics_events 
GROUP BY event_type;

-- Create test data with valid event types for the most recent user
DO $$
DECLARE
    current_user_id text;
    target_user_id text;
BEGIN
    -- Find a user with privy_user_id
    SELECT privy_user_id INTO current_user_id 
    FROM users 
    WHERE privy_user_id IS NOT NULL 
    ORDER BY created_at DESC 
    LIMIT 1;
    
    -- Find another user for interaction events
    SELECT privy_user_id INTO target_user_id 
    FROM users 
    WHERE privy_user_id IS NOT NULL 
    AND privy_user_id != current_user_id
    ORDER BY created_at DESC 
    LIMIT 1;
    
    IF current_user_id IS NOT NULL THEN
        -- Insert valid analytics events
        INSERT INTO analytics_events (user_id, event_type, event_data, created_at) VALUES
        (current_user_id, 'swipe_right', jsonb_build_object('swiped_user_id', COALESCE(target_user_id, 'test_target'), 'direction', 'right'), NOW() - INTERVAL '1 day'),
        (current_user_id, 'swipe_left', jsonb_build_object('swiped_user_id', COALESCE(target_user_id, 'test_target'), 'direction', 'left'), NOW() - INTERVAL '2 days'),
        (current_user_id, 'match_created', jsonb_build_object('matched_user_id', COALESCE(target_user_id, 'test_target'), 'match_id', 'test_match'), NOW() - INTERVAL '3 days'),
        (current_user_id, 'message_sent', jsonb_build_object('recipient_id', COALESCE(target_user_id, 'test_target'), 'chat_id', 'test_chat'), NOW() - INTERVAL '4 days'),
        (current_user_id, 'profile_view', jsonb_build_object('profile_user_id', COALESCE(target_user_id, 'test_target')), NOW() - INTERVAL '5 days'),
        (current_user_id, 'app_open', jsonb_build_object('session_id', 'test_session'), NOW() - INTERVAL '6 days')
        ON CONFLICT DO NOTHING;
        
        RAISE NOTICE 'Created test analytics data for user: %', current_user_id;
    ELSE
        RAISE NOTICE 'No user found with privy_user_id';
    END IF;
END $$;

-- Show final results
SELECT 
    'Final analytics by user' as info,
    user_id,
    event_type,
    COUNT(*) as count,
    MAX(created_at) as latest_event
FROM analytics_events 
GROUP BY user_id, event_type
ORDER BY user_id, event_type;

-- Show total events per user
SELECT 
    'Total events per user' as info,
    user_id,
    COUNT(*) as total_events
FROM analytics_events 
GROUP BY user_id
ORDER BY total_events DESC;