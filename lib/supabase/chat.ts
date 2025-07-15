import { supabase } from './client';
import { ChatRoom, Message, ChatParticipant } from '../../types/chat';
import { generateSharedSecret, decryptMessage } from '../crypto/encryption';

export class ChatService {
  async getUserChatRooms(privyUserId: string): Promise<ChatRoom[]> {
    try {
      // First get the Supabase user ID for this Privy user
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', privyUserId)
        .single();

      if (userError || !currentUser) {
        console.error('❌ Could not find Supabase user for Privy ID:', privyUserId);
        return [];
      }

      const supabaseUserId = currentUser.id;

      // Get chats for this user directly
      const { data: chats, error: chatError } = await supabase
        .from('chats')
        .select('*')
        .or(`user1_id.eq.${supabaseUserId},user2_id.eq.${supabaseUserId}`)
        .order('last_message_at', { ascending: false });

      if (chatError) throw chatError;

      const chatRooms: ChatRoom[] = [];
      
      for (const chat of chats || []) {
        // Get last message
        const { data: lastMessage } = await supabase
          .from('messages')
          .select('*')
          .eq('chat_id', chat.id)
          .order('created_at', { ascending: false })
          .limit(1)
          .single();

        // Decrypt last message if it's encrypted
        let decryptedLastMessage = lastMessage;
        if (lastMessage?.encrypted_content && lastMessage?.encryption_iv) {
          try {
            const otherUserId = chat.user1_id === supabaseUserId ? chat.user2_id : chat.user1_id;
            const sharedSecret = await generateSharedSecret(supabaseUserId, otherUserId);
            const decryptedContent = await decryptMessage(
              lastMessage.encrypted_content,
              lastMessage.encryption_iv,
              sharedSecret
            );
            decryptedLastMessage = {
              ...lastMessage,
              content: decryptedContent,
            };
          } catch (error) {
            console.error('Failed to decrypt last message:', error);
          }
        }

        chatRooms.push({
          id: chat.id,
          participants: [chat.user1_id, chat.user2_id],
          created_at: chat.created_at,
          last_message: decryptedLastMessage,
          last_message_at: decryptedLastMessage?.created_at || chat.last_message_at,
        });
      }

      return chatRooms.sort((a, b) => 
        new Date(b.last_message_at || b.created_at).getTime() -
        new Date(a.last_message_at || a.created_at).getTime()
      );
    } catch (error) {
      console.error('Failed to get chat rooms:', error);
      return [];
    }
  }

  async getChatRoom(chatId: string): Promise<ChatRoom | null> {
    try {
      const { data: chat, error } = await supabase
        .from('chats')
        .select('*')
        .eq('id', chatId)
        .single();

      if (error) throw error;
      
      return {
        id: chat.id,
        participants: [chat.user1_id, chat.user2_id],
        created_at: chat.created_at,
        last_message: null,
        last_message_at: chat.last_message_at,
      };
    } catch (error) {
      console.error('Failed to get chat room:', error);
      return null;
    }
  }

  async getMessages(chatId: string, limit = 50, currentUserId?: string): Promise<Message[]> {
    try {
      const { data, error } = await supabase
        .from('messages')
        .select('*')
        .eq('chat_id', chatId)
        .order('created_at', { ascending: false })
        .limit(limit);

      if (error) throw error;
      
      const messages = (data || []).reverse();
      
      // Decrypt encrypted messages if we have a current user
      if (currentUserId) {
        const decryptedMessages = await this.decryptMessages(messages, chatId, currentUserId);
        return decryptedMessages;
      }
      
      return messages;
    } catch (error) {
      console.error('Failed to get messages:', error);
      return [];
    }
  }

  async decryptMessages(messages: Message[], chatId: string, currentUserId: string): Promise<Message[]> {
    try {
      // Get the chat to find the other user
      const chat = await this.getChatRoom(chatId);
      if (!chat) return messages;
      
      const otherUserId = chat.participants.find(id => id !== currentUserId);
      if (!otherUserId) return messages;
      
      // Generate shared secret for this chat
      const sharedSecret = await generateSharedSecret(currentUserId, otherUserId);
      
      // Decrypt each message that has encrypted content
      const decryptedMessages = await Promise.all(
        messages.map(async (message) => {
          if (message.encrypted_content && message.encryption_iv) {
            try {
              const decryptedContent = await decryptMessage(
                message.encrypted_content,
                message.encryption_iv,
                sharedSecret
              );
              
              return {
                ...message,
                content: decryptedContent, // Use decrypted content as the main content
              };
            } catch (error) {
              console.error('Failed to decrypt message:', error);
              return {
                ...message,
                content: message.content || '[Encrypted message - failed to decrypt]',
              };
            }
          }
          return message;
        })
      );
      
      return decryptedMessages;
    } catch (error) {
      console.error('Failed to decrypt messages:', error);
      return messages;
    }
  }

  async sendMessage(
    chatId: string,
    senderId: string,
    content: string,
    type: string = 'text',
    metadata?: any
  ): Promise<Message | null> {
    try {
      const { data, error } = await supabase
        .from('messages')
        .insert({
          chat_id: chatId,
          sender_id: senderId,
          content,
          message_type: type,
          created_at: new Date().toISOString(),
        })
        .select()
        .single();

      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Failed to send message:', error);
      return null;
    }
  }

  async markMessagesAsRead(chatId: string, userId: string): Promise<void> {
    try {
      await supabase
        .from('messages')
        .update({
          read_at: new Date().toISOString(),
        })
        .eq('chat_id', chatId)
        .neq('sender_id', userId)
        .is('read_at', null);
    } catch (error) {
      console.error('Failed to mark messages as read:', error);
    }
  }

  async deleteMessage(messageId: string, userId: string): Promise<boolean> {
    try {
      // Only allow users to delete their own messages
      const { data: message, error: fetchError } = await supabase
        .from('messages')
        .select('sender_id')
        .eq('id', messageId)
        .single();

      if (fetchError || !message || message.sender_id !== userId) {
        console.error('Cannot delete message: not authorized');
        return false;
      }

      const { error } = await supabase
        .from('messages')
        .delete()
        .eq('id', messageId);

      if (error) throw error;
      return true;
    } catch (error) {
      console.error('Failed to delete message:', error);
      return false;
    }
  }

  async getChatParticipant(userId: string): Promise<ChatParticipant | null> {
    try {
      const { data, error } = await supabase
        .from('users')
        .select('id, username, avatar_url, twitter_avatar_url, wallet_address')
        .eq('id', userId)
        .single();

      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Failed to get chat participant:', error);
      return null;
    }
  }

  subscribeToMessages(
    chatId: string,
    onMessage: (message: Message) => void
  ) {
    return supabase
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
          onMessage(payload.new as Message);
        }
      )
      .subscribe();
  }

  async getUnreadCount(privyUserId: string): Promise<number> {
    try {
      // First get the Supabase user ID for this Privy user
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', privyUserId)
        .single();

      if (userError || !currentUser) {
        console.error('❌ Could not find Supabase user for unread count:', privyUserId);
        return 0;
      }

      const supabaseUserId = currentUser.id;
      const rooms = await this.getUserChatRooms(privyUserId);
      let unreadCount = 0;

      for (const room of rooms) {
        const { count } = await supabase
          .from('messages')
          .select('*', { count: 'exact', head: true })
          .eq('chat_id', room.id)
          .neq('sender_id', supabaseUserId)
          .is('read_at', null);

        unreadCount += count || 0;
      }

      return unreadCount;
    } catch (error) {
      console.error('Failed to get unread count:', error);
      return 0;
    }
  }
}

export const chatService = new ChatService();