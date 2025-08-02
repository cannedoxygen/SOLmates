import { useState, useEffect, useRef, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  FlatList,
  TextInput,
  Pressable,
  KeyboardAvoidingView,
  Platform,
  Image,
  Alert,
  Linking,
  RefreshControl,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter, useLocalSearchParams } from 'expo-router';
import { usePrivy, useEmbeddedSolanaWallet } from '@privy-io/expo';
import { chatService } from '../../lib/supabase/chat';
import { supabase } from '../../lib/supabase/client';
import { Message, ChatParticipant } from '../../types/chat';
import { TIP_OPTIONS, TipOption, BonkTippingService } from '../../lib/services/bonkTippingService';
import { TipModal } from '../../components/TipModal';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInUp } from 'react-native-reanimated';
import { Swipeable } from 'react-native-gesture-handler';
import { getBestAvatarUrl } from '../../lib/utils/imageUtils';

export default function ChatRoom() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { chatId } = useLocalSearchParams<{ chatId: string }>();
  const { user } = usePrivy();
  const { wallets } = useEmbeddedSolanaWallet();
  const [currentUserId, setCurrentUserId] = useState<string | null>(null);
  
  const [messages, setMessages] = useState<Message[]>([]);
  const [otherParticipant, setOtherParticipant] = useState<ChatParticipant | null>(null);
  const [messageText, setMessageText] = useState('');
  const [loading, setLoading] = useState(true);
  const [sending, setSending] = useState(false);
  const [refreshing, setRefreshing] = useState(false);
  const [showTipModal, setShowTipModal] = useState(false);
  
  const flatListRef = useRef<FlatList>(null);

  useEffect(() => {
    if (chatId && user) {
      loadChatData();
      subscribeToMessages();
    }
  }, [chatId, user?.id]);

  const loadChatData = async (isRefreshing = false) => {
    if (!chatId || !user) return;

    try {
      if (!isRefreshing) setLoading(true);
      // Get current user's Supabase ID
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();

      if (userError || !currentUser) {
        console.error('Failed to find user:', userError);
        return;
      }

      setCurrentUserId(currentUser.id);

      // Load chat room info
      const room = await chatService.getChatRoom(chatId);
      if (!room) {
        Alert.alert('Error', 'Chat room not found');
        router.back();
        return;
      }

      // Load other participant
      const otherUserId = room.participants.find(id => id !== currentUser.id);
      if (otherUserId) {
        const participant = await chatService.getChatParticipant(otherUserId);
        setOtherParticipant(participant);
      }

      // Load messages with decryption
      const roomMessages = await chatService.getMessages(chatId, 50, currentUser.id);
      setMessages(roomMessages);

      // Mark messages as read
      await chatService.markMessagesAsRead(chatId, currentUser.id);
    } catch (error) {
      console.error('Failed to load chat data:', error);
    } finally {
      if (!isRefreshing) setLoading(false);
    }
  };

  const onRefresh = useCallback(async () => {
    console.log('🔄 Pull to refresh chat messages');
    setRefreshing(true);
    try {
      await loadChatData(true);
    } finally {
      setRefreshing(false);
    }
  }, [chatId, user]);

  const subscribeToMessages = () => {
    if (!chatId) return;

    const subscription = chatService.subscribeToMessages(chatId, (newMessage) => {
      setMessages(prev => [...prev, newMessage]);
      
      // Mark as read if not from current user
      if (newMessage.sender_id !== currentUserId) {
        chatService.markMessagesAsRead(chatId, currentUserId!);
      }
    });

    return () => subscription?.unsubscribe();
  };

  const sendMessage = async () => {
    if (!messageText.trim() || !chatId || !currentUserId || sending) return;

    const text = messageText.trim();
    setMessageText('');
    setSending(true);

    try {
      const message = await chatService.sendMessage(chatId, currentUserId, text);
      if (message) {
        setMessages(prev => [...prev, message]);
      }
    } catch (error) {
      console.error('Failed to send message:', error);
      setMessageText(text); // Restore text on error
    } finally {
      setSending(false);
    }
  };

  const deleteMessage = async (messageId: string) => {
    if (!currentUserId) return;

    Alert.alert(
      'Delete Message',
      'Are you sure you want to delete this message?',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Delete',
          style: 'destructive',
          onPress: async () => {
            try {
              const success = await chatService.deleteMessage(messageId, currentUserId);
              
              if (success) {
                setMessages(prev => prev.filter(msg => msg.id !== messageId));
              } else {
                Alert.alert('Error', 'Failed to delete message');
              }
            } catch (error) {
              console.error('Failed to delete message:', error);
              Alert.alert('Error', 'Failed to delete message');
            }
          },
        },
      ]
    );
  };

  const renderRightActions = (messageId: string, isOwn: boolean) => {
    if (!isOwn) return null; // Only allow deleting own messages
    
    return (
      <Animated.View style={styles.deleteAction}>
        <Pressable
          style={styles.deleteButton}
          onPress={() => deleteMessage(messageId)}
        >
          <Ionicons name="trash" size={20} color="#FFFFFF" />
        </Pressable>
      </Animated.View>
    );
  };

  const renderMessage = ({ item, index }: { item: Message; index: number }) => {
    const isMyMessage = item.sender_id === currentUserId;
    const showAvatar = !isMyMessage && 
      (index === messages.length - 1 || messages[index + 1]?.sender_id !== item.sender_id);

    return (
      <Animated.View
        entering={FadeInUp.delay(index * 50).duration(400)}
        style={[
          styles.messageContainer,
          isMyMessage ? styles.myMessageContainer : styles.otherMessageContainer,
        ]}
      >
        {showAvatar && otherParticipant && (
          <View style={styles.avatarContainer}>
            {otherParticipant.twitter_avatar_url || otherParticipant.avatar_url ? (
              <Image
                source={{ uri: otherParticipant.twitter_avatar_url || otherParticipant.avatar_url }}
                style={styles.messageAvatar}
              />
            ) : (
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.avatarPlaceholder}
              >
                <Text style={styles.avatarText}>
                  {otherParticipant.username.charAt(0).toUpperCase()}
                </Text>
              </LinearGradient>
            )}
          </View>
        )}
        
        <View style={{ maxWidth: '85%', alignSelf: isMyMessage ? 'flex-end' : 'flex-start' }}>
          <Swipeable
            renderRightActions={() => renderRightActions(item.id, isMyMessage)}
            rightThreshold={40}
          >
            <View
              style={[
                styles.messageBubble,
                isMyMessage ? styles.myMessageBubble : styles.otherMessageBubble,
                !showAvatar && !isMyMessage && styles.messageWithoutAvatar,
              ]}
            >
            {item.content?.includes('|TX:') ? (
              <Pressable 
                style={styles.tipMessage}
                onPress={() => {
                  const txHash = item.content.split('|TX:')[1];
                  if (txHash) {
                    Linking.openURL(`https://solscan.io/tx/${txHash}`);
                  }
                }}
              >
                <Image 
                  source={{ uri: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I' }}
                  style={styles.bonkIcon}
                />
                <Text style={styles.tipText}>
                  {item.content.split('|TX:')[0]}
                </Text>
                <Ionicons name="external-link" size={12} color="#666666" />
              </Pressable>
            ) : (
              <Text
                style={[
                  styles.messageText,
                  isMyMessage ? styles.myMessageText : styles.otherMessageText,
                ]}
              >
                {item.content}
              </Text>
            )}
          </View>
          </Swipeable>
        </View>
      </Animated.View>
    );
  };

  const handleTipSent = async (amount: number, emoji: string, transactionHash?: string) => {
    if (!currentUserId || !otherParticipant || !chatId) return;

    try {
      // Insert message directly - fuck the chatService
      const messageContent = `Sent ${amount.toLocaleString()} BONK ${emoji}`;
      
      const { data: tipMessage, error } = await supabase
        .from('messages')
        .insert({
          chat_id: chatId,
          sender_id: currentUserId,
          content: messageContent,
          message_type: 'text'
        })
        .select()
        .single();

      if (error) {
        console.error('Message insert error:', error);
        return;
      }

      if (tipMessage) {
        setMessages(prev => [...prev, tipMessage]);
      }
    } catch (error) {
      console.error('Failed to send tip message:', error);
    }
  };


  const renderTipButton = () => (
    <Pressable
      style={styles.tipButton}
      onPress={() => {
        console.log('💎 Tip button pressed! Values check:', {
          currentUserId,
          otherParticipantId: otherParticipant?.id,
          otherParticipantName: otherParticipant?.username,
          chatId,
          showTipModal
        });
        setShowTipModal(true);
      }}
    >
      <Image 
        source={{ uri: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I' }}
        style={styles.tipButtonIcon}
      />
    </Pressable>
  );

  if (loading) {
    return (
      <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
        <View style={styles.loadingContainer}>
          <Text style={styles.loadingText}>Loading chat...</Text>
        </View>
      </LinearGradient>
    );
  }

  return (
    <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
      <KeyboardAvoidingView
        style={styles.keyboardView}
        behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
        keyboardVerticalOffset={0}
      >
        <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
          <Pressable style={styles.backButton} onPress={() => router.back()}>
            <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
          </Pressable>
          
          <View style={styles.headerInfo}>
            {getBestAvatarUrl(otherParticipant?.twitter_avatar_url, otherParticipant?.avatar_url) ? (
              <Image
                source={{ uri: getBestAvatarUrl(otherParticipant?.twitter_avatar_url, otherParticipant?.avatar_url) }}
                style={styles.headerAvatar}
              />
            ) : (
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.headerAvatarPlaceholder}
              >
                <Text style={styles.headerAvatarText}>
                  {otherParticipant?.username?.charAt(0).toUpperCase() || '?'}
                </Text>
              </LinearGradient>
            )}
            <Text style={styles.headerName}>
              {otherParticipant?.username || 'Unknown'}
            </Text>
          </View>

          <Pressable style={styles.menuButton}>
            <Ionicons name="ellipsis-vertical" size={20} color="#FFFFFF" />
          </Pressable>
        </View>

        <FlatList
          ref={flatListRef}
          data={messages}
          renderItem={renderMessage}
          keyExtractor={(item) => item.id}
          contentContainerStyle={styles.messagesContainer}
          onContentSizeChange={() => flatListRef.current?.scrollToEnd()}
          showsVerticalScrollIndicator={false}
          inverted={false}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={onRefresh}
              tintColor="#9945FF"
              colors={['#9945FF']}
              title="Pull to refresh"
              titleColor="#9945FF"
            />
          }
        />

        <View style={[styles.inputContainer, { paddingBottom: insets.bottom + 20 }]}>
          <View style={styles.inputRow}>
            {renderTipButton()}
            <TextInput
              style={styles.textInput}
              value={messageText}
              onChangeText={setMessageText}
              placeholder="Type a message..."
              placeholderTextColor="#666666"
              multiline
              maxLength={500}
            />
            <Pressable
              style={[
                styles.sendButton,
                (!messageText.trim() || sending) && styles.sendButtonDisabled,
              ]}
              onPress={sendMessage}
              disabled={!messageText.trim() || sending}
            >
              <Ionicons
                name={sending ? "hourglass" : "send"}
                size={20}
                color={messageText.trim() && !sending ? "#FFFFFF" : "#666666"}
              />
            </Pressable>
          </View>
        </View>
      </KeyboardAvoidingView>
      
      <TipModal
        visible={showTipModal}
        onClose={() => {
          console.log('💎 TipModal onClose called');
          setShowTipModal(false);
        }}
        senderId={currentUserId || ''}
        recipientId={otherParticipant?.id || ''}
        recipientName={otherParticipant?.username || ''}
        chatId={chatId || ''}
        onTipSent={handleTipSent}
      />
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  keyboardView: {
    flex: 1,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 24,
    paddingBottom: 16,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.1)',
  },
  backButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  headerInfo: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    marginLeft: 16,
  },
  headerAvatar: {
    width: 40,
    height: 40,
    borderRadius: 20,
    marginRight: 12,
  },
  headerAvatarPlaceholder: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  headerAvatarText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  headerName: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  menuButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  loadingText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  messagesContainer: {
    padding: 24,
    flexGrow: 1,
  },
  messageContainer: {
    flexDirection: 'row',
    marginBottom: 8,
    alignItems: 'flex-end',
  },
  myMessageContainer: {
    justifyContent: 'flex-end',
  },
  otherMessageContainer: {
    justifyContent: 'flex-start',
  },
  avatarContainer: {
    marginRight: 8,
    alignSelf: 'flex-end',
    marginBottom: 2,
  },
  messageAvatar: {
    width: 32,
    height: 32,
    borderRadius: 16,
  },
  avatarPlaceholder: {
    width: 32,
    height: 32,
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 12,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  messageBubble: {
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 18,
    alignSelf: 'flex-start',
  },
  myMessageBubble: {
    backgroundColor: '#9945FF',
    borderBottomRightRadius: 6,
  },
  otherMessageBubble: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderBottomLeftRadius: 6,
  },
  messageWithoutAvatar: {
    marginLeft: 40,
  },
  messageText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    lineHeight: 20,
    flexShrink: 1,
  },
  myMessageText: {
    color: '#FFFFFF',
  },
  otherMessageText: {
    color: '#FFFFFF',
  },
  tipMessage: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 215, 0, 0.1)',
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 215, 0, 0.3)',
  },
  tipText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFD700',
    marginLeft: 6,
    marginRight: 6,
    flex: 1,
  },
  bonkIcon: {
    width: 16,
    height: 16,
    borderRadius: 8,
  },
  tipButtonIcon: {
    width: 44,
    height: 44,
    borderRadius: 22,
  },
  inputContainer: {
    paddingHorizontal: 24,
    paddingTop: 16,
    borderTopWidth: 1,
    borderTopColor: 'rgba(255, 255, 255, 0.1)',
  },
  inputRow: {
    flexDirection: 'row',
    alignItems: 'flex-end',
  },
  tipButton: {
    width: 44,
    height: 44,
    borderRadius: 22,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  textInput: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 22,
    paddingHorizontal: 16,
    paddingVertical: 12,
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    maxHeight: 100,
    marginRight: 12,
  },
  sendButton: {
    width: 44,
    height: 44,
    borderRadius: 22,
    backgroundColor: '#9945FF',
    justifyContent: 'center',
    alignItems: 'center',
  },
  sendButtonDisabled: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
  },
  deleteAction: {
    justifyContent: 'center',
    alignItems: 'center',
    width: 70,
    marginBottom: 16,
  },
  deleteButton: {
    backgroundColor: '#FF5252',
    borderRadius: 20,
    width: 40,
    height: 40,
    justifyContent: 'center',
    alignItems: 'center',
  },
  modalOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.7)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  tipModal: {
    backgroundColor: '#1A1F3A',
    borderRadius: 20,
    padding: 24,
    margin: 24,
    maxWidth: 320,
    width: '100%',
  },
  tipModalTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    textAlign: 'center',
    marginBottom: 8,
  },
  tipModalSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    marginBottom: 24,
  },
  tipOption: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: 16,
    paddingHorizontal: 16,
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    marginBottom: 12,
  },
  tipOptionLeft: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  tipEmoji: {
    fontSize: 24,
    marginRight: 12,
  },
  tipAmount: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  tipUsd: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  tipLabel: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  tipModalClose: {
    paddingVertical: 16,
    alignItems: 'center',
    marginTop: 8,
  },
  tipModalCloseText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#666666',
  },
});