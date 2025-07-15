-- Create Premium Payments Table
-- Track SOL payments for premium purchases

CREATE TABLE premium_payments (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL, -- Privy user ID
  product_id TEXT NOT NULL, -- Product identifier (e.g., 'super_swipes_1', 'premium_monthly')
  sol_amount DECIMAL(18,9) NOT NULL, -- SOL amount paid
  usd_amount DECIMAL(10,2) NOT NULL, -- USD equivalent
  transaction_hash TEXT, -- Solana transaction hash
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN (
    'pending',
    'completed',
    'failed'
  )),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add indexes for performance
CREATE INDEX idx_premium_payments_user_id ON premium_payments(user_id);
CREATE INDEX idx_premium_payments_status ON premium_payments(status);
CREATE INDEX idx_premium_payments_product_id ON premium_payments(product_id);
CREATE INDEX idx_premium_payments_created_at ON premium_payments(created_at);

-- RLS Policies
ALTER TABLE premium_payments ENABLE ROW LEVEL SECURITY;

-- Users can view their own payments
CREATE POLICY "Users can view their own payments" ON premium_payments
  FOR SELECT USING (user_id = current_setting('app.current_user_id', true));

-- Users can insert their own payments
CREATE POLICY "Users can insert their own payments" ON premium_payments
  FOR INSERT WITH CHECK (user_id = current_setting('app.current_user_id', true));

-- Service can update payment status
CREATE POLICY "Service can update payment status" ON premium_payments
  FOR UPDATE USING (true);

-- Trigger to update timestamps
CREATE TRIGGER trigger_premium_payments_updated_at
  BEFORE UPDATE ON premium_payments
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();

-- Test table creation
SELECT 
    'Premium Payments Table Created' as info,
    COUNT(*) as payment_count
FROM premium_payments;