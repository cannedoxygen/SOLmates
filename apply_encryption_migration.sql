-- Apply the encryption migration manually
-- Run this in your Supabase SQL editor

-- Add encryption columns to messages table
ALTER TABLE messages 
ADD COLUMN IF NOT EXISTS encrypted_content TEXT,
ADD COLUMN IF NOT EXISTS encryption_iv TEXT;

-- Add index for better performance on encrypted messages
CREATE INDEX IF NOT EXISTS idx_messages_encrypted ON messages(encrypted_content) WHERE encrypted_content IS NOT NULL;