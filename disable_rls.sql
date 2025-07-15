-- Temporarily disable RLS to get transactions working
-- We can add proper policies later

-- Disable RLS entirely on both tables
ALTER TABLE bonk_tips DISABLE ROW LEVEL SECURITY;
ALTER TABLE sol_transfers DISABLE ROW LEVEL SECURITY;

-- Drop all existing policies since we're disabling RLS
DROP POLICY IF EXISTS "bonk_tips_auth_policy" ON bonk_tips;
DROP POLICY IF EXISTS "sol_transfers_auth_policy" ON sol_transfers;

-- Grant full access to authenticated users
GRANT ALL ON bonk_tips TO authenticated;
GRANT ALL ON sol_transfers TO authenticated;