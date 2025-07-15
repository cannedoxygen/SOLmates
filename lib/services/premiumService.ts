import { supabase } from '../supabase/client';
import { AnalyticsService } from './analyticsService';

export type SubscriptionStatus = 'free' | 'premium' | 'expired';

export interface UserSubscription {
  id: string;
  user_id: string;
  subscription_type: 'weekly' | 'monthly' | 'yearly' | 'super_swipes';
  status: SubscriptionStatus;
  bonk_amount_paid: number;
  usd_amount: number;
  transaction_hash?: string;
  expires_at?: string;
  created_at: string;
  updated_at: string;
}

export interface UserLimits {
  daily_swipes_remaining: number;
  daily_super_swipes_remaining: number;
  is_premium: boolean;
  can_see_who_liked: boolean;
  has_priority_discovery: boolean;
}

export interface PremiumProduct {
  id: string;
  name: string;
  description: string;
  usd_price: number;
  bonk_price: number;
  type: 'subscription' | 'consumable';
  duration_days?: number;
  benefits: string[];
}

// Current BONK price: ~$0.000022 USD
const BONK_USD_RATE = 0.000022;

export const PREMIUM_PRODUCTS: PremiumProduct[] = [
  {
    id: 'premium_weekly',
    name: 'Solmates Pro Weekly',
    description: 'Try premium features for a week',
    usd_price: 3.00,
    bonk_price: Math.round(3.00 / BONK_USD_RATE), // ~136,000 BONK
    type: 'subscription',
    duration_days: 7,
    benefits: [
      'Unlimited swipes',
      '1 super swipe per day',
      'See who liked you',
      'Priority in discovery',
      'Ad-free experience'
    ]
  },
  {
    id: 'premium_monthly',
    name: 'Solmates Pro Monthly',
    description: 'Unlimited swipes, priority discovery, and premium features',
    usd_price: 10.00,
    bonk_price: Math.round(10.00 / BONK_USD_RATE), // ~450,000 BONK
    type: 'subscription',
    duration_days: 30,
    benefits: [
      'Unlimited swipes',
      '1 super swipe per day',
      'See who liked you',
      'Priority in discovery',
      'Ad-free experience'
    ]
  },
  {
    id: 'premium_yearly',
    name: 'Solmates Pro Yearly',
    description: 'Best value - Save 20% with yearly subscription',
    usd_price: 96.00, // $8/month when paid yearly (20% off)
    bonk_price: Math.round(96.00 / BONK_USD_RATE),
    type: 'subscription',
    duration_days: 365,
    benefits: [
      'Unlimited swipes',
      '1 super swipe per day',
      'See who liked you',
      'Priority in discovery',
      'Ad-free experience',
      'Save $24 per year'
    ]
  },
  {
    id: 'super_swipes_1',
    name: '1 Super Swipe',
    description: 'Stand out with a super swipe',
    usd_price: 1.00,
    bonk_price: Math.round(1.00 / BONK_USD_RATE), // ~45,000 BONK
    type: 'consumable',
    benefits: ['1 Super Swipe']
  },
  {
    id: 'super_swipes_5',
    name: '5 Super Swipes',
    description: 'Best value super swipe pack',
    usd_price: 4.00,
    bonk_price: Math.round(4.00 / BONK_USD_RATE), // ~180,000 BONK
    type: 'consumable',
    benefits: ['5 Super Swipes', '20% savings']
  },
  {
    id: 'super_swipes_15',
    name: '15 Super Swipes',
    description: 'Maximum value super swipe pack',
    usd_price: 10.00,
    bonk_price: Math.round(10.00 / BONK_USD_RATE), // ~450,000 BONK
    type: 'consumable',
    benefits: ['15 Super Swipes', '33% savings']
  }
];

export class PremiumService {
  
