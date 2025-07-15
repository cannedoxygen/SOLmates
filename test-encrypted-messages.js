// Test script to check for encrypted messages
const { createClient } = require('@supabase/supabase-js');

// Simple encryption test using Node.js crypto (matching the React Native version)
const crypto = require('crypto');

const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt2cG5zZWZ0eHZpZG9ueWppcXN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjczMzYsImV4cCI6MjA2NzE0MzMzNn0.2-hHKnc1y8nj5giJsO9D2RJBzMNB8DXPnNRYvr_wOss';

const supabase = createClient(supabaseUrl, anonKey);

async function generateSharedSecret(userId1, userId2) {
  const sortedIds = [userId1, userId2].sort().join('-');
  const digest = crypto.createHash('sha256').update(`solmates-chat-${sortedIds}-v1`).digest('hex');
  return digest;
}

async function simpleDecrypt(encrypted, key, iv) {
  try {
    // Decode from base64
    const text = Buffer.from(encrypted, 'base64').toString('binary');
    let result = '';
    
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

async function testEncryptedMessages() {
  console.log('🔍 Testing encrypted messages for your account...');
  
  const yourPrivyId = 'did:privy:cmcqo054u00mpjr0mnf2w8uxa';
  const yourUserId = '9b56178a-42c1-42c9-bb7a-495cd31339c1';
  
  try {
    // Get your chats
    const { data: chats, error: chatsError } = await supabase
      .from('chats')
      .select('*')
      .or(`user1_id.eq.${yourUserId},user2_id.eq.${yourUserId}`)
      .order('last_message_at', { ascending: false });
      
    if (chatsError) {
      console.error('❌ Error fetching chats:', chatsError);
      return;
    }
    
    console.log(`📝 Found ${chats.length} chats to check`);
    
    let totalEncrypted = 0;
    
    for (const chat of chats) {
      console.log(`\n💬 Checking chat ${chat.id}...`);
      
      // Get the other user info
      const otherUserId = chat.user1_id === yourUserId ? chat.user2_id : chat.user1_id;
      const { data: otherUser } = await supabase
        .from('users')
        .select('username, twitter_username, display_name')
        .eq('id', otherUserId)
        .single();
        
      const otherUserName = otherUser?.display_name || otherUser?.username || otherUser?.twitter_username || 'Unknown';
      console.log(`  Chat with: ${otherUserName}`);
      
      // Get messages for this chat
      const { data: messages, error: messagesError } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chat.id)
        .order('created_at', { ascending: true });
        
      if (messagesError) {
        console.log(`  ⚠️ Could not get messages:`, messagesError.message);
        continue;
      }
      
      console.log(`  📨 Found ${messages.length} messages`);
      
      const encryptedMessages = messages.filter(msg => msg.encrypted_content && msg.encryption_iv);
      
      if (encryptedMessages.length > 0) {
        console.log(`  🔒 Found ${encryptedMessages.length} encrypted messages!`);
        totalEncrypted += encryptedMessages.length;
        
        // Generate shared secret
        const sharedSecret = await generateSharedSecret(yourUserId, otherUserId);
        console.log(`  🔑 Generated shared secret for decryption`);
        
        for (let i = 0; i < encryptedMessages.length; i++) {
          const msg = encryptedMessages[i];
          console.log(`\n    📩 Message ${i + 1}:`);
          console.log(`      Date: ${msg.created_at}`);
          console.log(`      From: ${msg.sender_id === yourUserId ? 'You' : otherUserName}`);
          console.log(`      Plain text: "${msg.content || '(empty)'}"`);
          
          const decrypted = await decryptMessage(msg.encrypted_content, msg.encryption_iv, sharedSecret);
          console.log(`      🔓 Decrypted: "${decrypted}"`);
          console.log(`      Type: ${msg.message_type}`);
        }
      } else {
        console.log(`  No encrypted messages in this chat`);
        
        // Show recent regular messages
        const recentMessages = messages.slice(-3);
        if (recentMessages.length > 0) {
          console.log(`  📝 Recent messages:`);
          recentMessages.forEach(msg => {
            const sender = msg.sender_id === yourUserId ? 'You' : otherUserName;
            console.log(`    ${sender}: "${msg.content || '(empty)'}"`);
          });
        }
      }
    }
    
    console.log(`\n🔐 Summary: Found ${totalEncrypted} encrypted messages total`);
    
  } catch (error) {
    console.error('💥 Error:', error);
  }
}

testEncryptedMessages();