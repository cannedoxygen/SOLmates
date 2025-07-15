-- Disable RLS on token_transfers table
ALTER TABLE token_transfers DISABLE ROW LEVEL SECURITY;

-- Drop the policy
DROP POLICY IF EXISTS "Allow all authenticated" ON token_transfers;

-- Grant full access
GRANT ALL ON token_transfers TO authenticated;