  /**
   * Get user's current subscription status and limits
   */
  static async getUserLimits(userId: string): Promise<UserLimits> {
    try {
      const today = new Date().toISOString().split('T')[0];
      
      // Check for active premium subscription (weekly, monthly, or yearly)
      const { data: subscription, error: subError } = await supabase
        .from('user_subscriptions')
        .select('*')
        .eq('user_id', userId)
        .in('subscription_type', ['weekly', 'monthly', 'yearly'])
        .eq('status', 'premium')
        .gte('expires_at', new Date().toISOString())
        .maybeSingle(); // Use maybeSingle instead of single to avoid error when no row exists

      console.log('🔍 Premium check detailed:', {
        userId,
        hasError: !!subError,
        errorCode: subError?.code,
        errorMessage: subError?.message,
        hasSubscription: !!subscription,
        subscriptionData: subscription,
        error: subError
      });
      
      // Only consider premium if we actually have a subscription record
      const isPremium = !subError && !!subscription && subscription !== null;

      // Get today's usage from analytics
      const { data: todayEvents, error: eventsError } = await supabase
        .from('analytics_events')
        .select('event_type')
        .eq('user_id', userId)
        .gte('created_at', `${today}T00:00:00.000Z`)
        .lt('created_at', `${today}T23:59:59.999Z`);

      const todaySwipes = todayEvents?.filter(e => 
        ['swipe_left', 'swipe_right'].includes(e.event_type)
      ).length || 0;

      const todaySuperSwipes = todayEvents?.filter(e => 
        e.event_type === 'super_swipe'
      ).length || 0;

      // Get available super swipes from purchases
      const { data: superSwipePurchases, error: purchaseError } = await supabase
        .from('user_subscriptions')
        .select('bonk_amount_paid, created_at')
        .eq('user_id', userId)
        .eq('subscription_type', 'super_swipes')
        .eq('status', 'premium');

      let availableSuperSwipes = 0;
      if (!purchaseError && superSwipePurchases && superSwipePurchases.length > 0) {
        // Calculate total purchased super swipes minus used ones
        const totalPurchased = superSwipePurchases.reduce((total, purchase) => {
          // Determine super swipes based on BONK amount
          if (purchase.bonk_amount_paid >= 450000) return total + 15;
          if (purchase.bonk_amount_paid >= 180000) return total + 5;
          return total + 1;
        }, 0);
        
        // Get total used super swipes since first purchase
        const firstPurchase = superSwipePurchases[0]?.created_at;
        if (firstPurchase) {
          const { data: usedSwipes } = await supabase
            .from('analytics_events')
            .select('id')
            .eq('user_id', userId)
            .eq('event_type', 'super_swipe')
            .gte('created_at', firstPurchase);
          
          const totalUsed = usedSwipes?.length || 0;
          availableSuperSwipes = Math.max(0, totalPurchased - totalUsed);
        } else {
          availableSuperSwipes = totalPurchased;
        }
      }
      
      console.log('🔍 Super swipes calculation:', {
        hasPurchaseError: !!purchaseError,
        purchasesCount: superSwipePurchases?.length || 0,
        superSwipePurchases: superSwipePurchases,
        availableSuperSwipes,
        todaySuperSwipes,
        totalPurchased: superSwipePurchases?.reduce((total, purchase) => {
          if (purchase.bonk_amount_paid >= 450000) return total + 15;
          if (purchase.bonk_amount_paid >= 180000) return total + 5;
          return total + 1;
        }, 0) || 0
      });

      const result = {
        daily_swipes_remaining: isPremium ? Math.max(0, 100 - todaySwipes) : Math.max(0, 20 - todaySwipes),
        daily_super_swipes_remaining: isPremium 
          ? Math.max(0, 1 - todaySuperSwipes) // Premium users get 1 super swipe per day
          : Math.max(0, 0 - todaySuperSwipes) + availableSuperSwipes, // Free users get 0 + purchased
        is_premium: isPremium,
        can_see_who_liked: isPremium,
        has_priority_discovery: isPremium
      };

      console.log('🔍 getUserLimits result:', {
        userId,
        isPremium,
        todaySwipes,
        todaySuperSwipes,
        result
      });

      return result;
    } catch (error) {
      console.error('❌ Failed to get user limits:', error);
      // Return safe defaults for non-premium user
      return {
        daily_swipes_remaining: 20,
        daily_super_swipes_remaining: 0,
        is_premium: false,
        can_see_who_liked: false,
        has_priority_discovery: false
      };
    }
  }


  /**
   * Check if user can perform an action
   */
  static async canPerformAction(
    userId: string, 
    action: 'swipe' | 'super_swipe'
  ): Promise<boolean> {
    const limits = await this.getUserLimits(userId);
    
    if (action === 'swipe') {
      return limits.daily_swipes_remaining > 0;
    }
    
    if (action === 'super_swipe') {
      return limits.daily_super_swipes_remaining > 0;
    }
    
    return false;
  }

