-- Add match_id column to chats table to link chats with matches
ALTER TABLE chats ADD COLUMN match_id UUID REFERENCES matches(id);

-- Create an index for better performance when querying by match_id
CREATE INDEX idx_chats_match_id ON chats(match_id);

-- Add a comment to document the column
COMMENT ON COLUMN chats.match_id IS 'References the match that created this chat room';