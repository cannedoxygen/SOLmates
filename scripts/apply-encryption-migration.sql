-- Apply Encryption Migration Script
-- Run this in your Supabase SQL Editor

-- Add encryption columns to messages table
ALTER TABLE messages 
ADD COLUMN IF NOT EXISTS encrypted_content TEXT,
ADD COLUMN IF NOT EXISTS encryption_iv TEXT;

-- Add index for better performance on encrypted messages
CREATE INDEX IF NOT EXISTS idx_messages_encrypted ON messages(encrypted_content) WHERE encrypted_content IS NOT NULL;

-- Verify the columns were added
SELECT 
    column_name, 
    data_type, 
    is_nullable
FROM 
    information_schema.columns
WHERE 
    table_name = 'messages' 
    AND column_name IN ('encrypted_content', 'encryption_iv')
ORDER BY 
    ordinal_position;