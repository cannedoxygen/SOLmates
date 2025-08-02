import { useState, useEffect } from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  FlatList, 
  Pressable,
  ActivityIndicator,
  Image,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { chatService } from '../../lib/supabase/chat';
import { ChatRoom, ChatParticipant } from '../../types/chat';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInDown } from 'react-native-reanimated';

interface ChatRoomWithParticipant extends ChatRoom {
  otherParticipant?: ChatParticipant;
}

export default function Chat() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const [chatRooms, setChatRooms] = useState<ChatRoomWithParticipant[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (user) {
      loadChatRooms();
    }
  }, [user?.id]);

  const loadChatRooms = async () => {
    if (!user) return;

    try {
      const rooms = await chatService.getUserChatRooms(user.id);
      
      // Load participant info for each room
      const roomsWithParticipants = await Promise.all(
        rooms.map(async (room) => {
          const otherUserId = room.participants.find(id => id !== user.id);
          const otherParticipant = otherUserId 
            ? await chatService.getChatParticipant(otherUserId)
            : null;
          
          return {
            ...room,
            otherParticipant: otherParticipant || undefined,
          };
        })
      );

      setChatRooms(roomsWithParticipants);
    } catch (error) {
      console.error('Failed to load chat rooms:', error);
    } finally {
      setLoading(false);
    }
  };

  const formatLastMessage = (room: ChatRoomWithParticipant) => {
    if (!room.last_message) return 'Start a conversation';
    
    const isMyMessage = room.last_message.sender_id === user?.id;
    const prefix = isMyMessage ? 'You: ' : '';
    
    if (room.last_message.message_type === 'tip') {
      return `${prefix}Sent tip`;
    }
    
    return prefix + room.last_message.content;
  };

  const formatTime = (dateString: string) => {
    const date = new Date(dateString);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);
    const diffDays = Math.floor(diffMs / 86400000);

    if (diffMins < 1) return 'now';
    if (diffMins < 60) return `${diffMins}m`;
    if (diffHours < 24) return `${diffHours}h`;
    if (diffDays < 7) return `${diffDays}d`;
    
    return date.toLocaleDateString();
  };

  const renderChatItem = ({ item, index }: { item: ChatRoomWithParticipant; index: number }) => {
    const hasUnread = item.last_message && 
      !item.last_message.read_at && 
      item.last_message.sender_id !== user?.id;

    return (
      <Animated.View
        entering={FadeInDown.delay(index * 50).duration(600)}
      >
        <Pressable
          style={({ pressed }) => [
            styles.chatItem,
            pressed && styles.chatItemPressed,
          ]}
          onPress={() => router.push({ pathname: '/chat/[chatId]', params: { chatId: item.id } })}
        >
          <View style={styles.avatarContainer}>
            {item.otherParticipant?.twitter_avatar_url || item.otherParticipant?.avatar_url ? (
              <Image
                source={{ 
                  uri: item.otherParticipant?.twitter_avatar_url || item.otherParticipant?.avatar_url 
                }}
                style={styles.avatar}
                onLoad={() => console.log('✅ Chat avatar loaded for:', item.otherParticipant?.username)}
                onError={() => console.log('⚠️ Avatar failed for:', item.otherParticipant?.username)}
              />
            ) : (
              <LinearGradient
                colors={['#9945FF', '#7B3FF2']}
                style={styles.avatarPlaceholder}
              >
                <Text style={styles.avatarText}>
                  {item.otherParticipant?.username?.charAt(0).toUpperCase() || '?'}
                </Text>
              </LinearGradient>
            )}
            {hasUnread && <View style={styles.unreadDot} />}
          </View>

          <View style={styles.chatContent}>
            <View style={styles.chatHeader}>
              <Text style={styles.chatName}>
                {item.otherParticipant?.username || 'Unknown'}
              </Text>
              <Text style={styles.chatTime}>
                {item.last_message_at ? formatTime(item.last_message_at) : ''}
              </Text>
            </View>
            <Text 
              style={[styles.chatMessage, hasUnread && styles.unreadMessage]}
              numberOfLines={1}
            >
              {formatLastMessage(item)}
            </Text>
          </View>
        </Pressable>
      </Animated.View>
    );
  };

  if (loading) {
    return (
      <LinearGradient colors={['#0A0E27', '#1A1F3A']} style={styles.container}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
        </View>
      </LinearGradient>
    );
  }

  return (
    <LinearGradient
      colors={['#0A0E27', '#1A1F3A']}
      style={styles.container}
    >
      <View style={[styles.content, { paddingTop: insets.top + 20 }]}>
        <View style={styles.header}>
          <Text style={styles.title}>Messages</Text>
        </View>

        {chatRooms.length === 0 ? (
          <View style={styles.emptyContainer}>
            <Ionicons name="chatbubbles-outline" size={64} color="#666666" />
            <Text style={styles.emptyTitle}>No messages yet</Text>
            <Text style={styles.emptyText}>
              Match with builders to start chatting
            </Text>
          </View>
        ) : (
          <FlatList
            data={chatRooms}
            renderItem={renderChatItem}
            keyExtractor={(item) => item.id}
            contentContainerStyle={styles.listContent}
            showsVerticalScrollIndicator={false}
          />
        )}
      </View>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    flex: 1,
  },
  header: {
    paddingHorizontal: 24,
    marginBottom: 20,
  },
  title: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  listContent: {
    paddingHorizontal: 24,
  },
  chatItem: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 16,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.1)',
  },
  chatItemPressed: {
    opacity: 0.7,
  },
  avatarContainer: {
    position: 'relative',
    marginRight: 16,
  },
  avatar: {
    width: 56,
    height: 56,
    borderRadius: 28,
  },
  avatarPlaceholder: {
    width: 56,
    height: 56,
    borderRadius: 28,
    justifyContent: 'center',
    alignItems: 'center',
  },
  avatarText: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  unreadDot: {
    position: 'absolute',
    top: 0,
    right: 0,
    width: 12,
    height: 12,
    borderRadius: 6,
    backgroundColor: '#4CAF50',
    borderWidth: 2,
    borderColor: '#0A0E27',
  },
  chatContent: {
    flex: 1,
  },
  chatHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 4,
  },
  chatName: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  chatTime: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  chatMessage: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  unreadMessage: {
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 48,
  },
  emptyTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 8,
  },
  emptyText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
  },
});