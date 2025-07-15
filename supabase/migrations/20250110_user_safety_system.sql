-- User Safety System: Reports and Blocks
-- Migration for user reporting and blocking functionality

-- Reports table for user safety
CREATE TABLE user_reports (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  reporter_id TEXT NOT NULL, -- Privy user ID of reporter
  reported_user_id TEXT NOT NULL, -- Privy user ID of reported user
  report_type TEXT NOT NULL CHECK (report_type IN (
    'inappropriate_content',
    'harassment',
    'spam',
    'fake_profile',
    'scam_crypto',
    'other'
  )),
  report_reason TEXT,
  evidence_text TEXT,
  evidence_image_url TEXT,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN (
    'pending',
    'under_review',
    'resolved',
    'dismissed'
  )),
  moderator_notes TEXT,
  moderator_id TEXT, -- Admin who handled the report
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Blocked users table
CREATE TABLE blocked_users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  blocker_id TEXT NOT NULL, -- Privy user ID who blocked
  blocked_user_id TEXT NOT NULL, -- Privy user ID who was blocked
  reason TEXT, -- Optional reason for blocking
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Prevent duplicate blocks
  UNIQUE(blocker_id, blocked_user_id)
);

-- User safety status (for moderation actions)
CREATE TABLE user_safety_status (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  privy_user_id TEXT NOT NULL UNIQUE,
  is_banned BOOLEAN DEFAULT FALSE,
  is_flagged BOOLEAN DEFAULT FALSE,
  warning_count INTEGER DEFAULT 0,
  ban_reason TEXT,
  ban_until TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add moderator flag to users table (must be before policies that reference it)
ALTER TABLE users ADD COLUMN is_moderator BOOLEAN DEFAULT FALSE;

-- Add indexes for performance
CREATE INDEX idx_user_reports_reporter_id ON user_reports(reporter_id);
CREATE INDEX idx_user_reports_reported_user_id ON user_reports(reported_user_id);
CREATE INDEX idx_user_reports_status ON user_reports(status);
CREATE INDEX idx_blocked_users_blocker_id ON blocked_users(blocker_id);
CREATE INDEX idx_blocked_users_blocked_user_id ON blocked_users(blocked_user_id);
CREATE INDEX idx_user_safety_status_privy_user_id ON user_safety_status(privy_user_id);

-- RLS Policies
ALTER TABLE user_reports ENABLE ROW LEVEL SECURITY;
ALTER TABLE blocked_users ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_safety_status ENABLE ROW LEVEL SECURITY;

-- Reports policies
CREATE POLICY "Users can create reports" ON user_reports
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Users can view their own reports" ON user_reports
  FOR SELECT USING (reporter_id = current_setting('app.current_user_id', true));

CREATE POLICY "Moderators can view all reports" ON user_reports
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM users 
      WHERE privy_user_id = current_setting('app.current_user_id', true) 
      AND is_moderator = true
    )
  );

-- Blocked users policies
CREATE POLICY "Users can manage their blocks" ON blocked_users
  FOR ALL USING (blocker_id = current_setting('app.current_user_id', true));

CREATE POLICY "Users can see if they are blocked" ON blocked_users
  FOR SELECT USING (blocked_user_id = current_setting('app.current_user_id', true));

-- Safety status policies (read-only for users)
CREATE POLICY "Users can view their safety status" ON user_safety_status
  FOR SELECT USING (privy_user_id = current_setting('app.current_user_id', true));

-- Create function to automatically create safety status
CREATE OR REPLACE FUNCTION create_user_safety_status()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO user_safety_status (privy_user_id)
  VALUES (NEW.privy_user_id)
  ON CONFLICT (privy_user_id) DO NOTHING;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to create safety status when user is created
CREATE TRIGGER trigger_create_user_safety_status
  AFTER INSERT ON users
  FOR EACH ROW
  EXECUTE FUNCTION create_user_safety_status();

-- Create function to update timestamps
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Add update triggers
CREATE TRIGGER trigger_user_reports_updated_at
  BEFORE UPDATE ON user_reports
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER trigger_user_safety_status_updated_at
  BEFORE UPDATE ON user_safety_status
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();