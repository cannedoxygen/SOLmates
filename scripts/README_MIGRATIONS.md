# Database Migration Instructions

## Applying the Encryption Migration

The encryption migration adds two new columns to the `messages` table to support end-to-end encryption:
- `encrypted_content` - Stores the encrypted message content
- `encryption_iv` - Stores the initialization vector for decryption

### Steps to Apply:

1. **Open Supabase Dashboard**
   - Go to your Supabase project dashboard
   - Navigate to the SQL Editor

2. **Run the Migration**
   - Copy the contents of `scripts/apply-encryption-migration.sql`
   - Paste into the SQL Editor
   - Click "Run" to execute

3. **Verify Success**
   - The last query will show the new columns if successful
   - You should see:
     - `encrypted_content` (text, nullable)
     - `encryption_iv` (text, nullable)

### What This Enables:

- **Secure Messaging**: Messages are encrypted before storage
- **Privacy**: Only chat participants can decrypt messages
- **Backward Compatibility**: Plain text messages still work as fallback

### Next Steps After Migration:

1. Test sending messages in the chat
2. Verify encryption is working (check database for encrypted_content)
3. Monitor for any errors in the console

### Troubleshooting:

If you encounter errors:
- Check that you're connected to the correct database
- Ensure you have appropriate permissions
- The migration is idempotent (safe to run multiple times)