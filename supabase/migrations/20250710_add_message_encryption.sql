-- Add encryption columns to messages table
ALTER TABLE messages 
ADD COLUMN IF NOT EXISTS encrypted_content TEXT,
ADD COLUMN IF NOT EXISTS encryption_iv TEXT;

-- Update the message type check constraint to include the new fields
-- We'll keep both content and encrypted_content for backward compatibility
-- The content field will be used for unencrypted messages or as fallback
-- The encrypted_content field will be used for encrypted messages

-- Add index for better performance on encrypted messages
CREATE INDEX IF NOT EXISTS idx_messages_encrypted ON messages(encrypted_content) WHERE encrypted_content IS NOT NULL;