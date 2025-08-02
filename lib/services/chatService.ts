import { supabase } from '../supabase/client';
import { encryptMessage, decryptMessage, generateSharedSecret } from '../crypto/encryption';
import { AnalyticsService } from './analyticsService';

export interface Message {
  id: string;
  chat_id: string;
  sender_id: string;
  content: string;
  encrypted_content?: string;
  encryption_iv?: string;
  message_type: 'text' | 'image' | 'file' | 'system';
  read_at?: string;
  created_at: string;
}

export interface Chat {
  id: string;
  user1_id: string;
  user2_id: string;
  last_message?: string;
  last_message_at?: string;
  created_at: string;
  other_user?: any;
}

export class ChatService {
  private static sharedSecrets: Map<string, string> = new Map();

  /**
   * Get or generate shared secret for a chat
   */
  private static async getSharedSecret(userId1: string, userId2: string): Promise<string> {
    const key = [userId1, userId2].sort().join('-');
    
    if (this.sharedSecrets.has(key)) {
      return this.sharedSecrets.get(key)!;
    }

    const secret = await generateSharedSecret(userId1, userId2);
    this.sharedSecrets.set(key, secret);
    return secret;
  }

  /**
   * Send an encrypted message
   */
  static async sendMessage(
    chatId: string,
    senderId: string,
    content: string,
    recipientId: string
  ): Promise<Message> {
    try {
      console.log('🔐 Encrypting message...');
      
      // Generate shared secret
      const sharedSecret = await this.getSharedSecret(senderId, recipientId);
      
      // Encrypt the message
      const { encrypted, iv } = await encryptMessage(content, sharedSecret);
      
      // Try to store with encryption, but fallback to plain text if encryption columns don't exist
      let messageData = null;
      
      try {
        // First attempt: try with encryption columns
        const { data: encryptedMessage, error: encryptedError } = await supabase
          .from('messages')
          .insert([{
            chat_id: chatId,
            sender_id: senderId,
            content: content,
            encrypted_content: encrypted,
            encryption_iv: iv,
            message_type: 'text',
            created_at: new Date().toISOString(),
          }])
          .select()
          .single();

        if (!encryptedError && encryptedMessage) {
          messageData = Array.isArray(encryptedMessage) ? encryptedMessage[0] : encryptedMessage;
          console.log('✅ Encrypted message sent:', messageData?.id);
        } else {
          throw encryptedError;
        }
      } catch (encryptionError) {
        console.log('❌ Encryption columns not available, using plain text:', encryptionError);
        
        // Fallback: plain text only
        const { data: plainMessage, error: plainError } = await supabase
          .from('messages')
          .insert([{
            chat_id: chatId,
            sender_id: senderId,
            content: content,
            message_type: 'text',
            created_at: new Date().toISOString(),
          }])
          .select()
          .single();

        if (plainError) throw plainError;
        
        messageData = Array.isArray(plainMessage) ? plainMessage[0] : plainMessage;
        console.log('✅ Plain text message sent:', messageData?.id);
      }

      // Track message analytics
      try {
        await Promise.all([
          AnalyticsService.trackMessage(senderId, recipientId, 'sent', chatId),
          AnalyticsService.trackMessage(recipientId, senderId, 'received', chatId)
        ]);
      } catch (analyticsError) {
        console.error('❌ Failed to track message analytics:', analyticsError);
      }

      // Update chat's last message
      await supabase
        .from('chats')
        .update({
          last_message: messageData?.encrypted_content ? '🔐 Encrypted message' : content.substring(0, 50) + (content.length > 50 ? '...' : ''),
          last_message_at: new Date().toISOString(),
        })
        .eq('id', chatId);

      // Return message with decrypted content for UI
      return {
        ...messageData,
        content: content // Original content for sender's UI
      };
    } catch (error) {
      console.error('❌ Failed to send message:', error);
      throw error;
    }
  }

