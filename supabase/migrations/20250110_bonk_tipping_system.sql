-- BONK Tipping System
-- Migration for peer-to-peer BONK token tipping

-- BONK tips table
CREATE TABLE bonk_tips (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  sender_id TEXT NOT NULL, -- Privy user ID of sender
  recipient_id TEXT NOT NULL, -- Privy user ID of recipient
  chat_id TEXT NOT NULL, -- Chat where tip was sent
  amount BIGINT NOT NULL, -- BONK amount (integer to avoid floating point issues)
  usd_value DECIMAL(10,4) NOT NULL, -- USD equivalent at time of tip
  transaction_hash TEXT, -- Solana transaction hash
  message TEXT, -- Optional message with tip
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN (
    'pending',
    'completed',
    'failed'
  )),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- User tip statistics (computed periodically for performance)
CREATE TABLE user_tip_stats (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL UNIQUE,
  total_sent BIGINT DEFAULT 0,
  total_received BIGINT DEFAULT 0,
  total_sent_usd DECIMAL(10,4) DEFAULT 0,
  total_received_usd DECIMAL(10,4) DEFAULT 0,
  tip_count_sent INTEGER DEFAULT 0,
  tip_count_received INTEGER DEFAULT 0,
  reputation_bonus INTEGER DEFAULT 0,
  last_updated TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Tip leaderboards (weekly/monthly)
CREATE TABLE tip_leaderboards (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL,
  period_type TEXT NOT NULL CHECK (period_type IN ('weekly', 'monthly', 'all_time')),
  period_start DATE NOT NULL,
  period_end DATE,
  rank_type TEXT NOT NULL CHECK (rank_type IN ('sender', 'receiver')),
  total_amount BIGINT NOT NULL,
  total_usd DECIMAL(10,4) NOT NULL,
  tip_count INTEGER NOT NULL,
  rank_position INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Unique constraint to prevent duplicate leaderboard entries
  UNIQUE(user_id, period_type, period_start, rank_type)
);

-- Add indexes for performance
CREATE INDEX idx_bonk_tips_sender_id ON bonk_tips(sender_id);
CREATE INDEX idx_bonk_tips_recipient_id ON bonk_tips(recipient_id);
CREATE INDEX idx_bonk_tips_chat_id ON bonk_tips(chat_id);
CREATE INDEX idx_bonk_tips_status ON bonk_tips(status);
CREATE INDEX idx_bonk_tips_created_at ON bonk_tips(created_at);
CREATE INDEX idx_bonk_tips_amount ON bonk_tips(amount);
CREATE INDEX idx_user_tip_stats_user_id ON user_tip_stats(user_id);
CREATE INDEX idx_user_tip_stats_total_received ON user_tip_stats(total_received);
CREATE INDEX idx_user_tip_stats_total_sent ON user_tip_stats(total_sent);
CREATE INDEX idx_tip_leaderboards_period ON tip_leaderboards(period_type, period_start);
CREATE INDEX idx_tip_leaderboards_rank ON tip_leaderboards(rank_type, rank_position);

-- RLS Policies
ALTER TABLE bonk_tips ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_tip_stats ENABLE ROW LEVEL SECURITY;
ALTER TABLE tip_leaderboards ENABLE ROW LEVEL SECURITY;

-- Tip policies
CREATE POLICY "Users can create tips they send" ON bonk_tips
  FOR INSERT WITH CHECK (sender_id = current_setting('app.current_user_id', true));

CREATE POLICY "Users can view tips they sent or received" ON bonk_tips
  FOR SELECT USING (
    sender_id = current_setting('app.current_user_id', true) OR 
    recipient_id = current_setting('app.current_user_id', true)
  );

CREATE POLICY "Users can update tips they sent" ON bonk_tips
  FOR UPDATE USING (sender_id = current_setting('app.current_user_id', true));

-- Tip stats policies
CREATE POLICY "Users can view their own tip stats" ON user_tip_stats
  FOR SELECT USING (user_id = current_setting('app.current_user_id', true));

-- Leaderboard policies (read-only for all users)
CREATE POLICY "Anyone can view leaderboards" ON tip_leaderboards
  FOR SELECT USING (true);

-- Function to get user's tip statistics
CREATE OR REPLACE FUNCTION get_user_tip_stats(target_user_id TEXT)
RETURNS TABLE (
  total_sent BIGINT,
  total_received BIGINT,
  total_sent_usd DECIMAL(10,4),
  total_received_usd DECIMAL(10,4),
  tip_count_sent INTEGER,
  tip_count_received INTEGER,
  reputation_bonus INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    uts.total_sent,
    uts.total_received,
    uts.total_sent_usd,
    uts.total_received_usd,
    uts.tip_count_sent,
    uts.tip_count_received,
    uts.reputation_bonus
  FROM user_tip_stats uts
  WHERE uts.user_id = target_user_id;
  
  -- If no stats exist, return zeros
  IF NOT FOUND THEN
    RETURN QUERY SELECT 0::BIGINT, 0::BIGINT, 0::DECIMAL(10,4), 0::DECIMAL(10,4), 0::INTEGER, 0::INTEGER, 0::INTEGER;
  END IF;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to update user tip statistics (call after each tip)
CREATE OR REPLACE FUNCTION update_user_tip_stats(target_user_id TEXT)
RETURNS VOID AS $$
DECLARE
  sent_stats RECORD;
  received_stats RECORD;
  reputation_bonus INTEGER := 0;
BEGIN
  -- Calculate sent tips
  SELECT 
    COALESCE(SUM(amount), 0) as total,
    COALESCE(SUM(usd_value), 0) as total_usd,
    COUNT(*) as count
  INTO sent_stats
  FROM bonk_tips
  WHERE sender_id = target_user_id AND status = 'completed';
  
  -- Calculate received tips
  SELECT 
    COALESCE(SUM(amount), 0) as total,
    COALESCE(SUM(usd_value), 0) as total_usd,
    COUNT(*) as count
  INTO received_stats
  FROM bonk_tips
  WHERE recipient_id = target_user_id AND status = 'completed';
  
  -- Calculate reputation bonus based on tips received
  IF received_stats.total >= 100000 THEN
    reputation_bonus := 50;
  ELSIF received_stats.total >= 50000 THEN
    reputation_bonus := 25;
  ELSIF received_stats.total >= 10000 THEN
    reputation_bonus := 10;
  ELSIF received_stats.total >= 1000 THEN
    reputation_bonus := 5;
  END IF;
  
  -- Insert or update stats
  INSERT INTO user_tip_stats (
    user_id,
    total_sent,
    total_received,
    total_sent_usd,
    total_received_usd,
    tip_count_sent,
    tip_count_received,
    reputation_bonus,
    last_updated
  ) VALUES (
    target_user_id,
    sent_stats.total,
    received_stats.total,
    sent_stats.total_usd,
    received_stats.total_usd,
    sent_stats.count,
    received_stats.count,
    reputation_bonus,
    NOW()
  )
  ON CONFLICT (user_id) DO UPDATE SET
    total_sent = EXCLUDED.total_sent,
    total_received = EXCLUDED.total_received,
    total_sent_usd = EXCLUDED.total_sent_usd,
    total_received_usd = EXCLUDED.total_received_usd,
    tip_count_sent = EXCLUDED.tip_count_sent,
    tip_count_received = EXCLUDED.tip_count_received,
    reputation_bonus = EXCLUDED.reputation_bonus,
    last_updated = NOW();
  
  -- Update user reputation in users table
  UPDATE users 
  SET reputation_score = GREATEST(reputation_score, reputation_bonus)
  WHERE privy_user_id = target_user_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get top tippers leaderboard
CREATE OR REPLACE FUNCTION get_top_tippers(result_limit INTEGER DEFAULT 10)
RETURNS TABLE (
  user_id TEXT,
  total_sent BIGINT,
  total_sent_usd DECIMAL(10,4),
  tip_count INTEGER,
  rank_position INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    uts.user_id,
    uts.total_sent,
    uts.total_sent_usd,
    uts.tip_count_sent,
    ROW_NUMBER() OVER (ORDER BY uts.total_sent DESC)::INTEGER as rank_position
  FROM user_tip_stats uts
  WHERE uts.total_sent > 0
  ORDER BY uts.total_sent DESC
  LIMIT result_limit;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get top earners leaderboard
CREATE OR REPLACE FUNCTION get_top_earners(result_limit INTEGER DEFAULT 10)
RETURNS TABLE (
  user_id TEXT,
  total_received BIGINT,
  total_received_usd DECIMAL(10,4),
  tip_count INTEGER,
  rank_position INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    uts.user_id,
    uts.total_received,
    uts.total_received_usd,
    uts.tip_count_received,
    ROW_NUMBER() OVER (ORDER BY uts.total_received DESC)::INTEGER as rank_position
  FROM user_tip_stats uts
  WHERE uts.total_received > 0
  ORDER BY uts.total_received DESC
  LIMIT result_limit;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get recent tips for a chat
CREATE OR REPLACE FUNCTION get_chat_tips(target_chat_id TEXT, result_limit INTEGER DEFAULT 50)
RETURNS TABLE (
  id UUID,
  sender_id TEXT,
  recipient_id TEXT,
  amount BIGINT,
  usd_value DECIMAL(10,4),
  message TEXT,
  transaction_hash TEXT,
  created_at TIMESTAMP WITH TIME ZONE
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    bt.id,
    bt.sender_id,
    bt.recipient_id,
    bt.amount,
    bt.usd_value,
    bt.message,
    bt.transaction_hash,
    bt.created_at
  FROM bonk_tips bt
  WHERE bt.chat_id = target_chat_id
  AND bt.status = 'completed'
  ORDER BY bt.created_at ASC
  LIMIT result_limit;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger to auto-update user stats when tip is completed
CREATE OR REPLACE FUNCTION trigger_update_tip_stats()
RETURNS TRIGGER AS $$
BEGIN
  -- Only update stats when tip status changes to completed
  IF NEW.status = 'completed' AND (OLD.status IS NULL OR OLD.status != 'completed') THEN
    PERFORM update_user_tip_stats(NEW.sender_id);
    PERFORM update_user_tip_stats(NEW.recipient_id);
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger
CREATE TRIGGER trigger_bonk_tips_update_stats
  AFTER INSERT OR UPDATE ON bonk_tips
  FOR EACH ROW
  EXECUTE FUNCTION trigger_update_tip_stats();

-- Auto-create tip stats for new users
CREATE OR REPLACE FUNCTION create_user_tip_stats()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO user_tip_stats (user_id)
  VALUES (NEW.privy_user_id)
  ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to create tip stats when user is created
CREATE TRIGGER trigger_create_user_tip_stats
  AFTER INSERT ON users
  FOR EACH ROW
  EXECUTE FUNCTION create_user_tip_stats();

-- Update timestamp trigger
CREATE TRIGGER trigger_bonk_tips_updated_at
  BEFORE UPDATE ON bonk_tips
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();