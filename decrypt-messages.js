const { createClient } = require('@supabase/supabase-js');
const crypto = require('crypto');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const serviceKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1MTU2NzMzNiwiZXhwIjoyMDY3MTQzMzM2fQ.dRCTtUkdQYXOtFo2YC542s-SCaTRq1B31CrZg7hAF64';

const supabase = createClient(supabaseUrl, serviceKey);

// Replicate the encryption functions from the app
async function generateSharedSecret(userId1, userId2) {
  const sortedIds = [userId1, userId2].sort().join('-');
  const text = `solmates-chat-${sortedIds}-v1`;
  const digest = crypto.createHash('sha256').update(text).digest('hex');
  return digest;
}

async function simpleDecrypt(encrypted, key, iv) {
  try {
    // Decode from base64
    const text = Buffer.from(encrypted, 'base64').toString('binary');
    let result = '';
    
    // Generate key hash like in the app
    const keyHash = crypto.createHash('sha256').update(key + iv).digest('hex');
    
    for (let i = 0; i < text.length; i++) {
      const charCode = text.charCodeAt(i);
      const keyChar = keyHash.charCodeAt(i % keyHash.length);
      result += String.fromCharCode(charCode ^ keyChar);
    }
    
    return result;
  } catch (error) {
    return '[Decryption failed]';
  }
}

async function decryptMessage(encrypted, iv, sharedSecret) {
  try {
    const key = sharedSecret.substring(0, 32);
    return await simpleDecrypt(encrypted, key, iv);
  } catch (error) {
    return '[Failed to decrypt]';
  }
}

async function checkEncryptedMessages() {
  console.log('🔍 Looking for encrypted messages...');
  
  const yourUserId = '9b56178a-42c1-42c9-bb7a-495cd31339c1';
  
  try {
    // Get all your chats
    const { data: chats, error: chatsError } = await supabase
      .from('chats')
      .select('id, user1_id, user2_id')
      .or(`user1_id.eq.${yourUserId},user2_id.eq.${yourUserId}`);
      
    if (chatsError) {
      console.error('❌ Error fetching chats:', chatsError);
      return;
    }
    
    console.log(`📝 Found ${chats.length} chats to check for encrypted messages`);
    
    for (const chat of chats) {
      console.log(`\n💬 Checking chat ${chat.id}...`);
      
      // Get messages for this chat
      const { data: messages, error: messagesError } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: true });
        
      if (messagesError) {
        console.log(`⚠️ Could not access messages for chat ${chat.id}:`, messagesError.message);
        continue;
      }
      
      console.log(`  Found ${messages.length} messages`);
      
      const encryptedMessages = messages.filter(msg => msg.encrypted_content && msg.encryption_iv);
      
      if (encryptedMessages.length > 0) {
        console.log(`  🔒 Found ${encryptedMessages.length} encrypted messages!`);
        
        // Generate shared secret for this chat
        const otherUserId = chat.user1_id === yourUserId ? chat.user2_id : chat.user1_id;
        const sharedSecret = await generateSharedSecret(yourUserId, otherUserId);
        
        console.log(`  🔑 Generated shared secret for decryption`);
        
        for (let i = 0; i < encryptedMessages.length; i++) {
          const msg = encryptedMessages[i];
          console.log(`\n    Message ${i + 1}:`);
          console.log(`      Created: ${msg.created_at}`);
          console.log(`      Sender: ${msg.sender_id === yourUserId ? 'You' : 'Other'}`);
          console.log(`      Plain content: "${msg.content || '(empty)'}"`);
          
          if (msg.encrypted_content && msg.encryption_iv) {
            const decrypted = await decryptMessage(msg.encrypted_content, msg.encryption_iv, sharedSecret);
            console.log(`      🔓 Decrypted: "${decrypted}"`);
          }
        }
      } else {
        console.log(`  No encrypted messages in this chat`);
      }
    }
    
  } catch (error) {
    console.error('💥 Error:', error);
  }
}

checkEncryptedMessages();