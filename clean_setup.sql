-- Clean setup for bonk_tips and sol_transfers
-- This handles existing tables and policies

-- First, drop all existing policies on bonk_tips if they exist
DROP POLICY IF EXISTS "Authenticated users can view tips" ON bonk_tips;
DROP POLICY IF EXISTS "Authenticated users can create tips" ON bonk_tips;
DROP POLICY IF EXISTS "System can update tip status" ON bonk_tips;
DROP POLICY IF EXISTS "Allow authenticated users" ON bonk_tips;
DROP POLICY IF EXISTS "Allow all authenticated" ON bonk_tips;

-- Create bonk_tips table (will skip if exists)
CREATE TABLE IF NOT EXISTS bonk_tips (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sender_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  recipient_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  chat_id UUID NOT NULL REFERENCES chats(id) ON DELETE CASCADE,
  amount BIGINT NOT NULL,
  usd_value DECIMAL(10,6) NOT NULL,
  transaction_hash TEXT,
  message TEXT,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'completed', 'failed')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes (will skip if exist)
CREATE INDEX IF NOT EXISTS idx_bonk_tips_sender ON bonk_tips(sender_id);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_recipient ON bonk_tips(recipient_id);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_chat ON bonk_tips(chat_id);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_status ON bonk_tips(status);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_created_at ON bonk_tips(created_at);

-- Enable RLS
ALTER TABLE bonk_tips ENABLE ROW LEVEL SECURITY;

-- Create sol_transfers table
CREATE TABLE IF NOT EXISTS sol_transfers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sender_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  recipient_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  amount DECIMAL(10,6) NOT NULL,
  usd_value DECIMAL(10,2) NOT NULL,
  transaction_hash TEXT,
  memo TEXT,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'completed', 'failed')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for sol_transfers
CREATE INDEX IF NOT EXISTS idx_sol_transfers_sender ON sol_transfers(sender_id);
CREATE INDEX IF NOT EXISTS idx_sol_transfers_recipient ON sol_transfers(recipient_id);
CREATE INDEX IF NOT EXISTS idx_sol_transfers_status ON sol_transfers(status);
CREATE INDEX IF NOT EXISTS idx_sol_transfers_created_at ON sol_transfers(created_at);

-- Enable RLS on sol_transfers
ALTER TABLE sol_transfers ENABLE ROW LEVEL SECURITY;

-- Create simple working policies
CREATE POLICY "bonk_tips_auth_policy" ON bonk_tips
  FOR ALL USING (auth.uid() IS NOT NULL);

CREATE POLICY "sol_transfers_auth_policy" ON sol_transfers
  FOR ALL USING (auth.uid() IS NOT NULL);

-- Grant permissions
GRANT ALL ON bonk_tips TO authenticated;
GRANT ALL ON sol_transfers TO authenticated;