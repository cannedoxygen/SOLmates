import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Pressable,
  Alert,
  ActivityIndicator,
  Modal,
} from 'react-native';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy, useEmbeddedSolanaWallet } from '@privy-io/expo';
import { Ionicons } from '@expo/vector-icons';
import { PremiumService, PREMIUM_PRODUCTS, type UserLimits, type PremiumProduct } from '../lib/services/premiumService';
import { SolPaymentService } from '../lib/services/solPaymentService';

export default function PremiumScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const { wallets } = useEmbeddedSolanaWallet();
  
  const [userLimits, setUserLimits] = useState<UserLimits | null>(null);
  const [loading, setLoading] = useState(true);
  const [purchasing, setPurchasing] = useState<string | null>(null);
  const [selectedPlan, setSelectedPlan] = useState<'weekly' | 'monthly' | 'yearly'>('monthly');
  const [showPurchaseModal, setShowPurchaseModal] = useState(false);
  const [selectedProduct, setSelectedProduct] = useState<PremiumProduct | null>(null);

  useEffect(() => {
    if (user) {
      loadUserLimits();
    } else {
      setLoading(false);
    }
  }, [user]);

  const loadUserLimits = async () => {
    if (!user) return;
    
    try {
      console.log('📊 Loading user limits for:', user.id);
      
      // Clear test super swipe data first (temporary debug)
      await PremiumService.clearTestSuperSwipes(user.id);
      
      const limits = await PremiumService.getUserLimits(user.id);
      console.log('📊 User limits loaded:', limits);
      setUserLimits(limits);
    } catch (error) {
      console.error('Failed to load user limits:', error);
      // Set default non-premium limits on error
      setUserLimits({
        daily_swipes_remaining: 20,
        daily_super_swipes_remaining: 0,
        is_premium: false,
        can_see_who_liked: false,
        has_priority_discovery: false
      });
    } finally {
      setLoading(false);
    }
  };

  const handlePurchase = async (product: PremiumProduct) => {
    if (!user) return;

    const walletAddress = wallets?.[0]?.address;
    if (!walletAddress) {
      Alert.alert('Wallet Error', 'Please connect your wallet to make purchases.');
      return;
    }

    try {
      // Check if user has sufficient SOL balance
      const hasSufficientBalance = await SolPaymentService.checkSufficientBalance(user.id, product.usd_price, walletAddress);
      
      if (!hasSufficientBalance) {
        const requiredSol = SolPaymentService.usdToSol(product.usd_price);
        Alert.alert(
          'Insufficient SOL Balance',
          `You need ${requiredSol.toFixed(4)} SOL (~$${product.usd_price.toFixed(2)}) to complete this purchase.\n\nPlease add SOL to your wallet and try again.`,
          [{ text: 'OK', style: 'default' }]
        );
        return;
      }

      // Show custom purchase modal
      setSelectedProduct(product);
      setShowPurchaseModal(true);
    } catch (error) {
      console.error('Failed to check balance:', error);
      Alert.alert('Error', 'Failed to check wallet balance. Please try again.');
    }
  };

  const processPurchase = async (product: PremiumProduct) => {
    if (!user) return;
    
    const walletAddress = wallets?.[0]?.address;
    if (!walletAddress) {
      Alert.alert('Wallet Error', 'Please connect your wallet to make purchases.');
      return;
    }
    
    setPurchasing(product.id);
    try {
      console.log('💰 Processing SOL payment for:', product.name);
      
      // Process SOL payment
      const payment = await SolPaymentService.processPayment(
        user.id,
        product.id,
        product.usd_price,
        wallets?.[0], // Pass the actual wallet instance
        walletAddress // Pass the wallet address
      );
      
      console.log('✅ Payment completed:', payment.transaction_hash);
      
      // Create subscription record using the SOL transaction hash
      await PremiumService.processBonkPayment(
        user.id,
        product.id,
        payment.transaction_hash || 'no_hash',
        product.bonk_price // Keep BONK price for record compatibility
      );
      
      const solAmount = SolPaymentService.usdToSol(product.usd_price);
      
      Alert.alert(
        'Payment Successful! 🎉',
        `${solAmount.toFixed(4)} SOL payment completed!\n\nYou've unlocked ${product.name}!\n\n${product.benefits.join('\n')}`,
        [{ text: 'Awesome!', onPress: loadUserLimits }]
      );
      
    } catch (error) {
      console.error('❌ SOL payment failed:', error);
      
      let errorMessage = 'Payment failed. Please try again.';
      
      if (error.message?.includes('Insufficient SOL')) {
        errorMessage = 'Insufficient SOL balance. Please add SOL to your wallet.';
      } else if (error.message?.includes('User rejected')) {
        errorMessage = 'Payment was cancelled.';
      } else if (error.message?.includes('wallet not connected')) {
        errorMessage = 'Please connect your wallet and try again.';
      }
      
      Alert.alert('Payment Failed', errorMessage);
    } finally {
      setPurchasing(null);
    }
  };


  const renderFeatureIcon = (feature: string) => {
    const iconMap: { [key: string]: string } = {
      'Unlimited swipes': 'infinite-outline',
      '5 super swipes per week': 'star-outline',
      '1 Super Swipe': 'star-outline',
      '5 Super Swipes': 'star-outline',
      '15 Super Swipes': 'star-outline',
      'See who liked you': 'eye-outline',
      'Priority in discovery': 'trending-up-outline',
      'Ad-free experience': 'shield-checkmark-outline',
      '20% savings': 'pricetag-outline',
      '33% savings': 'pricetag-outline'
    };
    
    return iconMap[feature] || 'checkmark-circle-outline';
  };

  const renderProductCard = (product: PremiumProduct) => {
    const isSubscription = product.type === 'subscription';
    const isPurchasing = purchasing === product.id;
    
    return (
      <View key={product.id} style={[
        styles.productCard,
        styles.subscriptionCard // Apply subscription card styling to all cards
      ]}>
        {product.id === 'premium_monthly' && (
          <View style={styles.popularBadge}>
            <Text style={styles.popularText}>MOST POPULAR</Text>
          </View>
        )}
        
        <View style={styles.productHeader}>
          <Text style={[styles.productName, styles.subscriptionName]}>
            {product.name}
          </Text>
          <View style={styles.priceSection}>
            <View style={styles.priceContainer}>
              <Text style={[styles.usdPrice, styles.subscriptionPrice]}>
                ${product.usd_price.toFixed(2)}
              </Text>
              {isSubscription && (
                <Text style={styles.pricePeriod}>
                  /{product.id === 'premium_yearly' ? 'year' : product.id === 'premium_weekly' ? 'week' : 'month'}
                </Text>
              )}
            </View>
            {product.id === 'premium_yearly' && (
              <Text style={styles.monthlyEquivalent}>($8/month)</Text>
            )}
          </View>
        </View>
        
        <Text style={styles.productDescription}>{product.description}</Text>
        
        <View style={styles.benefitsList}>
          {product.benefits.map((benefit, index) => (
            <View key={index} style={styles.benefitRow}>
              <Ionicons 
                name={renderFeatureIcon(benefit) as any} 
                size={18} 
                color='#9945FF' // Use purple color for all cards
              />
              <Text style={styles.benefitText}>{benefit}</Text>
            </View>
          ))}
        </View>
        
        <Pressable
          style={[
            styles.purchaseButton,
            styles.subscriptionButton, // Apply subscription button styling to all
            isPurchasing && styles.purchaseButtonDisabled
          ]}
          onPress={() => handlePurchase(product)}
          disabled={isPurchasing}
        >
          {isPurchasing ? (
            <ActivityIndicator size="small" color="#FFFFFF" />
          ) : (
            <>
              <Text style={[styles.purchaseButtonText, styles.subscriptionButtonText]}>
                Pay ${product.usd_price.toFixed(2)}
              </Text>
            </>
          )}
        </Pressable>
      </View>
    );
  };

  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#9945FF" />
          <Text style={styles.loadingText}>Loading premium options...</Text>
        </View>
      </View>
    );
  }

  const weeklyProduct = PREMIUM_PRODUCTS.find(p => p.id === 'premium_weekly');
  const monthlyProduct = PREMIUM_PRODUCTS.find(p => p.id === 'premium_monthly');
  const yearlyProduct = PREMIUM_PRODUCTS.find(p => p.id === 'premium_yearly');
  const consumableProducts = PREMIUM_PRODUCTS.filter(p => p.type === 'consumable');
  
  const currentSubscriptionProduct = selectedPlan === 'weekly' ? weeklyProduct : 
                                   selectedPlan === 'yearly' ? yearlyProduct : monthlyProduct;

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <View style={[styles.header, { paddingTop: insets.top + 10 }]}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>Premium Features</Text>
        <View style={styles.backButton} />
      </View>

      <ScrollView
        style={styles.content}
        contentContainerStyle={styles.contentContainer}
        showsVerticalScrollIndicator={false}
      >
        {/* Current Status */}
        {userLimits && (
          <View style={styles.statusCard}>
            <Text style={styles.statusTitle}>
              {userLimits.is_premium ? '💎 Premium Active' : '🆓 Free Plan'}
            </Text>
            <View style={styles.statusStats}>
              <View style={styles.statItem}>
                <Text style={styles.statNumber}>
                  {userLimits.is_premium && userLimits.daily_swipes_remaining > 50 
                    ? '∞' 
                    : userLimits.daily_swipes_remaining}
                </Text>
                <Text style={styles.statLabel}>Swipes Left</Text>
              </View>
              <View style={styles.statItem}>
                <Text style={styles.statNumber}>{userLimits.daily_super_swipes_remaining}</Text>
                <Text style={styles.statLabel}>Super Swipes</Text>
              </View>
            </View>
          </View>
        )}

        {/* Subscription */}
        {currentSubscriptionProduct && (
          <View style={styles.section}>
            <View style={styles.subscriptionHeader}>
              <Text style={styles.sectionTitle}>
                {userLimits?.is_premium ? 'Your Premium Subscription' : 'Upgrade to Premium'}
              </Text>
              
              {/* Pricing Toggle */}
              <View style={styles.pricingToggle}>
                <Pressable
                  style={[
                    styles.toggleOption,
                    selectedPlan === 'weekly' && styles.toggleOptionActive
                  ]}
                  onPress={() => setSelectedPlan('weekly')}
                >
                  <Text style={[
                    styles.toggleText,
                    selectedPlan === 'weekly' && styles.toggleTextActive
                  ]}>Weekly</Text>
                </Pressable>
                
                <Pressable
                  style={[
                    styles.toggleOption,
                    selectedPlan === 'monthly' && styles.toggleOptionActive
                  ]}
                  onPress={() => setSelectedPlan('monthly')}
                >
                  <Text style={[
                    styles.toggleText,
                    selectedPlan === 'monthly' && styles.toggleTextActive
                  ]}>Monthly</Text>
                  {selectedPlan === 'monthly' && (
                    <View style={styles.saveBadge}>
                      <Text style={styles.saveBadgeText}>-23%</Text>
                    </View>
                  )}
                </Pressable>
                
                <Pressable
                  style={[
                    styles.toggleOption,
                    selectedPlan === 'yearly' && styles.toggleOptionActive
                  ]}
                  onPress={() => setSelectedPlan('yearly')}
                >
                  <Text style={[
                    styles.toggleText,
                    selectedPlan === 'yearly' && styles.toggleTextActive
                  ]}>Yearly</Text>
                  {selectedPlan === 'yearly' && (
                    <View style={styles.saveBadge}>
                      <Text style={styles.saveBadgeText}>-20%</Text>
                    </View>
                  )}
                </Pressable>
              </View>
            </View>
            
            {renderProductCard(currentSubscriptionProduct)}
          </View>
        )}

        {/* Super Swipes */}
        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Super Swipes</Text>
          <Text style={styles.sectionSubtitle}>
            Stand out and get 3x more matches with Super Swipes
          </Text>
          
          <View style={styles.productsGrid}>
            {consumableProducts.map(renderProductCard)}
          </View>
        </View>

        {/* Benefits Explanation */}
        <View style={styles.infoSection}>
          <Text style={styles.infoTitle}>Why Premium?</Text>
          <View style={styles.infoList}>
            <View style={styles.infoItem}>
              <Ionicons name="infinite" size={20} color="#9945FF" />
              <Text style={styles.infoText}>
                Unlimited daily swipes to find perfect collaborators
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Ionicons name="star" size={20} color="#9945FF" />
              <Text style={styles.infoText}>
                Super swipes get 3x more response rates
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Ionicons name="trending-up" size={20} color="#9945FF" />
              <Text style={styles.infoText}>
                Priority discovery shows your profile first
              </Text>
            </View>
            <View style={styles.infoItem}>
              <Ionicons name="shield-checkmark" size={20} color="#9945FF" />
              <Text style={styles.infoText}>
                Secure payments and seamless upgrades
              </Text>
            </View>
          </View>
        </View>

        <View style={styles.bottomPadding} />
      </ScrollView>

      {/* Custom Purchase Modal */}
      {showPurchaseModal && selectedProduct && (
        <Modal
          visible={showPurchaseModal}
          transparent={true}
          animationType="fade"
          onRequestClose={() => setShowPurchaseModal(false)}
        >
          <View style={styles.modalOverlay}>
            <View style={styles.purchaseModal}>
              <View style={styles.modalHeader}>
                <Ionicons name="diamond" size={32} color="#9945FF" />
                <Text style={styles.modalTitle}>Confirm Purchase</Text>
              </View>

              <View style={styles.productInfo}>
                <Text style={styles.productName}>{selectedProduct.name}</Text>
                <Text style={styles.productDescription}>{selectedProduct.description}</Text>
              </View>

              <View style={styles.priceInfo}>
                <Text style={styles.priceLabel}>Price</Text>
                <Text style={styles.priceAmount}>
                  {SolPaymentService.usdToSol(selectedProduct.usd_price).toFixed(4)} SOL
                </Text>
                <Text style={styles.priceUsd}>
                  ~${selectedProduct.usd_price.toFixed(2)} USD
                </Text>
              </View>

              <View style={styles.benefitsSection}>
                <Text style={styles.benefitsTitle}>What you'll get:</Text>
                {selectedProduct.benefits.map((benefit, index) => (
                  <View key={index} style={styles.benefitRow}>
                    <Ionicons name="checkmark-circle" size={16} color="#14F195" />
                    <Text style={styles.benefitText}>{benefit}</Text>
                  </View>
                ))}
              </View>


              <View style={styles.modalActions}>
                <Pressable 
                  style={[styles.modalButton, styles.cancelButton]}
                  onPress={() => setShowPurchaseModal(false)}
                >
                  <Text style={styles.cancelButtonText}>Cancel</Text>
                </Pressable>
                
                <Pressable 
                  style={[styles.modalButton, styles.confirmButton]}
                  onPress={() => {
                    setShowPurchaseModal(false);
                    processPurchase(selectedProduct);
                  }}
                >
                  <Ionicons name="diamond" size={16} color="#FFFFFF" />
                  <Text style={styles.confirmButtonText}>
                    Pay {SolPaymentService.usdToSol(selectedProduct.usd_price).toFixed(4)} SOL
                  </Text>
                </Pressable>
              </View>
            </View>
          </View>
        </Modal>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 16,
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
  headerTitle: {
    fontSize: 20,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  content: {
    flex: 1,
  },
  contentContainer: {
    padding: 24,
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
  statusCard: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 24,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  statusTitle: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    textAlign: 'center',
    marginBottom: 16,
  },
  statusStats: {
    flexDirection: 'row',
    justifyContent: 'space-around',
  },
  statItem: {
    alignItems: 'center',
  },
  statNumber: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#9945FF',
  },
  statLabel: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginTop: 4,
  },
  section: {
    marginBottom: 32,
  },
  sectionTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  sectionSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 16,
  },
  productsGrid: {
    gap: 16,
  },
  productCard: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 20,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
    position: 'relative',
  },
  subscriptionCard: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderColor: 'rgba(153, 69, 255, 0.3)',
    borderWidth: 2,
  },
  popularBadge: {
    position: 'absolute',
    top: -8,
    left: 20,
    backgroundColor: '#9945FF',
    paddingHorizontal: 12,
    paddingVertical: 4,
    borderRadius: 12,
  },
  popularText: {
    fontSize: 10,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  productHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    marginBottom: 8,
    marginTop: 8,
  },
  productName: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    flex: 1,
  },
  subscriptionName: {
    color: '#9945FF',
  },
  priceSection: {
    alignItems: 'flex-end',
  },
  priceContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    flexWrap: 'wrap',
  },
  usdPrice: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  subscriptionPrice: {
    color: '#9945FF',
  },
  pricePeriod: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginLeft: 2,
  },
  productDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 12,
  },
  bonkPrice: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 16,
  },
  bonkPriceText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFD700',
    marginLeft: 6,
  },
  benefitsList: {
    marginBottom: 20,
  },
  benefitRow: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 8,
  },
  benefitText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    marginLeft: 12,
    flex: 1,
  },
  purchaseButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    borderRadius: 12,
    paddingVertical: 16,
    borderWidth: 1,
    borderColor: '#9945FF',
  },
  subscriptionButton: {
    backgroundColor: '#9945FF',
    borderColor: '#9945FF',
  },
  purchaseButtonDisabled: {
    opacity: 0.5,
  },
  purchaseButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#9945FF',
  },
  subscriptionButtonText: {
    color: '#FFFFFF',
  },
  buttonIcon: {
    marginLeft: 8,
  },
  infoSection: {
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 16,
    padding: 20,
    marginTop: 16,
  },
  infoTitle: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 16,
  },
  infoList: {
    gap: 12,
  },
  infoItem: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  infoText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginLeft: 12,
    flex: 1,
  },
  bottomPadding: {
    height: 40,
  },
  subscriptionHeader: {
    marginBottom: 16,
  },
  pricingToggle: {
    flexDirection: 'row',
    backgroundColor: 'rgba(255, 255, 255, 0.05)',
    borderRadius: 12,
    padding: 4,
    marginTop: 12,
  },
  toggleOption: {
    flex: 1,
    paddingVertical: 12,
    paddingHorizontal: 16,
    borderRadius: 8,
    alignItems: 'center',
    justifyContent: 'center',
    position: 'relative',
  },
  toggleOptionActive: {
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
  },
  toggleText: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: 'rgba(255, 255, 255, 0.6)',
  },
  toggleTextActive: {
    color: '#9945FF',
  },
  saveBadge: {
    position: 'absolute',
    top: -8,
    right: 8,
    backgroundColor: '#14F195',
    paddingHorizontal: 6,
    paddingVertical: 2,
    borderRadius: 8,
  },
  saveBadgeText: {
    fontSize: 10,
    fontFamily: 'Inter-Bold',
    color: '#000000',
  },
  monthlyEquivalent: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#14F195',
    marginLeft: 8,
  },
  modalOverlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.8)',
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  purchaseModal: {
    backgroundColor: '#1A1F3A',
    borderRadius: 24,
    padding: 24,
    width: '100%',
    maxWidth: 380,
    borderWidth: 2,
    borderColor: 'rgba(153, 69, 255, 0.3)',
  },
  modalHeader: {
    alignItems: 'center',
    marginBottom: 20,
  },
  modalTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginTop: 8,
  },
  productInfo: {
    marginBottom: 20,
    alignItems: 'center',
  },
  productName: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#9945FF',
    textAlign: 'center',
    marginBottom: 4,
  },
  productDescription: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
  },
  priceInfo: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 16,
    padding: 16,
    alignItems: 'center',
    marginBottom: 20,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  priceLabel: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 4,
  },
  priceAmount: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 2,
  },
  priceUsd: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#9945FF',
  },
  benefitsSection: {
    marginBottom: 20,
  },
  benefitsTitle: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 12,
  },
  benefitRow: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 8,
  },
  benefitText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    marginLeft: 8,
    flex: 1,
  },
  paymentNote: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    marginBottom: 24,
    fontStyle: 'italic',
  },
  modalActions: {
    flexDirection: 'row',
    gap: 12,
  },
  modalButton: {
    flex: 1,
    paddingVertical: 16,
    paddingHorizontal: 20,
    borderRadius: 12,
    alignItems: 'center',
    justifyContent: 'center',
  },
  cancelButton: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  confirmButton: {
    backgroundColor: '#9945FF',
    flexDirection: 'row',
    gap: 8,
  },
  cancelButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  confirmButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
});