-- Add match_id column to chats table to link chats with matches
-- This allows us to easily find the chat room for a specific match

ALTER TABLE chats ADD COLUMN IF NOT EXISTS match_id UUID REFERENCES matches(id);

-- Create an index for better performance when querying by match_id
CREATE INDEX IF NOT EXISTS idx_chats_match_id ON chats(match_id);

-- Update existing chats to link them with matches where possible
-- This finds matches between the same users and links existing chats
UPDATE chats SET match_id = (
  SELECT m.id 
  FROM matches m 
  WHERE (m.user1_id = chats.user1_id AND m.user2_id = chats.user2_id)
     OR (m.user1_id = chats.user2_id AND m.user2_id = chats.user1_id)
  LIMIT 1
) WHERE match_id IS NULL;

-- Add a comment to document the column
COMMENT ON COLUMN chats.match_id IS 'References the match that created this chat room';