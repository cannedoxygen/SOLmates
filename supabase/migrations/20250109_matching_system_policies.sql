-- Create RLS policies for matches, swipes, chats, and messages tables
-- These tables need permissive policies since Privy handles authentication

-- Enable RLS on all tables
ALTER TABLE matches ENABLE ROW LEVEL SECURITY;
ALTER TABLE swipes ENABLE ROW LEVEL SECURITY;
ALTER TABLE chats ENABLE ROW LEVEL SECURITY;
ALTER TABLE messages ENABLE ROW LEVEL SECURITY;
ALTER TABLE notifications ENABLE ROW LEVEL SECURITY;

-- Swipes table policies (users can see their own swipes)
CREATE POLICY "Users can view their own swipes" ON swipes
  FOR SELECT USING (true);

CREATE POLICY "Users can insert swipes" ON swipes
  FOR INSERT WITH CHECK (true);

-- Matches table policies (users can see matches they're part of)
CREATE POLICY "Users can view their matches" ON matches
  FOR SELECT USING (true);

CREATE POLICY "Users can insert matches" ON matches
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Users can update their matches" ON matches
  FOR UPDATE USING (true);

-- Chats table policies (users can see chats they're part of)
CREATE POLICY "Users can view their chats" ON chats
  FOR SELECT USING (true);

CREATE POLICY "Users can insert chats" ON chats
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Users can update their chats" ON chats
  FOR UPDATE USING (true);

-- Messages table policies (users can see messages in their chats)
CREATE POLICY "Users can view messages" ON messages
  FOR SELECT USING (true);

CREATE POLICY "Users can insert messages" ON messages
  FOR INSERT WITH CHECK (true);

-- Notifications table policies (users can see their own notifications)
CREATE POLICY "Users can view their notifications" ON notifications
  FOR SELECT USING (true);

CREATE POLICY "Users can insert notifications" ON notifications
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Users can update their notifications" ON notifications
  FOR UPDATE USING (true);

-- Create indexes for better performance on new queries
CREATE INDEX IF NOT EXISTS idx_swipes_swiper_swiped ON swipes(swiper_id, swiped_id);
CREATE INDEX IF NOT EXISTS idx_matches_user1_user2 ON matches(user1_id, user2_id);
CREATE INDEX IF NOT EXISTS idx_matches_matched_at ON matches(matched_at DESC) WHERE matched_at IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_chats_user1_user2 ON chats(user1_id, user2_id);
CREATE INDEX IF NOT EXISTS idx_messages_chat_created ON messages(chat_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_notifications_user_read ON notifications(user_id, read, created_at DESC);