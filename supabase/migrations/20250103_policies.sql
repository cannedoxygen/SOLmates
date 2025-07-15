-- Enable RLS on all tables
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE matches ENABLE ROW LEVEL SECURITY;
ALTER TABLE swipes ENABLE ROW LEVEL SECURITY;
ALTER TABLE messages ENABLE ROW LEVEL SECURITY;
ALTER TABLE chats ENABLE ROW LEVEL SECURITY;
ALTER TABLE notifications ENABLE ROW LEVEL SECURITY;
ALTER TABLE badges ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_badges ENABLE ROW LEVEL SECURITY;

-- Users policies
-- Anyone can view active users
CREATE POLICY "Public users are viewable by everyone" ON users
  FOR SELECT USING (is_active = true);

-- Users can update their own profile
CREATE POLICY "Users can update own profile" ON users
  FOR UPDATE USING (auth.uid()::text = wallet_address);

-- Users can insert their own profile
CREATE POLICY "Users can insert own profile" ON users
  FOR INSERT WITH CHECK (auth.uid()::text = wallet_address);

-- Projects policies
-- Anyone can view projects
CREATE POLICY "Projects are viewable by everyone" ON projects
  FOR SELECT USING (true);

-- Users can create projects
CREATE POLICY "Users can create projects" ON projects
  FOR INSERT WITH CHECK (auth.uid()::text = (SELECT wallet_address FROM users WHERE id = owner_id));

-- Users can update their own projects
CREATE POLICY "Users can update own projects" ON projects
  FOR UPDATE USING (auth.uid()::text = (SELECT wallet_address FROM users WHERE id = owner_id));

-- Users can delete their own projects
CREATE POLICY "Users can delete own projects" ON projects
  FOR DELETE USING (auth.uid()::text = (SELECT wallet_address FROM users WHERE id = owner_id));

-- Matches policies
-- Users can view their own matches
CREATE POLICY "Users can view own matches" ON matches
  FOR SELECT USING (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user1_id) OR
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user2_id)
  );

-- Users can update matches they're part of
CREATE POLICY "Users can update own matches" ON matches
  FOR UPDATE USING (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user1_id) OR
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user2_id)
  );

-- Swipes policies
-- Users can view their own swipes
CREATE POLICY "Users can view own swipes" ON swipes
  FOR SELECT USING (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = swiper_id)
  );

-- Users can create swipes
CREATE POLICY "Users can create swipes" ON swipes
  FOR INSERT WITH CHECK (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = swiper_id)
  );

-- Messages policies
-- Users can view messages in their chats
CREATE POLICY "Users can view messages in their chats" ON messages
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM chats
      WHERE chats.id = messages.chat_id
      AND (
        auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user1_id) OR
        auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user2_id)
      )
    )
  );

-- Users can send messages to their chats
CREATE POLICY "Users can send messages to their chats" ON messages
  FOR INSERT WITH CHECK (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = sender_id)
    AND EXISTS (
      SELECT 1 FROM chats
      WHERE chats.id = messages.chat_id
      AND (
        auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user1_id) OR
        auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user2_id)
      )
    )
  );

-- Chats policies
-- Users can view their own chats
CREATE POLICY "Users can view own chats" ON chats
  FOR SELECT USING (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user1_id) OR
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user2_id)
  );

-- Users can create chats they're part of
CREATE POLICY "Users can create chats" ON chats
  FOR INSERT WITH CHECK (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user1_id) OR
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user2_id)
  );

-- Notifications policies
-- Users can view their own notifications
CREATE POLICY "Users can view own notifications" ON notifications
  FOR SELECT USING (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user_id)
  );

-- Users can update their own notifications (mark as read)
CREATE POLICY "Users can update own notifications" ON notifications
  FOR UPDATE USING (
    auth.uid()::text = (SELECT wallet_address FROM users WHERE id = user_id)
  );

-- Badges policies
-- Anyone can view badges
CREATE POLICY "Badges are viewable by everyone" ON badges
  FOR SELECT USING (true);

-- User badges policies
-- Anyone can view user badges
CREATE POLICY "User badges are viewable by everyone" ON user_badges
  FOR SELECT USING (true);

-- System can insert user badges (through backend/smart contract)
-- This would typically be done through a service role key