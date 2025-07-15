-- Fix RLS policies for bonk_tips and sol_transfers tables
-- Run this in your Supabase SQL editor

-- Drop ALL existing policies with different names
DROP POLICY IF EXISTS "Authenticated users can view tips" ON bonk_tips;
DROP POLICY IF EXISTS "Authenticated users can create tips" ON bonk_tips;
DROP POLICY IF EXISTS "System can update tip status" ON bonk_tips;
DROP POLICY IF EXISTS "Allow authenticated users" ON bonk_tips;
DROP POLICY IF EXISTS "Users can view their tips" ON bonk_tips;
DROP POLICY IF EXISTS "Users can create tips" ON bonk_tips;
DROP POLICY IF EXISTS "Users can update their tips" ON bonk_tips;

DROP POLICY IF EXISTS "Authenticated users can view transfers" ON sol_transfers;
DROP POLICY IF EXISTS "Authenticated users can create transfers" ON sol_transfers;
DROP POLICY IF EXISTS "System can update transfer status" ON sol_transfers;
DROP POLICY IF EXISTS "Allow authenticated users" ON sol_transfers;
DROP POLICY IF EXISTS "Users can view their transfers" ON sol_transfers;
DROP POLICY IF EXISTS "Users can create transfers" ON sol_transfers;
DROP POLICY IF EXISTS "Users can update their transfers" ON sol_transfers;

-- Create simple policies that work
CREATE POLICY "Allow all authenticated" ON bonk_tips
  FOR ALL USING (auth.uid() IS NOT NULL);

CREATE POLICY "Allow all authenticated" ON sol_transfers
  FOR ALL USING (auth.uid() IS NOT NULL);

-- Grant necessary permissions
GRANT ALL ON bonk_tips TO authenticated;
GRANT ALL ON sol_transfers TO authenticated;