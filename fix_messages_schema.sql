-- Add missing columns to messages table
ALTER TABLE messages 
ADD COLUMN IF NOT EXISTS recipient_id UUID REFERENCES users(id) ON DELETE CASCADE,
ADD COLUMN IF NOT EXISTS metadata JSONB;

-- Create index for performance
CREATE INDEX IF NOT EXISTS idx_messages_recipient_id ON messages(recipient_id);
CREATE INDEX IF NOT EXISTS idx_messages_metadata ON messages USING GIN(metadata);