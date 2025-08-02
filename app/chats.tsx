import React, { useState, useEffect, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  FlatList,
  Pressable,
  ActivityIndicator,
  Image,
  ScrollView,
  RefreshControl,
} from 'react-native';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import Animated, { FadeInDown } from 'react-native-reanimated';
import { ChatService, Chat } from '../lib/services/chatService';
import { ProfileService } from '../lib/services/profileService';
import { getBestAvatarUrl } from '../lib/utils/imageUtils';

export default function ChatsScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const [chats, setChats] = useState<Chat[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [currentUserProfile, setCurrentUserProfile] = useState<any>(null);

  useEffect(() => {
    if (user) {
      loadChats();
    }
  }, [user?.id]);

  const loadChats = async (isRefreshing = false) => {
    if (!user) return;

    try {
      if (!isRefreshing) setLoading(true);
      // Get current user's profile
      console.log('🔍 Debug: Loading chats for Privy user:', user.id);
      const userProfile = await ProfileService.getUserProfile(user.id);
      if (!userProfile) {
        console.error('No user profile found');
        setLoading(false);
        return;
      }
      console.log('🔍 Debug: Current user profile:', userProfile);
      setCurrentUserProfile(userProfile);

      // Get all chats
      const userChats = await ChatService.getUserChats(userProfile.id);
      console.log('🔍 Debug: User chats loaded:', userChats.length);
      userChats.forEach((chat, i) => {
        console.log(`🔍 Chat ${i + 1}: other_user is`, chat.other_user?.username);
      });
      setChats(userChats);
    } catch (error) {
      console.error('Failed to load chats:', error);
    } finally {
      if (!isRefreshing) setLoading(false);
    }
  };

  const onRefresh = useCallback(async () => {
    console.log('🔄 Pull to refresh chats');
    setRefreshing(true);
    try {
      await loadChats(true);
    } finally {
      setRefreshing(false);
    }
  }, [user]);

  const formatLastMessage = (chat: Chat) => {
    if (!chat.last_message) return 'Start a conversation';
    if (chat.last_message === '🔐 Encrypted message') return chat.last_message;
    
    const message = chat.last_message;
    const truncatedMessage = message.length > 40 ? message.substring(0, 40) + '...' : message;
    
    // Show "You: message" if current user sent it, otherwise just show the message
    if (chat.last_message_sender_id && currentUserProfile && chat.last_message_sender_id === currentUserProfile.id) {
      return `You: ${truncatedMessage}`;
    }
    
    return truncatedMessage;
  };

  const formatMessageTime = (dateString?: string) => {
    if (!dateString) return '';
    
    const date = new Date(dateString);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffDays = Math.floor(diffMs / 86400000);

    if (diffDays === 0) {
      return date.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
    } else if (diffDays === 1) {
      return 'Yesterday';
    } else if (diffDays < 7) {
      return date.toLocaleDateString([], { weekday: 'short' });
    } else {
      return date.toLocaleDateString([], { month: 'short', day: 'numeric' });
    }
  };

  const renderChatItem = ({ item, index }: { item: Chat; index: number }) => (
    <Animated.View
      entering={FadeInDown.delay(index * 100).duration(600)}
    >
      <Pressable
        style={({ pressed }) => [
          styles.chatItem,
          pressed && styles.chatItemPressed,
        ]}
        onPress={() => router.push(`/chat/${item.id}`)}
      >
        <View style={styles.avatarContainer}>
          {getBestAvatarUrl(item.other_user.twitter_avatar_url, item.other_user.avatar_url) ? (
            <Image
              source={{ uri: getBestAvatarUrl(item.other_user.twitter_avatar_url, item.other_user.avatar_url) }}
              style={styles.avatar}
              onLoad={() => console.log(`✅ Loading avatar for: ${item.other_user.username}`)}
            />
          ) : (
            <View
              style={[styles.avatarPlaceholder, { backgroundColor: '#9945FF' }]}
            >
              <Text style={styles.avatarText}>
                {(item.other_user.username || 'U').charAt(0).toUpperCase()}
              </Text>
            </View>
          )}
        </View>

        <View style={styles.chatContent}>
          <View style={styles.chatHeader}>
            <Text style={styles.chatName}>
              {item.other_user.username || item.other_user.twitter_username || 'Unknown'}
            </Text>
            <Text style={styles.chatTime}>
              {formatMessageTime(item.last_message_at)}
            </Text>
          </View>
          
          <View style={styles.messagePreview}>
            <Text style={styles.lastMessage} numberOfLines={1}>
              {formatLastMessage(item)}
            </Text>
            {item.last_message === '🔐 Encrypted message' && (
              <Ionicons name="lock-closed" size={12} color="#4CAF50" style={styles.encryptIcon} />
            )}
          </View>
        </View>
      </Pressable>
    </Animated.View>
  );

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading your chats...</Text>
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.content, { paddingTop: insets.top + 20 }]}>
        <View style={styles.header}>
          <Text style={styles.title}>Chats</Text>
          <View style={styles.encryptionHeader}>
            <Ionicons name="lock-closed" size={16} color="#4CAF50" />
            <Text style={styles.encryptionHeaderText}>End-to-end encrypted</Text>
          </View>
        </View>

        {chats.length === 0 ? (
          <ScrollView
            contentContainerStyle={styles.emptyScrollContent}
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
          >
            <View style={styles.emptyContainer}>
              <Ionicons name="chatbubbles-outline" size={64} color="#666666" />
              <Text style={styles.emptyTitle}>No chats yet</Text>
              <Text style={styles.emptyText}>
                Match with people to start chatting
              </Text>
              <Pressable
                style={styles.discoverButton}
                onPress={() => router.push('/(tabs)/discover')}
              >
                <Text style={styles.discoverButtonText}>Discover People</Text>
              </Pressable>
            </View>
          </ScrollView>
        ) : (
          <FlatList
            data={chats}
            renderItem={renderChatItem}
            keyExtractor={(item) => item.id}
            contentContainerStyle={styles.listContent}
            showsVerticalScrollIndicator={false}
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
        )}
      </View>
    </View>
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
    marginBottom: 8,
  },
  encryptionHeader: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  encryptionHeaderText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#4CAF50',
    marginLeft: 6,
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
    marginTop: 16,
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
    marginRight: 12,
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
    fontSize: 17,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  chatTime: {
    fontSize: 13,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  messagePreview: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  lastMessage: {
    fontSize: 15,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    flex: 1,
  },
  encryptIcon: {
    marginLeft: 6,
  },
  emptyScrollContent: {
    flex: 1,
  },
  emptyContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 48,
    minHeight: 400,
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
    marginBottom: 24,
  },
  discoverButton: {
    backgroundColor: '#9945FF',
    paddingHorizontal: 24,
    paddingVertical: 12,
    borderRadius: 24,
  },
  discoverButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
});