  /**
   * Process BONK payment for premium features
   */
  static async processBonkPayment(
    userId: string,
    productId: string,
    bonkTransactionHash: string,
    bonkAmount: number
  ): Promise<UserSubscription> {
    try {
      console.log('💰 Processing BONK payment:', {
        userId,
        productId,
        bonkAmount,
        transactionHash: bonkTransactionHash
      });

      const product = PREMIUM_PRODUCTS.find(p => p.id === productId);
      if (!product) {
        throw new Error('Product not found');
      }

      // Verify BONK amount matches product price (with 5% tolerance for price fluctuations)
      const expectedBonk = product.bonk_price;
      const tolerance = expectedBonk * 0.05;
      if (bonkAmount < expectedBonk - tolerance) {
        throw new Error('Insufficient BONK payment');
      }

      // Create subscription record
      const subscriptionData = {
        user_id: userId,
        subscription_type: product.type === 'subscription' 
          ? (product.id === 'premium_weekly' ? 'weekly' : product.id === 'premium_yearly' ? 'yearly' : 'monthly')
          : 'super_swipes',
        status: 'premium' as SubscriptionStatus,
        bonk_amount_paid: bonkAmount,
        usd_amount: product.usd_price,
        transaction_hash: bonkTransactionHash,
        expires_at: product.duration_days 
          ? new Date(Date.now() + product.duration_days * 24 * 60 * 60 * 1000).toISOString()
          : null,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      };

      const { data: subscription, error } = await supabase
        .from('user_subscriptions')
        .insert([subscriptionData])
        .select()
        .single();

      if (error) throw error;

      // Track purchase analytics
      AnalyticsService.trackEvent(userId, 'wallet_connected', {
        product_id: productId,
        usd_amount: product.usd_price,
        bonk_amount: bonkAmount,
        transaction_hash: bonkTransactionHash
      });

      console.log('✅ BONK payment processed:', subscription.id);
      return subscription;
    } catch (error) {
      console.error('❌ Failed to process BONK payment:', error);
      throw error;
    }
  }

  /**
   * Get user's purchase history
   */
  static async getPurchaseHistory(userId: string): Promise<UserSubscription[]> {
    try {
      const { data: subscriptions, error } = await supabase
        .from('user_subscriptions')
        .select('*')
        .eq('user_id', userId)
        .order('created_at', { ascending: false });

      if (error) throw error;

      return subscriptions || [];
    } catch (error) {
      console.error('❌ Failed to get purchase history:', error);
      return [];
    }
  }

  /**
   * Get users who liked current user (premium feature)
   */
  static async getWhoLikedMe(userId: string): Promise<string[]> {
    const limits = await this.getUserLimits(userId);
    
    if (!limits.can_see_who_liked) {
      throw new Error('Premium feature: Upgrade to see who liked you');
    }

    try {
      const { data: likes, error } = await supabase
        .from('swipes')
        .select('swiper_id')
        .eq('swiped_id', userId)
        .in('direction', ['right', 'super']);

      if (error) throw error;

      return likes?.map(like => like.swiper_id) || [];
    } catch (error) {
      console.error('❌ Failed to get who liked me:', error);
      return [];
    }
  }

  /**
   * Check if subscription is expired and update status
   */
  static async checkExpiredSubscriptions(): Promise<void> {
    try {
      const { error } = await supabase
        .from('user_subscriptions')
        .update({ status: 'expired' })
        .eq('status', 'premium')
        .lt('expires_at', new Date().toISOString());

      if (error) throw error;

      console.log('✅ Updated expired subscriptions');
    } catch (error) {
      console.error('❌ Failed to check expired subscriptions:', error);
    }
  }

  /**
   * Debug method to clear test super swipe purchases
   */
  static async clearTestSuperSwipes(userId: string): Promise<void> {
    try {
      console.log('🧹 Clearing test super swipe purchases for user:', userId);
      
      // First, show what exists
      const { data: existing } = await supabase
        .from('user_subscriptions')
        .select('*')
        .eq('user_id', userId)
        .eq('subscription_type', 'super_swipes');
      
      console.log('📋 Existing super swipe purchases:', existing);
      
      // Delete test purchases (those with mock transaction hashes or zero amounts)
      const { error } = await supabase
        .from('user_subscriptions')
        .delete()
        .eq('user_id', userId)
        .eq('subscription_type', 'super_swipes')
        .or('transaction_hash.like.mock_%,transaction_hash.is.null,usd_amount.eq.0,bonk_amount_paid.eq.0');

      if (error) throw error;

      console.log('✅ Cleared test super swipe purchases');
    } catch (error) {
      console.error('❌ Failed to clear test super swipes:', error);
    }
  }
}