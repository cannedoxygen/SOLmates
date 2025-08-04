-- Add demo users directly via SQL
-- Run this in Supabase SQL Editor (supabase.com -> SQL Editor)

-- First, check if users exist
DO $$
DECLARE
    canned_user_id UUID;
    toly_id UUID;
    mike_id UUID;
    mert_id UUID;
BEGIN
    -- Get canned oxygen user ID
    SELECT id INTO canned_user_id 
    FROM users 
    WHERE username ILIKE '%canned%' OR display_name ILIKE '%canned%'
    LIMIT 1;
    
    RAISE NOTICE 'Canned user ID: %', canned_user_id;
    
    -- Insert toly if not exists
    IF NOT EXISTS (SELECT 1 FROM users WHERE username = 'toly') THEN
        INSERT INTO users (
            username, display_name, bio, 
            twitter_avatar_url, twitter_username,
            skills, looking_for,
            privy_user_id, wallet_address,
            profile_completed, is_active,
            created_at
        ) VALUES (
            'toly', 'Toly', 
            'Co-Founder of Solana Labs. Award winning phone creator. NFA, don''t trust me, mostly technical gibberish.',
            'https://pbs.twimg.com/profile_images/1587503498765869056/bFiocz3b_normal.jpg',
            'aeyakovenko',
            ARRAY['Blockchain', 'Mobile Development', 'Solana', 'Hardware', 'Product Design'],
            ARRAY['Developer', 'Designer', 'Community Manager'],
            'mock_toly_' || extract(epoch from now())::text,
            '0x' || substr(md5(random()::text), 1, 40),
            true, true,
            now()
        ) RETURNING id INTO toly_id;
        RAISE NOTICE 'Created toly with ID: %', toly_id;
    ELSE
        SELECT id INTO toly_id FROM users WHERE username = 'toly';
        RAISE NOTICE 'Toly already exists with ID: %', toly_id;
    END IF;
    
    -- Insert mike_s if not exists
    IF NOT EXISTS (SELECT 1 FROM users WHERE username = 'mike_s') THEN
        INSERT INTO users (
            username, display_name, bio,
            twitter_avatar_url, twitter_username,
            skills, looking_for,
            privy_user_id, wallet_address,
            profile_completed, is_active,
            created_at
        ) VALUES (
            'mike_s', 'Mike S',
            'dev rel @ solana mobile | ex-SWE @ meta',
            'https://pbs.twimg.com/profile_images/1780680323203469312/fz3qQgJP_normal.jpg',
            'somemobiledev',
            ARRAY['Developer Relations', 'Mobile Development', 'Solana', 'Software Engineering', 'React Native'],
            ARRAY['Developer', 'Community Builder', 'Content Creator'],
            'mock_mike_' || extract(epoch from now())::text,
            '0x' || substr(md5(random()::text || '1'), 1, 40),
            true, true,
            now()
        ) RETURNING id INTO mike_id;
        RAISE NOTICE 'Created mike_s with ID: %', mike_id;
    ELSE
        SELECT id INTO mike_id FROM users WHERE username = 'mike_s';
        RAISE NOTICE 'Mike_s already exists with ID: %', mike_id;
    END IF;
    
    -- Insert mert_helius if not exists
    IF NOT EXISTS (SELECT 1 FROM users WHERE username = 'mert_helius') THEN
        INSERT INTO users (
            username, display_name, bio,
            twitter_avatar_url, twitter_username,
            skills, looking_for,
            privy_user_id, wallet_address,
            profile_completed, is_active,
            created_at
        ) VALUES (
            'mert_helius', 'mert | helius.dev',
            'ceo @heliuslabs, ex @coinbase — Solana RPCs, APIs, trading infra: http://helius.dev',
            'https://pbs.twimg.com/profile_images/1761433516354830336/4ZIy1-JR_normal.jpg',
            '0xMert_',
            ARRAY['Infrastructure', 'RPC', 'APIs', 'Trading', 'Solana', 'Leadership'],
            ARRAY['Developer', 'Infrastructure Engineer', 'Partner'],
            'mock_mert_' || extract(epoch from now())::text,
            '0x' || substr(md5(random()::text || '2'), 1, 40),
            true, true,
            now()
        ) RETURNING id INTO mert_id;
        RAISE NOTICE 'Created mert_helius with ID: %', mert_id;
    ELSE
        SELECT id INTO mert_id FROM users WHERE username = 'mert_helius';
        RAISE NOTICE 'Mert_helius already exists with ID: %', mert_id;
    END IF;
    
    -- Create swipes from each user to canned oxygen
    IF canned_user_id IS NOT NULL THEN
        -- Toly swipes right on canned oxygen
        IF toly_id IS NOT NULL AND NOT EXISTS (
            SELECT 1 FROM swipes 
            WHERE swiper_id = toly_id AND swiped_id = canned_user_id
        ) THEN
            INSERT INTO swipes (swiper_id, swiped_id, direction, created_at)
            VALUES (toly_id, canned_user_id, 'right', now() - interval '1 hour');
            RAISE NOTICE 'Toly swiped right on canned oxygen';
        END IF;
        
        -- Mike swipes right on canned oxygen
        IF mike_id IS NOT NULL AND NOT EXISTS (
            SELECT 1 FROM swipes 
            WHERE swiper_id = mike_id AND swiped_id = canned_user_id
        ) THEN
            INSERT INTO swipes (swiper_id, swiped_id, direction, created_at)
            VALUES (mike_id, canned_user_id, 'right', now() - interval '2 hours');
            RAISE NOTICE 'Mike swiped right on canned oxygen';
        END IF;
        
        -- Mert swipes right on canned oxygen
        IF mert_id IS NOT NULL AND NOT EXISTS (
            SELECT 1 FROM swipes 
            WHERE swiper_id = mert_id AND swiped_id = canned_user_id
        ) THEN
            INSERT INTO swipes (swiper_id, swiped_id, direction, created_at)
            VALUES (mert_id, canned_user_id, 'right', now() - interval '3 hours');
            RAISE NOTICE 'Mert swiped right on canned oxygen';
        END IF;
    END IF;
END $$;

-- Verify the users were created
SELECT username, display_name, twitter_avatar_url, created_at 
FROM users 
WHERE username IN ('toly', 'mike_s', 'mert_helius')
ORDER BY created_at DESC;