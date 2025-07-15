-- Create User Notification Settings Table
-- Store user preferences for all notification categories

CREATE TABLE user_notification_settings (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id TEXT NOT NULL UNIQUE, -- Privy user ID
  
  -- Push notification categories
  push_enabled BOOLEAN DEFAULT true,
  new_matches BOOLEAN DEFAULT true,
  new_messages BOOLEAN DEFAULT true,
  profile_views BOOLEAN DEFAULT true,
  super_likes BOOLEAN DEFAULT true, -- For future super like notifications
  
  -- Sound and vibration
  sound_enabled BOOLEAN DEFAULT true,
  vibration_enabled BOOLEAN DEFAULT true,
  
  -- Quiet hours (times in HH:MM format)
  quiet_hours_enabled BOOLEAN DEFAULT false,
  quiet_hours_start TIME DEFAULT '22:00', -- 10 PM
  quiet_hours_end TIME DEFAULT '08:00',   -- 8 AM
  
  -- Timezone for quiet hours (optional)
  timezone TEXT DEFAULT 'UTC',
  
  -- Timestamps
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add indexes for performance
CREATE INDEX idx_user_notification_settings_user_id ON user_notification_settings(user_id);

-- RLS Policies (disabled for now to avoid issues)
ALTER TABLE user_notification_settings DISABLE ROW LEVEL SECURITY;

-- Function to create default settings for new users
CREATE OR REPLACE FUNCTION create_default_notification_settings(p_user_id TEXT)
RETURNS user_notification_settings AS $$
DECLARE
  result user_notification_settings;
BEGIN
  INSERT INTO user_notification_settings (user_id)
  VALUES (p_user_id)
  ON CONFLICT (user_id) DO NOTHING
  RETURNING * INTO result;
  
  -- If no insert happened (conflict), select existing record
  IF result IS NULL THEN
    SELECT * INTO result FROM user_notification_settings WHERE user_id = p_user_id;
  END IF;
  
  RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Trigger to update timestamps
CREATE TRIGGER trigger_user_notification_settings_updated_at
  BEFORE UPDATE ON user_notification_settings
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at();

-- Test table creation
SELECT 
    'User Notification Settings Table Created' as info,
    COUNT(*) as settings_count
FROM user_notification_settings;