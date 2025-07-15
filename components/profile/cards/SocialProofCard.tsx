import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  Alert,
  Image,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import { usePrivy } from '@privy-io/expo';
import { supabase } from '../../../lib/supabase/client';
import Animated, {
  useAnimatedStyle,
  interpolate,
  useSharedValue,
  withTiming,
  withRepeat,
} from 'react-native-reanimated';
import { TipModal } from '../../TipModal';

interface UserProfile {
  reputation_score?: number;
  id: string;
  username: string;
}

interface SocialProofCardProps {
  userProfile: UserProfile;
  onTip?: (userId: string, amount: number) => void;
}

const TESTIMONIALS = [
  {
    text: "Amazing collaborator! Delivered exactly what we needed on time.",
    author: "Sarah Chen",
    role: "Product Manager",
    rating: 5
  },
  {
    text: "Great communication and technical skills. Would work with again!",
    author: "Mike Rodriguez",
    role: "Frontend Dev",
    rating: 5
  },
  {
    text: "Professional and creative. Brought fresh ideas to our project.",
    author: "Alex Kim",
    role: "Designer",
    rating: 4
  }
];



export function SocialProofCard({ userProfile, onTip }: SocialProofCardProps) {
  const { user } = usePrivy();
  const [showTipModal, setShowTipModal] = useState(false);
  const [selectedAmount, setSelectedAmount] = useState(5);
  const [currentTestimonial, setCurrentTestimonial] = useState(0);
  const [currentUserId, setCurrentUserId] = useState<string | null>(null);
  const [recipientSupabaseId, setRecipientSupabaseId] = useState<string | null>(null);

  const starAnimations = Array.from({ length: 5 }, () => useSharedValue(0));
  const tipButtonAnimation = useSharedValue(0);

  useEffect(() => {
    // Animate social proof items with staggered timing
    starAnimations.forEach((anim, index) => {
      // Use setTimeout for staggered animations instead of delay
      setTimeout(() => {
        anim.value = withTiming(1, { duration: 300 });
      }, index * 100);
    });

    // Animate tip button with pulse
    tipButtonAnimation.value = withRepeat(
      withTiming(1, { duration: 2000 }),
      -1,
      true
    );


    // Auto-rotate testimonials
    const interval = setInterval(() => {
      setCurrentTestimonial((prev) => (prev + 1) % TESTIMONIALS.length);
    }, 4000);

    return () => clearInterval(interval);
  }, []);

  // Get current user's Supabase ID and recipient's Supabase ID
  useEffect(() => {
    const loadUserIds = async () => {
      if (!user?.id) return;
      
      try {
        // Get current user's Supabase ID
        const { data: currentUser, error: currentUserError } = await supabase
          .from('users')
          .select('id')
          .eq('privy_user_id', user.id)
          .single();
        
        if (currentUserError || !currentUser) {
          console.error('Failed to find current user:', currentUserError);
          return;
        }
        
        setCurrentUserId(currentUser.id);
        
        // First try userProfile.id as Supabase ID, then as Privy ID
        let recipientId = userProfile.id;
        
        // Check if userProfile.id is already a Supabase ID
        const { data: directRecipient, error: directError } = await supabase
          .from('users')
          .select('id')
          .eq('id', userProfile.id)
          .single();
        
        if (directRecipient) {
          // userProfile.id is already a Supabase ID
          setRecipientSupabaseId(userProfile.id);
        } else {
          // Try as Privy ID
          const { data: recipient, error: recipientError } = await supabase
            .from('users')
            .select('id')
            .eq('privy_user_id', userProfile.id)
            .single();
          
          if (recipientError || !recipient) {
            console.error('Failed to find recipient user by Privy ID:', recipientError);
            return;
          }
          
          setRecipientSupabaseId(recipient.id);
        }
      } catch (error) {
        console.error('Failed to load user IDs:', error);
      }
    };
    
    loadUserIds();
  }, [user?.id, userProfile.id]);

  const getReputationLevel = (score: number = 0) => {
    if (score >= 90) return { level: 'Legendary', color: '#FFD700', icon: 'trophy' };
    if (score >= 70) return { level: 'Expert', color: '#9945FF', icon: 'star' };
    if (score >= 50) return { level: 'Professional', color: '#14F195', icon: 'checkmark-circle' };
    if (score >= 30) return { level: 'Skilled', color: '#FF8C42', icon: 'medal' };
    return { level: 'Rising', color: '#6BCF7F', icon: 'trending-up' };
  };

  const handleTipSent = (amount: number, emoji: string, transactionHash?: string) => {
    if (onTip) {
      onTip(userProfile.id, amount);
    }
    Alert.alert('Tip Sent!', `You sent ${amount.toLocaleString()} BONK to ${userProfile.username}!`);
  };

  const reputationInfo = getReputationLevel(userProfile.reputation_score);

  const renderStar = (index: number) => {
    const animation = starAnimations[index];
    
    const animatedStyle = useAnimatedStyle(() => {
      const scale = interpolate(animation.value, [0, 1], [0.5, 1]);
      const opacity = interpolate(animation.value, [0, 1], [0.3, 1]);
      
      return {
        transform: [{ scale }],
        opacity,
      };
    });

    // Check if star should be active based on reputation score
    const score = userProfile.reputation_score || 0;
    const stars = Math.min(Math.ceil(score / 20), 5);
    const isActive = index < stars;

    return (
      <Animated.View key={index} style={animatedStyle}>
        <Ionicons 
          name="star" 
          size={20} 
          color={isActive ? '#FFD700' : 'rgba(255, 255, 255, 0.3)'} 
        />
      </Animated.View>
    );
  };


  const tipButtonAnimatedStyle = useAnimatedStyle(() => {
    const scale = interpolate(tipButtonAnimation.value, [0, 1], [1, 1.05]);
    return {
      transform: [{ scale }],
    };
  });

  return (
    <View style={[styles.card, { backgroundColor: 'rgba(25, 30, 50, 0.95)' }]}>
      <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0, 0, 0, 0.3)' }]} />
      
      <View style={styles.content}>
        {/* Header */}
        <View style={styles.header}>
          <View style={[styles.headerIcon, { backgroundColor: reputationInfo.color }]}>
            <Ionicons name={reputationInfo.icon as any} size={24} color="#FFFFFF" />
          </View>
          <View style={styles.headerText}>
            <Text style={styles.headerTitle}>Social Proof</Text>
            <Text style={styles.headerSubtitle}>Reputation & reviews</Text>
          </View>
        </View>

        {/* Reputation Score */}
        <View style={styles.section}>
          <View style={styles.reputationContainer}>
            <View style={[styles.reputationCard, { backgroundColor: reputationInfo.color + '20' }]}>
              <View style={styles.reputationHeader}>
                <Text style={styles.reputationScore}>{userProfile.reputation_score || 0}</Text>
                <View style={styles.reputationInfo}>
                  <Text style={[styles.reputationLevel, { color: reputationInfo.color }]}>
                    {reputationInfo.level}
                  </Text>
                  <View style={styles.starsContainer}>
                    {Array.from({ length: 5 }).map((_, index) => renderStar(index))}
                  </View>
                </View>
              </View>
              <Text style={styles.reputationDescription}>
                Based on {Math.floor((userProfile.reputation_score || 0) / 10)} completed collaborations
              </Text>
            </View>
          </View>
        </View>

        {/* BONK Tip Section */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Send a Tip</Text>
          <Animated.View style={[styles.tipContainer, tipButtonAnimatedStyle]}>
            <Pressable
              style={styles.tipButton}
              onPress={() => {
                if (!currentUserId || !recipientSupabaseId) {
                  Alert.alert('Error', 'Unable to send tip at this time');
                  return;
                }
                setShowTipModal(true);
              }}
            >
              <View style={[styles.tipButtonInner, { backgroundColor: '#FFD700' }]}>
                <View style={styles.tipButtonContent}>
                  <Image 
                    source={{ uri: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I' }}
                    style={{ width: 24, height: 24, borderRadius: 12 }}
                  />
                  <Text style={styles.tipButtonText}>Send BONK Tip</Text>
                </View>
              </View>
            </Pressable>
          </Animated.View>

        </View>

        {/* Testimonials */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>What People Say</Text>
          <View style={styles.testimonialContainer}>
            <View style={[styles.testimonialCard, { backgroundColor: 'rgba(255, 255, 255, 0.08)' }]}>
              <Text style={styles.testimonialText}>
                "{TESTIMONIALS[currentTestimonial].text}"
              </Text>
              <View style={styles.testimonialAuthor}>
                <Text style={styles.authorName}>{TESTIMONIALS[currentTestimonial].author}</Text>
                <Text style={styles.authorRole}>{TESTIMONIALS[currentTestimonial].role}</Text>
              </View>
              <View style={styles.testimonialStars}>
                {Array.from({ length: TESTIMONIALS[currentTestimonial].rating }).map((_, i) => (
                  <Ionicons key={i} name="star" size={12} color="#FFD700" />
                ))}
              </View>
            </View>
          </View>
        </View>

      </View>
      
      <TipModal
        visible={showTipModal}
        onClose={() => setShowTipModal(false)}
        senderId={currentUserId || ''}
        recipientId={recipientSupabaseId || ''}
        recipientName={userProfile.username}
        chatId={`profile_${userProfile.id}`}
        onTipSent={handleTipSent}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    borderRadius: 24,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    overflow: 'hidden',
  },
  content: {
    flex: 1,
    padding: 20,
    justifyContent: 'space-between',
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 16,
  },
  headerIcon: {
    width: 48,
    height: 48,
    borderRadius: 24,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
  },
  headerText: {
    flex: 1,
  },
  headerTitle: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  headerSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  section: {
    marginBottom: 16,
  },
  sectionTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  reputationContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  reputationCard: {
    padding: 20,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  reputationHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  reputationScore: {
    fontSize: 36,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginRight: 16,
  },
  reputationInfo: {
    flex: 1,
  },
  reputationLevel: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    marginBottom: 4,
  },
  starsContainer: {
    flexDirection: 'row',
    gap: 4,
  },
  reputationDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.7)',
  },
  tipContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  tipButton: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  tipButtonInner: {
    padding: 12,
    alignItems: 'center',
  },
  tipButtonContent: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  tipButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  tipButtonSubtext: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.9)',
  },
  testimonialContainer: {
    borderRadius: 16,
    overflow: 'hidden',
  },
  testimonialCard: {
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  testimonialText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    fontStyle: 'italic',
    marginBottom: 12,
    lineHeight: 22,
  },
  testimonialAuthor: {
    marginBottom: 8,
  },
  authorName: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  authorRole: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  testimonialStars: {
    flexDirection: 'row',
    gap: 2,
  },
});