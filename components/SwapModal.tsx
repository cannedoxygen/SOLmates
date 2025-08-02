import React, { useState, useEffect, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Modal,
  Pressable,
  TextInput,
  ActivityIndicator,
  ScrollView,
  Image,
  Alert,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { SwapService, TOKEN_MINTS } from '../lib/services/swapService';

// Function to get token icon URL
const getTokenIcon = (symbol: string): string => {
  const icons: { [key: string]: string } = {
    'SOL': 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/So11111111111111111111111111111111111111112/logo.png',
    'BONK': 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I',
    'USDC': 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v/logo.png',
    'USDT': 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB/logo.png',
    'JUP': 'https://static.jup.ag/jup/icon.png',
  };
  
  return icons[symbol] || `https://ui-avatars.com/api/?name=${symbol}&size=32&background=9945FF&color=ffffff&bold=true`;
};

interface SwapModalProps {
  visible: boolean;
  onClose: () => void;
  walletInstance: any;
  walletAddress: string;
  tokenBalances: any[];
  onSwapComplete: () => void;
}

export function SwapModal({
  visible,
  onClose,
  walletInstance,
  walletAddress,
  tokenBalances,
  onSwapComplete,
}: SwapModalProps) {
  const insets = useSafeAreaInsets();
  
  const [inputToken, setInputToken] = useState<any>(null);
  const [outputToken, setOutputToken] = useState<any>(null);
  const [inputAmount, setInputAmount] = useState('');
  const [outputAmount, setOutputAmount] = useState('');
  const [loading, setLoading] = useState(false);
  const [swapping, setSwapping] = useState(false);
  const [showInputPicker, setShowInputPicker] = useState(false);
  const [showOutputPicker, setShowOutputPicker] = useState(false);
  const [popularTokens, setPopularTokens] = useState<any[]>([]);
  const [quote, setQuote] = useState<any>(null);
  const [priceImpact, setPriceImpact] = useState(0);
  const [fees, setFees] = useState({ networkFee: 0, totalFee: 0 });

  useEffect(() => {
    if (visible) {
      console.log('🎯 Modal opened, initializing...');
      loadPopularTokens();
      estimateFees();
      
      // Set default tokens only once when modal opens
      const solToken = tokenBalances.find(t => t.mint === 'native') || {
        symbol: 'SOL',
        mint: TOKEN_MINTS.SOL,
        balance: 0,
        decimals: 9,
        logoURI: 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/So11111111111111111111111111111111111111112/logo.png'
      };
      const bonkToken = tokenBalances.find(t => t.mint === TOKEN_MINTS.BONK) || {
        symbol: 'BONK',
        mint: TOKEN_MINTS.BONK,
        balance: 0,
        decimals: 5,
        logoURI: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I'
      };
      setInputToken(solToken);
      setOutputToken(bonkToken);
    } else {
      // Reset states when modal closes
      console.log('🎯 Modal closed, resetting states...');
      setInputAmount('');
      setOutputAmount('');
      setQuote(null);
      setLoading(false);
      setSwapping(false);
      setShowInputPicker(false);
      setShowOutputPicker(false);
    }
  }, [visible]); // Only depend on visible, not on token states

  const loadPopularTokens = async () => {
    try {
      const tokens = await SwapService.getPopularTokens();
      setPopularTokens(tokens);
    } catch (error) {
      console.error('Failed to load popular tokens:', error);
      // Set default tokens as fallback
      setPopularTokens([
        {
          address: TOKEN_MINTS.SOL,
          symbol: 'SOL',
          name: 'Solana',
          decimals: 9,
          logoURI: 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/So11111111111111111111111111111111111111112/logo.png'
        },
        {
          address: TOKEN_MINTS.BONK,
          symbol: 'BONK',
          name: 'Bonk',
          decimals: 5,
          logoURI: 'https://arweave.net/hQiPZOsRZXGXBJd_82PhVdlM_hACsT_q6wqwf5cSY7I'
        }
      ]);
    }
  };

  const estimateFees = async () => {
    try {
      const feeEstimate = await SwapService.estimateSwapFees();
      setFees(feeEstimate);
    } catch (error) {
      console.error('Failed to estimate fees:', error);
      // Set default fee estimate
      setFees({
        networkFee: 0.000005,
        jupiterFee: 0,
        totalFee: 0.000005
      });
    }
  };

  const handleInputAmountChange = async (amount: string) => {
    setInputAmount(amount);
    
    if (!amount || !inputToken || !outputToken) {
      setOutputAmount('');
      setQuote(null);
      return;
    }

    setLoading(true);
    try {
      const numAmount = parseFloat(amount);
      if (isNaN(numAmount) || numAmount <= 0) {
        setOutputAmount('');
        setQuote(null);
        return;
      }

      // Get quote from Jupiter
      const swapQuote = await SwapService.getQuote(
        inputToken.mint === 'native' ? TOKEN_MINTS.SOL : inputToken.mint,
        outputToken.mint === 'native' ? TOKEN_MINTS.SOL : outputToken.mint,
        numAmount,
        inputToken.decimals || 9
      );

      if (swapQuote) {
        setQuote(swapQuote);
        // Calculate output amount from quote
        const outAmount = parseInt(swapQuote.outAmount) / Math.pow(10, outputToken.decimals || 9);
        setOutputAmount(outAmount.toFixed(6));
        
        // Parse price impact - it comes as string from Jupiter API
        const priceImpactValue = parseFloat(swapQuote.priceImpactPct) || 0;
        setPriceImpact(priceImpactValue);
        
        console.log('✅ Quote processed:', {
          outAmount: outAmount.toFixed(6),
          priceImpact: priceImpactValue
        });
      }
    } catch (error) {
      console.error('Failed to get quote:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSwap = async () => {
    if (!inputToken || !outputToken || !inputAmount || !quote) {
      Alert.alert('Error', 'Please enter an amount to swap');
      return;
    }

    const numAmount = parseFloat(inputAmount);
    if (isNaN(numAmount) || numAmount <= 0) {
      Alert.alert('Error', 'Please enter a valid amount');
      return;
    }

    // Check balance
    if (numAmount > inputToken.balance) {
      Alert.alert('Error', 'Insufficient balance');
      return;
    }

    Alert.alert(
      'Confirm Swap',
      `Swap ${inputAmount} ${inputToken.symbol} for ~${outputAmount} ${outputToken.symbol}?\n\nPrice Impact: ${priceImpact.toFixed(2)}%\nNetwork Fee: ~${fees.networkFee.toFixed(6)} SOL`,
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Swap',
          onPress: executeSwap
        }
      ]
    );
  };

  const executeSwap = async () => {
    setSwapping(true);
    try {
      const txHash = await SwapService.executeSwap(
        walletAddress,
        quote,
        walletInstance
      );

      if (txHash) {
        Alert.alert(
          'Swap Successful! 🎉',
          `Swapped ${inputAmount} ${inputToken.symbol} for ${outputAmount} ${outputToken.symbol}\n\nTransaction: ${txHash}`,
          [
            {
              text: 'Done',
              onPress: () => {
                onSwapComplete();
                onClose();
                // Reset form
                setInputAmount('');
                setOutputAmount('');
                setQuote(null);
              }
            }
          ]
        );
      } else {
        throw new Error('Failed to execute swap');
      }
    } catch (error) {
      console.error('Swap failed:', error);
      Alert.alert('Error', `Swap failed: ${error.message || 'Unknown error'}`);
    } finally {
      setSwapping(false);
    }
  };

  const switchTokens = () => {
    const temp = inputToken;
    setInputToken(outputToken);
    setOutputToken(temp);
    setInputAmount('');
    setOutputAmount('');
    setQuote(null);
  };

  const renderTokenPicker = (isInput: boolean) => {
    const currentToken = isInput ? inputToken : outputToken;
    const otherToken = isInput ? outputToken : inputToken;
    
    return (
      <Modal
        visible={isInput ? showInputPicker : showOutputPicker}
        transparent
        animationType="slide"
      >
        <View style={styles.pickerOverlay}>
          <View style={[styles.pickerModal, { paddingBottom: insets.bottom }]}>
            <View style={styles.pickerHeader}>
              <Text style={styles.pickerTitle}>Select Token</Text>
              <Pressable onPress={() => isInput ? setShowInputPicker(false) : setShowOutputPicker(false)}>
                <Ionicons name="close" size={24} color="#FFFFFF" />
              </Pressable>
            </View>
            
            <ScrollView style={styles.tokenList}>
              {/* User's tokens */}
              <Text style={styles.sectionTitle}>Your Tokens</Text>
              {tokenBalances.map((token, index) => {
                // Ensure all token properties are safe types
                const safeUserToken = {
                  symbol: String(token?.symbol || 'Unknown'),
                  name: String(token?.name || token?.symbol || 'Unknown Token'),
                  mint: String(token?.mint || ''),
                  balance: Number(token?.balance || 0),
                  decimals: Number(token?.decimals || 9),
                  logoURI: String(token?.logoURI || getTokenIcon(token?.symbol || 'Unknown')),
                  value: Number(token?.value || 0)
                };
                
                return (
                <Pressable
                  key={`user-${safeUserToken.mint}-${index}`}
                  style={styles.tokenItem}
                  onPress={() => {
                    if (safeUserToken.mint !== String(otherToken?.mint || '')) {
                      const selectedToken = {
                        symbol: safeUserToken.symbol,
                        name: safeUserToken.name,
                        mint: safeUserToken.mint,
                        balance: safeUserToken.balance,
                        decimals: safeUserToken.decimals,
                        logoURI: safeUserToken.logoURI,
                        value: safeUserToken.value
                      };
                      if (isInput) {
                        setInputToken(selectedToken);
                        setShowInputPicker(false);
                      } else {
                        setOutputToken(selectedToken);
                        setShowOutputPicker(false);
                      }
                      setInputAmount('');
                      setOutputAmount('');
                      setQuote(null);
                    }
                  }}
                  disabled={safeUserToken.mint === String(otherToken?.mint || '')}
                >
                  <View style={styles.tokenInfo}>
                    <Image 
                      source={{ uri: safeUserToken.logoURI }} 
                      style={styles.tokenIcon} 
                    />
                    <View>
                      <Text style={styles.tokenSymbol}>
                        {safeUserToken.symbol}
                      </Text>
                      <Text style={styles.tokenName}>
                        {safeUserToken.name}
                      </Text>
                    </View>
                  </View>
                  <View>
                    <Text style={styles.tokenBalance}>
                      {safeUserToken.balance.toFixed(6)}
                    </Text>
                    {safeUserToken.value > 0 && (
                      <Text style={styles.tokenValue}>
                        ${safeUserToken.value.toFixed(2)}
                      </Text>
                    )}
                  </View>
                </Pressable>
                );
              })}
              
              {/* Popular tokens */}
              <Text style={styles.sectionTitle}>Popular Tokens</Text>
              {popularTokens.map((token, index) => {
                // Ensure all token properties are strings
                const safeToken = {
                  symbol: String(token?.symbol || 'Unknown'),
                  name: String(token?.name || 'Unknown Token'),
                  address: String(token?.address || ''),
                  decimals: Number(token?.decimals || 9),
                  logoURI: String(token?.logoURI || getTokenIcon(token?.symbol || 'Unknown'))
                };
                
                return (
                <Pressable
                  key={`popular-${safeToken.address}-${index}`}
                  style={styles.tokenItem}
                  onPress={() => {
                    if (safeToken.address !== String(otherToken?.mint || '')) {
                      const newToken = {
                        symbol: safeToken.symbol,
                        name: safeToken.name,
                        mint: safeToken.address,
                        balance: 0,
                        decimals: safeToken.decimals,
                        logoURI: safeToken.logoURI,
                        value: 0
                      };
                      if (isInput) {
                        setInputToken(newToken);
                        setShowInputPicker(false);
                      } else {
                        setOutputToken(newToken);
                        setShowOutputPicker(false);
                      }
                      setInputAmount('');
                      setOutputAmount('');
                      setQuote(null);
                    }
                  }}
                  disabled={safeToken.address === String(otherToken?.mint || '')}
                >
                  <View style={styles.tokenInfo}>
                    <Image 
                      source={{ uri: safeToken.logoURI }} 
                      style={styles.tokenIcon} 
                    />
                    <View>
                      <Text style={styles.tokenSymbol}>
                        {safeToken.symbol}
                      </Text>
                      <Text style={styles.tokenName}>
                        {safeToken.name}
                      </Text>
                    </View>
                  </View>
                </Pressable>
                );
              })}
            </ScrollView>
          </View>
        </View>
      </Modal>
    );
  };

  return (
    <Modal
      visible={visible}
      transparent
      animationType="slide"
      onRequestClose={onClose}
    >
      <View style={styles.overlay}>
        <View style={[styles.modal, { paddingBottom: insets.bottom }]}>
          <View style={styles.header}>
            <Text style={styles.title}>Swap Tokens</Text>
            <Pressable onPress={onClose}>
              <Ionicons name="close" size={24} color="#FFFFFF" />
            </Pressable>
          </View>

          {/* From Token */}
          <View style={styles.swapSection}>
            <Text style={styles.label}>From</Text>
            <View style={styles.tokenInputContainer}>
              <Pressable
                style={styles.tokenSelector}
                onPress={() => setShowInputPicker(true)}
              >
                {inputToken ? (
                  <>
                    {inputToken.logoURI ? (
                      <Image source={{ uri: inputToken.logoURI }} style={styles.selectedTokenIcon} />
                    ) : (
                      <Image 
                        source={{ uri: getTokenIcon(inputToken.symbol) }}
                        style={styles.selectedTokenIcon}
                        onError={() => {/* Fallback handled by getTokenIcon */}}
                      />
                    )}
                    <Text style={styles.selectedTokenSymbol}>
                      {String(inputToken.symbol || 'Token')}
                    </Text>
                  </>
                ) : (
                  <Text style={styles.selectTokenText}>Select Token</Text>
                )}
                <Ionicons name="chevron-down" size={16} color="#9945FF" />
              </Pressable>
              
              <TextInput
                style={styles.amountInput}
                value={inputAmount}
                onChangeText={handleInputAmountChange}
                placeholder="0.0"
                placeholderTextColor="#666666"
                keyboardType="numeric"
              />
            </View>
            {inputToken && (
              <Text style={styles.balanceText}>
                Balance: {String((inputToken.balance || 0).toFixed(6))} {String(inputToken.symbol || 'Token')}
              </Text>
            )}
          </View>

          {/* Switch Button */}
          <Pressable style={styles.switchButton} onPress={switchTokens}>
            <Ionicons name="swap-vertical" size={24} color="#9945FF" />
          </Pressable>

          {/* To Token */}
          <View style={styles.swapSection}>
            <Text style={styles.label}>To</Text>
            <View style={styles.tokenInputContainer}>
              <Pressable
                style={styles.tokenSelector}
                onPress={() => setShowOutputPicker(true)}
              >
                {outputToken ? (
                  <>
                    {outputToken.logoURI ? (
                      <Image source={{ uri: outputToken.logoURI }} style={styles.selectedTokenIcon} />
                    ) : (
                      <Image 
                        source={{ uri: getTokenIcon(outputToken.symbol) }}
                        style={styles.selectedTokenIcon}
                        onError={() => {/* Fallback handled by getTokenIcon */}}
                      />
                    )}
                    <Text style={styles.selectedTokenSymbol}>
                      {String(outputToken.symbol || 'Token')}
                    </Text>
                  </>
                ) : (
                  <Text style={styles.selectTokenText}>Select Token</Text>
                )}
                <Ionicons name="chevron-down" size={16} color="#9945FF" />
              </Pressable>
              
              <View style={styles.outputContainer}>
                {loading ? (
                  <ActivityIndicator size="small" color="#9945FF" />
                ) : (
                  <Text style={styles.outputAmount}>
                    {String(outputAmount || '0.0')}
                  </Text>
                )}
              </View>
            </View>
          </View>

          {/* Swap Details */}
          {quote && (
            <View style={styles.swapDetails}>
              <View style={styles.detailRow}>
                <Text style={styles.detailLabel}>Price Impact</Text>
                <Text style={[styles.detailValue, priceImpact > 5 && styles.warningText]}>
                  {String((priceImpact || 0).toFixed(2))}%
                </Text>
              </View>
              <View style={styles.detailRow}>
                <Text style={styles.detailLabel}>Network Fee</Text>
                <Text style={styles.detailValue}>
                  ~{String((fees.networkFee || 0).toFixed(6))} SOL
                </Text>
              </View>
            </View>
          )}

          {/* Swap Button */}
          <Pressable
            style={[
              styles.swapButton,
              (!inputAmount || !outputAmount || swapping) && styles.swapButtonDisabled
            ]}
            onPress={handleSwap}
            disabled={!inputAmount || !outputAmount || swapping}
          >
            {swapping ? (
              <ActivityIndicator size="small" color="#FFFFFF" />
            ) : (
              <Text style={styles.swapButtonText}>
                {!inputAmount ? 'Enter Amount' : 'Swap'}
              </Text>
            )}
          </Pressable>

          {/* Input Token Picker */}
          {showInputPicker && renderTokenPicker(true)}
          
          {/* Output Token Picker */}
          {showOutputPicker && renderTokenPicker(false)}
        </View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  overlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.8)',
    justifyContent: 'flex-end',
  },
  modal: {
    backgroundColor: '#1A1F3A',
    borderTopLeftRadius: 24,
    borderTopRightRadius: 24,
    padding: 24,
    minHeight: 500,
    // Enhanced liquid glass effect
    shadowColor: '#000',
    shadowOffset: { width: 0, height: -8 },
    shadowOpacity: 0.3,
    shadowRadius: 32,
    elevation: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.18)',
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 24,
  },
  title: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  swapSection: {
    marginBottom: 16,
  },
  label: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#B8B8B8',
    marginBottom: 8,
  },
  tokenInputContainer: {
    flexDirection: 'row',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 16,
    padding: 16,
    alignItems: 'center',
    // Liquid glass effect for input containers
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.1,
    shadowRadius: 16,
    elevation: 4,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.15)',
  },
  tokenSelector: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 8,
    marginRight: 12,
  },
  selectedTokenIcon: {
    width: 24,
    height: 24,
    borderRadius: 12,
    marginRight: 8,
  },
  selectedTokenIconPlaceholder: {
    width: 24,
    height: 24,
    borderRadius: 12,
    backgroundColor: '#9945FF',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 8,
  },
  selectedTokenIconText: {
    fontSize: 12,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  selectedTokenSymbol: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginRight: 4,
  },
  selectTokenText: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#666666',
    marginRight: 4,
  },
  amountInput: {
    flex: 1,
    fontSize: 24,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    textAlign: 'right',
  },
  outputContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'flex-end',
  },
  outputAmount: {
    fontSize: 24,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  balanceText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    marginTop: 4,
  },
  switchButton: {
    width: 48,
    height: 48,
    borderRadius: 24,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    alignSelf: 'center',
    marginVertical: 8,
  },
  swapDetails: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 12,
    padding: 16,
    marginTop: 16,
    marginBottom: 24,
    // Liquid glass effect for details panel
    shadowColor: '#14F195',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.1,
    shadowRadius: 16,
    elevation: 4,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.15)',
  },
  detailRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 8,
  },
  detailLabel: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  detailValue: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
  },
  warningText: {
    color: '#FF6B6B',
  },
  swapButton: {
    backgroundColor: '#9945FF',
    borderRadius: 16,
    paddingVertical: 16,
    alignItems: 'center',
    // Enhanced liquid glass button effect
    shadowColor: '#9945FF',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.4,
    shadowRadius: 32,
    elevation: 8,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
  },
  swapButtonDisabled: {
    opacity: 0.5,
  },
  swapButtonText: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  pickerOverlay: {
    flex: 1,
    backgroundColor: 'rgba(0, 0, 0, 0.8)',
    justifyContent: 'flex-end',
  },
  pickerModal: {
    backgroundColor: '#1A1F3A',
    borderTopLeftRadius: 24,
    borderTopRightRadius: 24,
    maxHeight: '80%',
  },
  pickerHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 24,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.1)',
  },
  pickerTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  tokenList: {
    padding: 24,
  },
  sectionTitle: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#666666',
    marginBottom: 12,
    marginTop: 16,
  },
  tokenItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingVertical: 12,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.05)',
  },
  tokenInfo: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  tokenIcon: {
    width: 40,
    height: 40,
    borderRadius: 20,
    marginRight: 12,
  },
  tokenIconPlaceholder: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: '#9945FF',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  tokenIconText: {
    fontSize: 16,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  tokenSymbol: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  tokenName: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  tokenBalance: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    textAlign: 'right',
  },
  tokenValue: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'right',
  },
});