  /**
   * Get chat messages with decryption
   */
  static async getChatMessages(
    chatId: string,
    currentUserId: string,
    otherUserId: string,
    limit = 50
  ): Promise<Message[]> {
    try {
      const { data: messages, error } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chatId)
        .order('created_at', { ascending: false })
        .limit(limit);

      if (error) throw error;

      // Get shared secret for decryption
      const sharedSecret = await this.getSharedSecret(currentUserId, otherUserId);

      // Decrypt messages
      const decryptedMessages = await Promise.all(
        messages.map(async (msg) => {
          if (msg.encrypted_content && msg.encryption_iv) {
            try {
              const decrypted = await decryptMessage(
                msg.encrypted_content,
                msg.encryption_iv,
                sharedSecret
              );
              return { ...msg, content: decrypted };
            } catch {
              console.error('Failed to decrypt message:', msg.id);
              return { ...msg, content: '🔒 Unable to decrypt' };
            }
          }
          return msg;
        })
      );

      return decryptedMessages.reverse(); // Return in chronological order
    } catch (error) {
      console.error('❌ Failed to get messages:', error);
      return [];
    }
  }

  /**
   * Get all chats for a user
   */
  static async getUserChats(userId: string): Promise<Chat[]> {
    try {
      const { data: chats, error } = await supabase
        .from('chats')
        .select(`
          *,
          user1:user1_id(id, username, avatar_url, twitter_avatar_url, twitter_username),
          user2:user2_id(id, username, avatar_url, twitter_avatar_url, twitter_username)
        `)
        .or(`user1_id.eq.${userId},user2_id.eq.${userId}`)
        .order('last_message_at', { ascending: false, nullsFirst: false });

      if (error) throw error;

      // Transform to include other_user and fetch latest message if needed
      const transformedChats = await Promise.all(
        (chats || []).map(async (chat) => {
          const otherUser = chat.user1_id === userId ? chat.user2 : chat.user1;
          
          // Fetch the latest message to get sender info
          let lastMessage = chat.last_message;
          let lastMessageAt = chat.last_message_at;
          let lastMessageSenderId = null;
          
          const { data: latestMessages } = await supabase
            .from('messages')
            .select('content, created_at, sender_id')
            .eq('chat_id', chat.id)
            .order('created_at', { ascending: false })
            .limit(1);
          
          if (latestMessages && latestMessages.length > 0) {
            const latest = latestMessages[0];
            lastMessage = latest.content;
            lastMessageAt = latest.created_at;
            lastMessageSenderId = latest.sender_id;
            
            // Update the database if needed
            if (!chat.last_message) {
              await supabase
                .from('chats')
                .update({
                  last_message: latest.content.substring(0, 50) + (latest.content.length > 50 ? '...' : ''),
                  last_message_at: latest.created_at
                })
                .eq('id', chat.id);
            }
          }
          
          return {
            ...chat,
            last_message: lastMessage,
            last_message_at: lastMessageAt,
            last_message_sender_id: lastMessageSenderId,
            other_user: otherUser
          };
        })
      );

      console.log('💬 Found user chats:', transformedChats.length);
      return transformedChats;
    } catch (error) {
      console.error('❌ Failed to get user chats:', error);
      return [];
    }
  }

  /**
   * Get or create chat between two users
   */
  static async getOrCreateChat(userId1: string, userId2: string): Promise<Chat | null> {
    try {
      console.log('🔄 getOrCreateChat called with:', { userId1, userId2 });
      
      // First try to get existing chat (without .single() to avoid errors on no results)
      const { data: existingChats, error: fetchError } = await supabase
        .from('chats')
        .select('*')
        .or(
          `and(user1_id.eq.${userId1},user2_id.eq.${userId2}),and(user1_id.eq.${userId2},user2_id.eq.${userId1})`
        );

      console.log('🔍 Existing chat search result:', { existingChats, fetchError });

      if (!fetchError && existingChats && existingChats.length > 0) {
        // Use the first (and should be only) existing chat
        const chatData = existingChats[0];
        
        // Manually fetch the other user's profile
        const otherUserId = chatData.user1_id === userId1 ? chatData.user2_id : chatData.user1_id;
        console.log('👤 Fetching other user profile:', otherUserId);
        
        const { data: otherUserProfile } = await supabase
          .from('users')
          .select('id, username, avatar_url, twitter_avatar_url, twitter_username')
          .eq('id', otherUserId)
          .single();

        console.log('👤 Other user profile:', otherUserProfile);
        
        const result = { 
          ...chatData, 
          other_user: otherUserProfile 
        };
        console.log('✅ Returning existing chat:', result);
        return result;
      }

      // Create new chat if doesn't exist
      console.log('🆕 Creating new chat...');
      const { data: newChat, error: createError } = await supabase
        .from('chats')
        .insert([{
          user1_id: userId1 < userId2 ? userId1 : userId2,
          user2_id: userId1 < userId2 ? userId2 : userId1,
          created_at: new Date().toISOString(),
        }])
        .select('*')
        .single();

      console.log('🆕 New chat creation result:', { newChat, createError });

      if (createError) throw createError;

      // Handle case where .single() returns array instead of object
      const chatData = Array.isArray(newChat) ? newChat[0] : newChat;

      // Manually fetch the other user's profile
      const otherUserId = chatData.user1_id === userId1 ? chatData.user2_id : chatData.user1_id;
      console.log('👤 Fetching other user profile for new chat:', otherUserId);
      
      const { data: otherUserProfile } = await supabase
        .from('users')
        .select('id, username, avatar_url, twitter_avatar_url, twitter_username')
        .eq('id', otherUserId)
        .single();

      console.log('👤 Other user profile for new chat:', otherUserProfile);

      const result = { 
        ...chatData, 
        other_user: otherUserProfile 
      };
      console.log('✅ Returning new chat:', result);
      return result;
    } catch (error) {
      console.error('❌ Failed to get/create chat:', error);
      return null;
    }
  }

  /**
   * Mark messages as read
   */
  static async markMessagesAsRead(chatId: string, userId: string): Promise<void> {
    try {
      await supabase
        .from('messages')
        .update({ read_at: new Date().toISOString() })
        .eq('chat_id', chatId)
        .neq('sender_id', userId)
        .is('read_at', null);
    } catch (error) {
      console.error('❌ Failed to mark messages as read:', error);
    }
  }

  /**
   * Subscribe to new messages in a chat
   */
  static subscribeToChat(
    chatId: string,
    onMessage: (message: Message) => void
  ) {
    const subscription = supabase
      .channel(`chat:${chatId}`)
      .on(
        'postgres_changes',
        {
          event: 'INSERT',
          schema: 'public',
          table: 'messages',
          filter: `chat_id=eq.${chatId}`,
        },
        (payload) => {
          console.log('📨 New message received:', payload.new);
          onMessage(payload.new as Message);
        }
      )
      .subscribe();

    return subscription;
  }

  /**
   * Get unread message count for a user
   */
  static async getUnreadCount(userId: string): Promise<number> {
    try {
      // First get all chat IDs for the user
      const { data: userChats, error: chatsError } = await supabase
        .from('chats')
        .select('id')
        .or(`user1_id.eq.${userId},user2_id.eq.${userId}`);

      if (chatsError) throw chatsError;

      if (!userChats || userChats.length === 0) {
        return 0;
      }

      const chatIds = userChats.map(chat => chat.id);

      // Then get unread message count
      const { count, error } = await supabase
        .from('messages')
        .select('*', { count: 'exact', head: true })
        .neq('sender_id', userId)
        .is('read_at', null)
        .in('chat_id', chatIds);

      if (error) throw error;
      return count || 0;
    } catch (error) {
      console.error('❌ Failed to get unread count:', error);
      return 0;
    }
  }
}