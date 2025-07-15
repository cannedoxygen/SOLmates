-- Temporarily disable the message type constraint
ALTER TABLE messages DROP CONSTRAINT IF EXISTS messages_message_type_check;