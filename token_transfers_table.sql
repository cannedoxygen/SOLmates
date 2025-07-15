-- Create token transfers table for SPL token transfers
CREATE TABLE IF NOT EXISTS token_transfers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sender_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  recipient_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  token_mint TEXT NOT NULL, -- SPL token mint address
  token_symbol TEXT NOT NULL, -- BONK, USDC, etc.
  amount TEXT NOT NULL, -- Amount in smallest units (stored as text to handle large numbers)
  decimals INTEGER NOT NULL, -- Token decimals (e.g., 5 for BONK, 6 for USDC)
  usd_value DECIMAL(15,6) NOT NULL, -- USD equivalent at time of transfer
  transaction_hash TEXT, -- Solana transaction hash
  memo TEXT, -- Optional memo/message
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'completed', 'failed')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for efficient queries
CREATE INDEX IF NOT EXISTS idx_token_transfers_sender ON token_transfers(sender_id);
CREATE INDEX IF NOT EXISTS idx_token_transfers_recipient ON token_transfers(recipient_id);
CREATE INDEX IF NOT EXISTS idx_token_transfers_token_mint ON token_transfers(token_mint);
CREATE INDEX IF NOT EXISTS idx_token_transfers_token_symbol ON token_transfers(token_symbol);
CREATE INDEX IF NOT EXISTS idx_token_transfers_status ON token_transfers(status);
CREATE INDEX IF NOT EXISTS idx_token_transfers_created_at ON token_transfers(created_at);

-- Enable RLS
ALTER TABLE token_transfers ENABLE ROW LEVEL SECURITY;

-- Create simple policy
CREATE POLICY "Allow all authenticated" ON token_transfers
  FOR ALL USING (auth.uid() IS NOT NULL);

-- Grant permissions
GRANT ALL ON token_transfers TO authenticated;