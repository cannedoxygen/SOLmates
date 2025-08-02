import React, { useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Modal,
  Pressable,
  Alert,
  ActivityIndicator,
  TextInput,
  ScrollView,
  KeyboardAvoidingView,
  Platform,
  Image,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useEmbeddedSolanaWallet } from '@privy-io/expo';
import { BonkTippingService, TIP_OPTIONS, type TipOption } from '../lib/services/bonkTippingService';

interface TipModalProps {
  visible: boolean;
  onClose: () => void;
  senderId: string;
  recipientId: string;
  recipientName: string;
  chatId: string;
  onTipSent: (amount: number, emoji: string, transactionHash?: string) => void;
}

export function TipModal({
  visible,
  onClose,
  senderId,
  recipientId,
  recipientName,
  chatId,
  onTipSent
}: TipModalProps) {
  const insets = useSafeAreaInsets();
  const { wallets } = useEmbeddedSolanaWallet();
  const wallet = wallets?.[0]; // Get the first embedded wallet
  
  const [selectedTip, setSelectedTip] = useState<TipOption | null>(null);
  const [customAmount, setCustomAmount] = useState('');
  const [customMessage, setCustomMessage] = useState('');
  const [sending, setSending] = useState(false);
  const [showCustom, setShowCustom] = useState(false);

  // Debug log when visible prop changes
  console.log('💎 TipModal render - visible:', visible, 'senderId:', senderId, 'recipientId:', recipientId);

  const handleTipSelect = (tip: TipOption) => {
    setSelectedTip(tip);
    setShowCustom(false);
    setCustomAmount('');
  };

  const handleCustomTip = () => {
    setShowCustom(true);
    setSelectedTip(null);
  };

  const getCustomTipOption = (): TipOption | null => {
    const amount = parseInt(customAmount);
    if (!amount || amount < 100) return null;
    
    const BONK_USD_RATE = 0.000022;
    return {
      amount,
      usd_value: amount * BONK_USD_RATE,
      emoji: '🐶',
      label: 'Custom',
      description: 'Custom amount'
    };
  };

  const handleSendTip = async () => {
    const tipToSend = showCustom ? getCustomTipOption() : selectedTip;
    
    if (!tipToSend) {
      Alert.alert('Error', 'Please select a tip amount');
      return;
    }

    if (tipToSend.amount < 100) {
      Alert.alert('Error', 'Minimum tip is 100 BONK');
      return;
    }

    Alert.alert(
      'Send BONK Tip',
      `Send ${(tipToSend.amount || 0).toLocaleString()} BONK (~$${(tipToSend.usd_value || 0).toFixed(4)}) to ${recipientName}?`,
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Send Tip',
          onPress: () => processTip(tipToSend)
        }
      ]
    );
  };

  const processTip = async (tip: TipOption) => {
    console.log('💎 TipModal: Starting tip process...', {
      senderId,
      recipientId,
      chatId,
      amount: tip.amount,
      wallet: wallet?.address
    });

    setSending(true);
    try {
      const result = await BonkTippingService.sendTip(
        senderId,
        recipientId,
        chatId,
        tip.amount,
        customMessage || tip.description,
        wallet // Pass the Privy wallet instance
      );

      console.log('💎 TipModal: Tip completed successfully', result);

      onTipSent(tip.amount, tip.emoji, result.transaction_hash);
      onClose();
      
      const isSimulated = result.transaction_hash?.includes('bonk_sim_');
      
      Alert.alert(
        isSimulated ? 'Tip Simulated! 💎' : 'Tip Sent! 🎉',
        `You ${isSimulated ? 'simulated sending' : 'sent'} ${(tip.amount || 0).toLocaleString()} BONK to ${recipientName}!\n\nTransaction: ${result.transaction_hash || 'Processing...'}\n\n${isSimulated ? '(Privy wallet signing will be available soon)' : ''}`,
        [{ text: 'Awesome!' }]
      );
      
      // Reset state
      setSelectedTip(null);
      setCustomAmount('');
      setCustomMessage('');
      setShowCustom(false);
    } catch (error) {
      console.error('💎 TipModal: Tip failed:', error);
      console.error('💎 TipModal: Error details:', JSON.stringify(error, null, 2));
      
      onClose(); // Close modal even on error
      
      // Provide more helpful error messages
      let errorMessage = 'Unknown error occurred';
      if (error.message?.includes('confirm')) {
        errorMessage = 'Transaction was sent but confirmation timed out. Check your transaction history.';
      } else if (error.message?.includes('insufficient')) {
        errorMessage = 'Insufficient balance to complete the transaction.';
      } else if (error.message?.includes('network') || error.message?.includes('timeout')) {
        errorMessage = 'Network error. Transaction may have been sent, please check your transaction history.';
      } else if (error.message) {
        errorMessage = error.message;
      }
      
      Alert.alert(
        'Transaction Status', 
        errorMessage,
        [{ text: 'OK', style: 'default' }]
      );
      
      // Reset state on error too
      setSelectedTip(null);
      setCustomAmount('');
      setCustomMessage('');
      setShowCustom(false);
    } finally {
      console.log('💎 TipModal: Setting sending to false');
      setSending(false);
    }
  };

  const renderTipOption = (tip: TipOption, index: number) => {
    const isSelected = selectedTip?.amount === tip.amount;
    
    return (
      <Pressable
        key={index}
        style={[styles.tipOption, isSelected && styles.tipOptionSelected]}
        onPress={() => handleTipSelect(tip)}
      >
        <Text style={styles.tipEmoji}>{tip.emoji}</Text>
        <Text style={[styles.tipLabel, isSelected && styles.tipLabelSelected]}>
          {tip.label}
        </Text>
        <Text style={[styles.tipUsd, isSelected && styles.tipUsdSelected]}>
          ${(tip.usd_value || 0).toFixed(2)}
        </Text>
        <Text style={[styles.tipAmount, isSelected && styles.tipAmountSelected]}>
          {(tip.amount || 0).toLocaleString()} BONK
        </Text>
      </Pressable>
    );
  };

  // Safety check - don't render if missing required data
  if (!senderId || !recipientId || !chatId) {
    console.log('💎 TipModal not rendering - missing data:', { senderId, recipientId, chatId });
    return null;
  }

  return (
    <Modal
      visible={visible}
      transparent
      animationType="slide"
      onRequestClose={onClose}
    >
      <KeyboardAvoidingView 
        style={styles.overlay}
        behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      >
        <Pressable 
          style={styles.overlayTouchArea} 
          onPress={onClose}
        />
        <View style={[styles.modal, { paddingBottom: insets.bottom }]}>
          <View
            style={[styles.modalContent, { backgroundColor: '#1A1F3A' }]}
          >
            <ScrollView 
              style={styles.scrollContainer}
              showsVerticalScrollIndicator={true}
              contentContainerStyle={styles.scrollContent}
              bounces={true}
              keyboardShouldPersistTaps="handled"
            >
              {/* Header */}
              <View style={styles.header}>
                <Text style={styles.title}>Send BONK Tip</Text>
                <Pressable onPress={onClose} style={styles.closeButton}>
                  <Ionicons name="close" size={24} color="#FFFFFF" />
                </Pressable>
              </View>

              <Text style={styles.subtitle}>
                Tip {recipientName} with BONK tokens
              </Text>

              {/* Tip Options Grid */}
              <View style={styles.tipGrid}>
                {TIP_OPTIONS.map(renderTipOption)}
                
                {/* Custom Amount Option - Full Width */}
                <View style={styles.customOptionContainer}>
                  <Pressable
                    style={[styles.tipOption, styles.customOption, showCustom && styles.tipOptionSelected]}
                    onPress={handleCustomTip}
                  >
                    <Image 
                      source={{ uri: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I' }}
                      style={styles.bonkIcon}
                    />
                    <Text style={[styles.customLabel, showCustom && styles.customLabelSelected]}>
                      Custom Amount
                    </Text>
                  </Pressable>
                </View>
              </View>

              {/* Custom Amount Input */}
              {showCustom && (
                <View style={styles.customSection}>
                  <Text style={styles.inputLabel}>Custom Amount (BONK)</Text>
                  <TextInput
                    style={styles.input}
                    value={customAmount}
                    onChangeText={setCustomAmount}
                    placeholder="Min: 100 BONK"
                    placeholderTextColor="#666666"
                    keyboardType="numeric"
                  />
                  {customAmount && parseInt(customAmount) >= 100 && (
                    <Text style={styles.customUsd}>
                      ~${(parseInt(customAmount) * 0.000022).toFixed(4)} USD
                    </Text>
                  )}
                </View>
              )}

              {/* Optional Message */}
              <View style={styles.messageSection}>
                <Text style={styles.inputLabel}>Optional Message</Text>
                <TextInput
                  style={[styles.input, styles.messageInput]}
                  value={customMessage}
                  onChangeText={setCustomMessage}
                  placeholder="Add a personal message..."
                  placeholderTextColor="#666666"
                  multiline
                  maxLength={100}
                />
              </View>

              {/* Send Button */}
              <Pressable
                style={[
                  styles.sendButton,
                  (!selectedTip && !getCustomTipOption()) && styles.sendButtonDisabled,
                  sending && styles.sendButtonDisabled
                ]}
                onPress={handleSendTip}
                disabled={(!selectedTip && !getCustomTipOption()) || sending}
              >
                {sending ? (
                  <ActivityIndicator size="small" color="#FFFFFF" />
                ) : (
                  <>
                    <Image 
                      source={{ uri: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I' }}
                      style={styles.bonkIconButton}
                    />
                    <Text style={styles.sendButtonText}>
                      Send BONK Tip
                    </Text>
                  </>
                )}
              </Pressable>

              {/* Info */}
              <Text style={styles.infoText}>
                Tips are sent via Solana blockchain and boost reputation scores
              </Text>
            </ScrollView>
          </View>
        </View>
      </KeyboardAvoidingView>
    </Modal>
  );
}

const styles = StyleSheet.create({
  overlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.8)',
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 20,
  },
  overlayTouchArea: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  modal: {
    borderRadius: 24,
    overflow: 'hidden',
    width: '100%',
    maxWidth: 450,
    maxHeight: '85%',
    backgroundColor: '#1A1F3A',
    minHeight: 600,
    // Enhanced liquid glass effect
    elevation: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 32 },
    shadowOpacity: 0.3,
    shadowRadius: 64,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.18)',
  },
  modalContent: {
    flex: 1,
    backgroundColor: '#1A1F3A',
  },
  scrollContainer: {
    flex: 1,
  },
  scrollContent: {
    padding: 24,
    paddingBottom: 40,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  title: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  closeButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  subtitle: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 24,
  },
  tipGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
    marginBottom: 24,
  },
  tipOption: {
    width: '48%',
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 16,
    alignItems: 'center',
    marginBottom: 12,
    borderWidth: 2,
    borderColor: 'transparent',
    // Liquid glass effect for tip options
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.15,
    shadowRadius: 16,
    elevation: 4,
  },
  tipOptionSelected: {
    borderColor: '#9945FF',
    backgroundColor: 'rgba(153, 69, 255, 0.15)',
    // Enhanced glow for selected state
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.4,
    shadowRadius: 32,
    elevation: 8,
  },
  customOptionContainer: {
    width: '100%',
    marginTop: 8,
  },
  customOption: {
    width: '100%',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 16,
    paddingVertical: 16,
    marginBottom: 16,
    gap: 8,
    borderWidth: 2,
    borderColor: 'transparent',
  },
  customEmoji: {
    fontSize: 20,
  },
  customLabel: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  customLabelSelected: {
    color: '#9945FF',
  },
  tipEmoji: {
    fontSize: 32,
    marginBottom: 8,
  },
  tipLabel: {
    fontSize: 14,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  tipLabelSelected: {
    color: '#9945FF',
  },
  tipAmount: {
    fontSize: 11,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  tipAmountSelected: {
    color: '#9945FF',
  },
  tipUsd: {
    fontSize: 14,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  tipUsdSelected: {
    color: '#9945FF',
  },
  customSection: {
    marginBottom: 20,
  },
  messageSection: {
    marginBottom: 24,
  },
  inputLabel: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginBottom: 8,
  },
  input: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 12,
    padding: 16,
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  messageInput: {
    height: 80,
    textAlignVertical: 'top',
  },
  customUsd: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#9945FF',
    marginTop: 4,
  },
  sendButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#9945FF',
    borderRadius: 16,
    paddingVertical: 16,
    marginBottom: 16,
    gap: 8,
    // Enhanced liquid glass button effect
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.4,
    shadowRadius: 32,
    elevation: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  sendButtonDisabled: {
    opacity: 0.5,
  },
  sendButtonText: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  infoText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
    lineHeight: 16,
  },
  bonkIcon: {
    width: 32,
    height: 32,
    borderRadius: 16,
  },
  bonkIconButton: {
    width: 20,
    height: 20,
    borderRadius: 10,
  },
});