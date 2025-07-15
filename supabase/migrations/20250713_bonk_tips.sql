-- Create BONK tips table
CREATE TABLE IF NOT EXISTS bonk_tips (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sender_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  recipient_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  chat_id UUID NOT NULL REFERENCES chats(id) ON DELETE CASCADE,
  amount BIGINT NOT NULL, -- BONK amount (integer to avoid floating point issues)
  usd_value DECIMAL(10,6) NOT NULL, -- USD equivalent at time of tip
  transaction_hash TEXT, -- Solana transaction hash
  message TEXT, -- Optional message with the tip
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'completed', 'failed')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for efficient queries
CREATE INDEX IF NOT EXISTS idx_bonk_tips_sender ON bonk_tips(sender_id);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_recipient ON bonk_tips(recipient_id);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_chat ON bonk_tips(chat_id);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_status ON bonk_tips(status);
CREATE INDEX IF NOT EXISTS idx_bonk_tips_created_at ON bonk_tips(created_at);

-- Enable RLS
ALTER TABLE bonk_tips ENABLE ROW LEVEL SECURITY;

-- Simple RLS policies without complex joins
-- Allow all authenticated users to see all tips for now (can be restricted later)
CREATE POLICY "Authenticated users can view tips" ON bonk_tips
  FOR SELECT USING (auth.role() = 'authenticated');

-- Allow all authenticated users to create tips
CREATE POLICY "Authenticated users can create tips" ON bonk_tips
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

-- Allow system to update tip status
CREATE POLICY "System can update tip status" ON bonk_tips
  FOR UPDATE USING (true);