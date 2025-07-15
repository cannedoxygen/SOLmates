-- Create SOL transfers table
CREATE TABLE IF NOT EXISTS sol_transfers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sender_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  recipient_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  amount DECIMAL(10,6) NOT NULL, -- SOL amount with 6 decimal precision
  usd_value DECIMAL(10,2) NOT NULL, -- USD equivalent at time of transfer
  transaction_hash TEXT, -- Solana transaction hash
  memo TEXT, -- Optional memo/message
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'completed', 'failed')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for efficient queries
CREATE INDEX IF NOT EXISTS idx_sol_transfers_sender ON sol_transfers(sender_id);
CREATE INDEX IF NOT EXISTS idx_sol_transfers_recipient ON sol_transfers(recipient_id);
CREATE INDEX IF NOT EXISTS idx_sol_transfers_status ON sol_transfers(status);
CREATE INDEX IF NOT EXISTS idx_sol_transfers_created_at ON sol_transfers(created_at);

-- Enable RLS
ALTER TABLE sol_transfers ENABLE ROW LEVEL SECURITY;

-- RLS policies
-- Allow all authenticated users to view transfers
CREATE POLICY "Authenticated users can view transfers" ON sol_transfers
  FOR SELECT USING (auth.role() = 'authenticated');

-- Allow all authenticated users to create transfers
CREATE POLICY "Authenticated users can create transfers" ON sol_transfers
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

-- Allow system to update transfer status
CREATE POLICY "System can update transfer status" ON sol_transfers
  FOR UPDATE USING (true);