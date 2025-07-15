-- Clean up test super swipe purchases
-- Remove any demo or test super swipe subscriptions

-- Show current super swipe purchases before cleanup
SELECT 
    'Super Swipe Purchases Before Cleanup' as info,
    user_id,
    subscription_type,
    bonk_amount_paid,
    usd_amount,
    transaction_hash,
    created_at
FROM user_subscriptions 
WHERE subscription_type = 'super_swipes'
ORDER BY created_at DESC;

-- Delete test/demo super swipe purchases (those with mock transaction hashes or test data)
DELETE FROM user_subscriptions 
WHERE subscription_type = 'super_swipes'
AND (
    transaction_hash LIKE 'mock_%' 
    OR transaction_hash IS NULL
    OR usd_amount = 0
    OR bonk_amount_paid = 0
);

-- Show remaining super swipe purchases after cleanup
SELECT 
    'Super Swipe Purchases After Cleanup' as info,
    user_id,
    subscription_type,
    bonk_amount_paid,
    usd_amount,
    transaction_hash,
    created_at
FROM user_subscriptions 
WHERE subscription_type = 'super_swipes'
ORDER BY created_at DESC;

-- If you want to remove ALL super swipe purchases for testing, uncomment the line below:
-- DELETE FROM user_subscriptions WHERE subscription_type = 'super_swipes';