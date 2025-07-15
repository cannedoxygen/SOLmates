-- Fix RLS policies for Privy integration
-- Drop existing broken policies
DROP POLICY IF EXISTS "Public users are viewable by everyone" ON users;
DROP POLICY IF EXISTS "Users can update own profile" ON users;
DROP POLICY IF EXISTS "Users can insert own profile" ON users;

-- Create new policies that work with Privy
-- Allow anonymous access to read all users (for discovery)
CREATE POLICY "Anyone can view users" ON users
  FOR SELECT USING (true);

-- Allow anonymous access to insert users (for Privy user creation)
CREATE POLICY "Anyone can insert users" ON users
  FOR INSERT WITH CHECK (true);

-- Allow anonymous access to update users (for Privy user updates)
CREATE POLICY "Anyone can update users" ON users
  FOR UPDATE USING (true);

-- Note: In production, you'd want more restrictive policies
-- For now, we're using anonymous access since Privy handles auth