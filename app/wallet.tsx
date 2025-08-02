// Polyfills now handled globally in index.js
import { useState, useEffect } from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  ScrollView, 
  Pressable, 
  Alert,
  ActivityIndicator,
  RefreshControl,
  TextInput,
  Modal,
  Image,
} from 'react-native';
import { Connection, PublicKey, LAMPORTS_PER_SOL, SystemProgram, Transaction } from '@solana/web3.js';
// import { TOKEN_PROGRAM_ID, createTransferInstruction, getAssociatedTokenAddress } from '@solana/spl-token'; // For SPL token transfers
// import * as Clipboard from 'expo-clipboard'; // Requires development build
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { usePrivy, useEmbeddedSolanaWallet } from '@privy-io/expo';
import { supabase } from '../lib/supabase/client';
import { SolTransferService } from '../lib/services/solTransferService';
import { TokenTransferService } from '../lib/services/tokenTransferService';
import { SwapModal } from '../components/SwapModal';
import { Ionicons } from '@expo/vector-icons';
// Using QR Server API for QR code generation

interface TokenBalance {
  symbol: string;
  name: string;
  balance: number;
  value: number;
  icon: string;
}

export default function Wallet() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { user } = usePrivy();
  const { wallets } = useEmbeddedSolanaWallet();
  
  const [loading, setLoading] = useState(false);
  const [refreshing, setRefreshing] = useState(false);
  const [solBalance, setSolBalance] = useState(0);
  const [tokenBalances, setTokenBalances] = useState([]);
  const [recentTransactions, setRecentTransactions] = useState([]);
  const [solPrice, setSolPrice] = useState(0);
  const [bonkPrice, setBonkPrice] = useState(0);
  const [totalPortfolioValue, setTotalPortfolioValue] = useState(0);
  const [showSendModal, setShowSendModal] = useState(false);
  const [showReceiveModal, setShowReceiveModal] = useState(false);
  const [showTokenPicker, setShowTokenPicker] = useState(false);
  const [showRecipientPicker, setShowRecipientPicker] = useState(false);
  const [showSwapModal, setShowSwapModal] = useState(false);
  const [sendAmount, setSendAmount] = useState('');
  const [sendAddress, setSendAddress] = useState('');
  const [qrCodeDataUrl, setQrCodeDataUrl] = useState<string | null>(null);
  const [selectedToken, setSelectedToken] = useState<any>(null);
  const [matches, setMatches] = useState<any[]>([]);
  const [selectedRecipient, setSelectedRecipient] = useState<any>(null);
  
  const walletAddress = wallets?.[0]?.address;
  const HELIUS_API_KEY = '99b7e94e-9dff-4de3-82ac-567bfbda369c';
  // Check if we should use devnet or mainnet based on your actual transactions
  const isDevnet = false; // Set to true if your transactions were on devnet
  const rpcUrl = isDevnet 
    ? `https://devnet.helius-rpc.com/?api-key=${HELIUS_API_KEY}` 
    : `https://mainnet.helius-rpc.com/?api-key=${HELIUS_API_KEY}`;
  const connection = new Connection(rpcUrl, 'confirmed');

  // Fetch real SOL balance
  const fetchBalance = async () => {
    if (!walletAddress) return;
    
    try {
      const publicKey = new PublicKey(walletAddress);
      const balance = await connection.getBalance(publicKey);
      const solAmount = balance / LAMPORTS_PER_SOL;
      setSolBalance(solAmount);
      console.log(`💰 Real SOL balance: ${solAmount} SOL (${balance} lamports)`);
    } catch (error) {
      console.error('❌ Failed to fetch balance:', error);
    }
  };

  // Initial load and refresh
  useEffect(() => {
    if (walletAddress) {
      console.log('💳 Wallet address loaded:', walletAddress);
      loadWalletData();
    }
  }, [walletAddress]);

  // Load wallet data in proper sequence
  const loadWalletData = async () => {
    try {
      // Load prices first (needed for token value calculations)
      await fetchTokenPrices();
      
      // Then load balances and other data in parallel
      await Promise.all([
        fetchBalance(),
        fetchTokenBalances(),
        fetchRecentTransactions(),
        fetchMatches()
      ]);
    } catch (error) {
      console.error('❌ Failed to load wallet data:', error);
    }
  };

  // Recalculate portfolio value when SOL balance or price changes
  useEffect(() => {
    if (solBalance && solPrice) {
      calculatePortfolioValue(tokenBalances);
    }
  }, [solBalance, solPrice, tokenBalances]);

  // Fetch token prices from CoinGecko
  const fetchTokenPrices = async () => {
    try {
      const response = await fetch('https://api.coingecko.com/api/v3/simple/price?ids=solana,bonk&vs_currencies=usd');
      const data = await response.json();
      setSolPrice(data.solana?.usd || 0);
      setBonkPrice(data.bonk?.usd || 0);
      console.log('💰 Token prices fetched:', {
        sol: data.solana?.usd,
        bonk: data.bonk?.usd
      });
    } catch (error) {
      console.error('❌ Failed to fetch token prices:', error);
    }
  };

  // Fetch token balances using multiple Helius API endpoints for better coverage
  const fetchTokenBalances = async () => {
    if (!walletAddress) return;
    
    try {
      console.log('🔍 Fetching token balances for:', walletAddress);
      
      // Try the parsed transactions endpoint which often has better token data
      const response = await fetch(`https://api.helius.xyz/v0/addresses/${walletAddress}/tokens?api-key=${HELIUS_API_KEY}`);
      const data = await response.json();
      
      console.log('📊 Raw Helius token response:', data);
      
      if (data && data.length > 0) {
        // Process tokens from the tokens endpoint
        const processedTokens = data.map((token: any) => ({
          symbol: token.name || token.symbol || 'Unknown',
          name: token.name || 'Unknown Token',
          balance: parseFloat(token.amount || '0'),
          value: 0,
          mint: token.mint,
          decimals: token.decimals || 0,
          icon: token.image || ''
        }));

        setTokenBalances(processedTokens);
        console.log('✅ Processed tokens:', processedTokens);
        calculatePortfolioValue(processedTokens);
        return;
      }

      // Fallback 1: Try the balances endpoint
      console.log('🔄 Trying balances endpoint...');
      const balanceResponse = await fetch(`https://api.helius.xyz/v0/addresses/${walletAddress}/balances?api-key=${HELIUS_API_KEY}`);
      const balanceData = await balanceResponse.json();
      
      console.log('📊 Helius balances response:', balanceData);
      
      // Update SOL balance from Helius (more reliable)
      if (balanceData.nativeBalance) {
        const solFromHelius = balanceData.nativeBalance / LAMPORTS_PER_SOL;
        setSolBalance(solFromHelius);
        console.log(`💰 SOL balance from Helius: ${solFromHelius} SOL (${balanceData.nativeBalance} lamports)`);
      }
      
      if (balanceData.tokens && balanceData.tokens.length > 0) {
        const balanceTokens = balanceData.tokens.map((token: any) => {
          // Calculate proper balance using amount and decimals
          const balance = parseFloat(token.amount) / Math.pow(10, token.decimals || 0);
          
          // Identify BONK token specifically and calculate its USD value
          const isBonk = token.mint === 'DezXAZ8z7PnrnRJjz3wXBoRgixCa6xjnB7YaB1pPB263';
          const tokenValue = isBonk ? balance * bonkPrice : 0;
          
          return {
            symbol: isBonk ? 'BONK' : (token.symbol || 'Unknown'),
            name: isBonk ? 'Bonk' : (token.name || 'Unknown Token'),
            balance: balance,
            value: tokenValue,
            mint: token.mint,
            decimals: token.decimals || 0,
            icon: token.icon || ''
          };
        });

        // Add SOL as the first token in the list
        const currentSolBalance = balanceData.nativeBalance / LAMPORTS_PER_SOL;
        const allTokens = [
          {
            symbol: 'SOL',
            name: 'Solana',
            balance: currentSolBalance,
            value: currentSolBalance * solPrice,
            mint: 'native',
            decimals: 9,
            icon: ''
          },
          ...balanceTokens
        ];

        setTokenBalances(allTokens);
        console.log('✅ Processed all tokens (SOL + SPL):', allTokens);
        calculatePortfolioValue(allTokens);
        return;
      }

      // Fallback 2: Direct SPL token account query
      console.log('🔄 Trying direct SPL token query...');
      const splResponse = await fetch(`https://api.helius.xyz/v0/addresses/${walletAddress}?api-key=${HELIUS_API_KEY}`);
      const splData = await splResponse.json();
      
      console.log('📊 Direct SPL response:', splData);
      
      if (splData.tokenAccounts && splData.tokenAccounts.length > 0) {
        const splTokens = splData.tokenAccounts
          .filter((account: any) => parseFloat(account.amount) > 0)
          .map((account: any) => ({
            symbol: account.mint || 'Unknown',
            name: account.mint || 'Unknown Token',
            balance: parseFloat(account.amount) / Math.pow(10, account.decimals || 9),
            value: 0,
            mint: account.mint,
            decimals: account.decimals || 9,
            icon: ''
          }));

        setTokenBalances(splTokens);
        console.log('✅ Processed SPL tokens:', splTokens);
        calculatePortfolioValue(splTokens);
        return;
      }

      // No SPL tokens found, showing SOL only
      // If no SPL tokens found, at least show SOL
      const solOnly = [
        {
          symbol: 'SOL',
          name: 'Solana',
          balance: solBalance,
          value: solBalance * solPrice,
          mint: 'native',
          decimals: 9,
          icon: ''
        }
      ];
      setTokenBalances(solOnly);
      calculatePortfolioValue(solOnly);
      
    } catch (error) {
      console.error('❌ Failed to fetch token balances:', error);
      setTokenBalances([]);
    }
  };

  // Calculate total portfolio value
  const calculatePortfolioValue = (tokens: any[]) => {
    // Sum up all token values (including SOL which is now in the tokens array)
    const totalValue = tokens.reduce((total, token) => total + (token.value || 0), 0);
    
    console.log('💰 Portfolio calculation:', {
      tokens: tokens.map(t => ({ symbol: t.symbol, balance: t.balance, value: t.value })),
      totalValue,
      tokenCount: tokens.length
    });
    
    setTotalPortfolioValue(totalValue);
  };

  // Fetch recent transactions using Helius API with enhanced parsing
  const fetchRecentTransactions = async () => {
    if (!walletAddress) return;
    
    try {
      console.log('🔍 Fetching transactions for wallet:', walletAddress);
      
      // First try the parsed transactions endpoint with proper parameters
      const parsedUrl = `https://api.helius.xyz/v0/addresses/${walletAddress}/transactions?api-key=${HELIUS_API_KEY}&limit=100`;
      console.log('🔗 Fetching from:', parsedUrl);
      
      const response = await fetch(parsedUrl);
      const data = await response.json();
      
      // Also try getting transaction history specifically
      const historyUrl = `https://api.helius.xyz/v0/addresses/${walletAddress}/transactions?api-key=${HELIUS_API_KEY}&limit=100&type=all`;
      const historyResponse = await fetch(historyUrl);
      const historyData = await historyResponse.json();
      
      console.log('📊 History response:', historyData?.length || 0, 'transactions');
      
      console.log('📋 Raw transactions response status:', response.status);
      console.log('📋 Raw transactions response:', JSON.stringify(data).substring(0, 200) + '...');
      
      if (data && data.length > 0) {
        // Process transactions to include both SOL and token transfers
        const processedTransactions = [];
        
        data.forEach((tx: any) => {
          const timestamp = tx.timestamp || Date.now() / 1000;
          const solTransfers = tx.nativeTransfers || [];
          const tokenTransfers = tx.tokenTransfers || [];
          
          // Process SOL transfers
          solTransfers.forEach((transfer: any, index: number) => {
            const solAmount = transfer.amount / 1000000000;
            // Skip very small amounts (likely fees) - increased threshold to filter out small sends/receives
            if (solAmount >= 0.01) {
              processedTransactions.push({
                id: `${tx.signature}_sol_${index}`,
                type: transfer.toUserAccount === walletAddress ? 'Received' : 'Sent',
                amount: `${solAmount.toFixed(4)} SOL`,
                symbol: 'SOL',
                timestamp: timestamp,
                signature: tx.signature
              });
            }
          });
          
          // Process token transfers
          tokenTransfers.forEach((transfer: any, index: number) => {
            const isBonk = transfer.mint === 'DezXAZ8z7PnrnRJjz3wXBoRgixCa6xjnB7YaB1pPB263';
            
            if (isBonk) {
              // Helius API already returns human-readable amounts, no need to divide by decimals
              const bonkAmount = transfer.tokenAmount;
              processedTransactions.push({
                id: `${tx.signature}_bonk_${index}`,
                type: transfer.toUserAccount === walletAddress ? 'Received' : 'Sent',
                amount: `${formatTokenAmount(bonkAmount, 'BONK')} BONK`,
                symbol: 'BONK',
                timestamp: timestamp,
                signature: tx.signature
              });
            } else {
              const tokenAmount = transfer.tokenAmount / Math.pow(10, transfer.decimals || 9);
              processedTransactions.push({
                id: `${tx.signature}_token_${index}`,
                type: transfer.toUserAccount === walletAddress ? 'Received' : 'Sent',
                amount: `${tokenAmount.toLocaleString()} TOKEN`,
                symbol: 'TOKEN',
                timestamp: timestamp,
                signature: tx.signature
              });
            }
          });
          
          // If no transfers found, create a generic transaction entry
          if (solTransfers.length === 0 && tokenTransfers.length === 0) {
            processedTransactions.push({
              id: tx.signature,
              type: 'Transaction',
              amount: 'N/A',
              symbol: '',
              timestamp: timestamp,
              signature: tx.signature
            });
          }
        });

        setRecentTransactions(processedTransactions);
        console.log('✅ Processed transactions:', processedTransactions.length, processedTransactions.slice(0, 2));
      } else {
        // No transactions found - normal for new wallets
      }
    } catch (error) {
      // Failed to fetch transactions - try fallbacks
      
      // Fallback 1: Try basic transactions endpoint
      try {
        // Try basic transactions endpoint
        const basicResponse = await fetch(`https://api.helius.xyz/v0/addresses/${walletAddress}/transactions?api-key=${HELIUS_API_KEY}&limit=20`);
        const basicData = await basicResponse.json();
        
        if (basicData && basicData.length > 0) {
          // Process basic transaction format
          const basicTransactions = basicData.map((tx: any, index: number) => ({
            id: tx.signature || `tx_${index}`,
            type: tx.type || 'Transaction',
            amount: tx.nativeTransfers?.[0]?.amount ? 
              `${(tx.nativeTransfers[0].amount / 1000000000).toFixed(4)} SOL` : 
              'Unknown',
            symbol: 'SOL',
            timestamp: tx.timestamp || (Date.now() / 1000),
            signature: tx.signature
          }));
          
          setRecentTransactions(basicTransactions);
          console.log('✅ Basic transactions processed:', basicTransactions.length);
          return;
        }
      } catch (basicError) {
        console.error('❌ Basic transaction fetch failed:', basicError);
      }
      
      // Fallback 2: Try direct RPC call to get recent signatures
      try {
        // Try direct RPC for signatures
        const rpcResponse = await fetch(connection.rpcEndpoint, {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            jsonrpc: '2.0',
            id: 1,
            method: 'getSignaturesForAddress',
            params: [walletAddress, { limit: 10 }]
          })
        });
        
        const rpcData = await rpcResponse.json();
        
        if (rpcData.result && rpcData.result.length > 0) {
          const rpcTransactions = rpcData.result.map((sig: any, index: number) => ({
            id: sig.signature,
            type: 'Transaction',
            amount: 'Unknown',
            symbol: '',
            timestamp: sig.blockTime || (Date.now() / 1000),
            signature: sig.signature
          }));
          
          setRecentTransactions(rpcTransactions);
          // RPC transactions processed
        } else {
          // No transactions found - normal for new wallets
          setRecentTransactions([]);
        }
      } catch (rpcError) {
        // RPC fetch failed - wallet likely has no transactions
        setRecentTransactions([]);
      }
    }
  };

  // Fetch matches with wallet addresses
  const fetchMatches = async () => {
    if (!user?.id) return;
    
    try {
      console.log('🔍 Fetching matches for user:', user.id);
      
      // Get current user's Supabase ID
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();
        
      if (userError || !currentUser) {
        console.log('❌ No Supabase user found for matches:', userError);
        return;
      }
      
      console.log('👤 Current user Supabase ID:', currentUser.id);
      
      // First, let's see ALL matches to debug
      const { data: allMatches } = await supabase
        .from('matches')
        .select('*')
        .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`)
        .order('created_at', { ascending: false });
      
      console.log('🔍 ALL matches (including incomplete):', allMatches);
      
      // Get confirmed matches where both users liked each other
      let { data: matchData, error: matchError } = await supabase
        .from('matches')
        .select('*')
        .or(`user1_id.eq.${currentUser.id},user2_id.eq.${currentUser.id}`)
        .eq('user1_liked', true)
        .eq('user2_liked', true)
        .not('matched_at', 'is', null)
        .order('created_at', { ascending: false });
      
      console.log('📊 Confirmed matches found:', matchData?.length || 0);

      if (matchError) {
        console.error('❌ Match query error:', matchError);
        throw matchError;
      }

      console.log('📊 Found matches:', matchData?.length || 0);

      if (!matchData || matchData.length === 0) {
        console.log('ℹ️ No confirmed matches found');
        setMatches([]);
        return;
      }

      // Get other user details for each match, including wallet addresses
      const matchesWithUsers = await Promise.all(
        matchData.map(async (match) => {
          const otherUserId = match.user1_id === currentUser.id ? match.user2_id : match.user1_id;
          
          console.log('👥 Fetching user data for:', otherUserId);
          
          const { data: userData, error: userDataError } = await supabase
            .from('users')
            .select('id, username, display_name, avatar_url, twitter_avatar_url, wallet_address, privy_user_id')
            .eq('id', otherUserId)
            .single();

          if (userDataError) {
            console.error('❌ User data error for', otherUserId, ':', userDataError);
            return null;
          }

          console.log('📝 User data:', {
            username: userData?.username,
            hasWallet: !!userData?.wallet_address
          });

          return {
            ...match,
            other_user: userData,
          };
        })
      );

      // Filter out null results and matches without properly set up wallets
      const validMatches = matchesWithUsers.filter(match => 
        match && 
        match.other_user && 
        match.other_user.wallet_address && 
        match.other_user.wallet_address.trim() !== '' &&
        match.other_user.privy_user_id && // Must have logged in via Privy
        match.other_user.privy_user_id.trim() !== '' &&
        !match.other_user.privy_user_id.includes('mock_user') // Exclude mock users
      );
      
      console.log('✅ Matches with wallets:', validMatches.length);
      console.log('📋 Match details:', validMatches.map(m => ({
        username: m.other_user.username,
        wallet: m.other_user.wallet_address?.slice(0, 8) + '...'
      })));
      
      setMatches(validMatches);
    } catch (error) {
      console.error('❌ Failed to load matches:', error);
      setMatches([]);
    }
  };

  const handleRefresh = async () => {
    setRefreshing(true);
    try {
      // Load prices first, then everything else
      await fetchTokenPrices();
      await Promise.all([
        fetchBalance(),
        fetchTokenBalances(),
        fetchRecentTransactions(),
        fetchMatches()
      ]);
    } catch (error) {
      console.error('❌ Failed to refresh wallet data:', error);
    } finally {
      setRefreshing(false);
    }
  };

  const handleSend = async () => {
    if (!walletAddress || !sendAddress || !sendAmount) {
      Alert.alert('Error', 'Please fill in all fields');
      return;
    }

    if (!user) {
      Alert.alert('Error', 'User not authenticated');
      return;
    }

    try {
      setLoading(true);
      const wallet = wallets[0];
      const amount = parseFloat(sendAmount);

      // Get current user's Supabase ID
      const { data: currentUser, error: userError } = await supabase
        .from('users')
        .select('id')
        .eq('privy_user_id', user.id)
        .single();

      if (userError || !currentUser) {
        Alert.alert('Error', 'Failed to find user');
        return;
      }

      // Find recipient user by wallet address
      const { data: recipientUser, error: recipientError } = await supabase
        .from('users')
        .select('id, username')
        .eq('wallet_address', sendAddress)
        .single();

      if (recipientError || !recipientUser) {
        Alert.alert('Error', 'Recipient not found in Solmates. They need to sign up first.');
        return;
      }
      
      // Check if sending SOL or SPL token
      if (!selectedToken || selectedToken.mint === 'native') {
        // SOL transfer using our service
        console.log('💰 Starting SOL transfer...', {
          senderId: currentUser.id,
          recipientId: recipientUser.id,
          amount,
          wallet: wallet?.address
        });

        const transfer = await SolTransferService.sendSol(
          currentUser.id,
          recipientUser.id,
          amount,
          `SOL transfer to ${recipientUser.username}`,
          wallet
        );

        const isSimulated = transfer.transaction_hash?.includes('sol_sim_');
        
        Alert.alert(
          isSimulated ? 'SOL Transfer Simulated! 💰' : 'SOL Sent! 💰',
          `You ${isSimulated ? 'simulated sending' : 'sent'} ${amount} SOL to ${recipientUser.username}!\n\nTransaction: ${transfer.transaction_hash || 'Processing...'}\n\n${isSimulated ? '(Privy wallet signing will be available soon)' : ''}`
        );
      } else if (selectedToken.symbol === 'BONK') {
        // BONK transfer using proper token transfer service
        console.log('💎 Starting BONK transfer...', {
          senderId: currentUser.id,
          recipientId: recipientUser.id,
          amount,
          wallet: wallet?.address
        });
        
        const transfer = await TokenTransferService.sendBonk(
          currentUser.id,
          recipientUser.id,
          amount,
          `BONK transfer to ${recipientUser.username}`,
          wallet
        );

        const isSimulated = transfer.transaction_hash?.includes('token_sim_');

        Alert.alert(
          isSimulated ? 'BONK Transfer Simulated! 💎' : 'BONK Sent! 💎',
          `You ${isSimulated ? 'simulated sending' : 'sent'} ${amount.toLocaleString()} BONK to ${recipientUser.username}!\n\nTransaction: ${transfer.transaction_hash || 'Processing...'}\n\n${isSimulated ? '(Privy wallet signing will be available soon)' : ''}`
        );
      } else {
        // Other SPL Token transfer
        Alert.alert('Coming Soon', `${selectedToken.symbol} transfers will be available in a future update`);
      }
      
      setShowSendModal(false);
      setSendAmount('');
      setSendAddress('');
      setSelectedRecipient(null);
      setSelectedToken(null);

      // Refresh wallet data
      await handleRefresh();
      
    } catch (error) {
      Alert.alert('Error', `Failed to send transaction: ${error.message}`);
    } finally {
      setLoading(false);
    }
  };

  const handleCopyWallet = async () => {
    if (walletAddress) {
      // await Clipboard.setStringAsync(walletAddress); // Requires development build
      Alert.alert('Wallet Address', walletAddress, [{ text: 'OK' }]);
    }
  };

  const generateQRCode = async () => {
    if (walletAddress) {
      try {
        // Using QR Server API to generate QR code
        const qrUrl = `https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=${encodeURIComponent(walletAddress)}&color=ffffff&bgcolor=1a1f3a&margin=10&ecc=M`;
        setQrCodeDataUrl(qrUrl);
      } catch (error) {
        console.error('Error generating QR code:', error);
      }
    }
  };

  const handleShowReceiveModal = () => {
    setShowReceiveModal(true);
    generateQRCode();
  };


  const formatNumber = (num: number, decimals = 2) => {
    if (num >= 1000000) {
      return (num / 1000000).toFixed(1) + 'M';
    }
    if (num >= 1000) {
      return (num / 1000).toFixed(1) + 'K';
    }
    return num.toLocaleString(undefined, { minimumFractionDigits: decimals, maximumFractionDigits: decimals });
  };

  const formatTokenAmount = (amount: number, symbol: string) => {
    // For very large amounts, use abbreviated format
    if (amount >= 1000000) {
      return `${(amount / 1000000).toFixed(1)}M`;
    }
    if (amount >= 1000) {
      return `${(amount / 1000).toFixed(1)}K`;
    }
    
    // For smaller amounts, show appropriate decimals based on token type
    if (symbol === 'SOL') {
      return amount.toFixed(4); // SOL with 4 decimals
    } else if (symbol === 'BONK') {
      // For BONK amounts less than 1, show with 2 decimal places
      // For amounts 1 and above, show as whole numbers
      return amount < 1 ? amount.toFixed(2) : amount.toFixed(0);
    } else {
      return amount.toFixed(2); // Other tokens with 2 decimals
    }
  };

  if (!walletAddress) {
    return (
      <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
        <View style={[styles.content, { paddingTop: insets.top + 20 }]}>
          <View style={styles.header}>
            <Pressable style={styles.backButton} onPress={() => router.back()}>
              <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
            </Pressable>
            <Text style={styles.title}>Wallet</Text>
            <View style={styles.backButton} />
          </View>
          
          <View style={styles.emptyContainer}>
            <Ionicons name="wallet-outline" size={64} color="#666666" />
            <Text style={styles.emptyTitle}>No Wallet Connected</Text>
            <Text style={styles.emptyText}>Connect a wallet to view your portfolio</Text>
          </View>
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.container, { backgroundColor: '#0A0E27' }]}>
      <ScrollView
        style={styles.scrollView}
        contentContainerStyle={[styles.content, { paddingTop: insets.top + 20, paddingBottom: insets.bottom + 40 }]}
        refreshControl={<RefreshControl refreshing={refreshing} onRefresh={handleRefresh} tintColor="#9945FF" />}
        showsVerticalScrollIndicator={false}
      >
        <View style={styles.header}>
          <Pressable style={styles.backButton} onPress={() => router.back()}>
            <Ionicons name="arrow-back" size={24} color="#FFFFFF" />
          </Pressable>
          <Text style={styles.title}>Wallet</Text>
          <Pressable style={styles.refreshButton} onPress={handleRefresh}>
            <Ionicons name="refresh" size={24} color="#9945FF" />
          </Pressable>
        </View>

        {/* Portfolio Value */}
        <View style={styles.portfolioCard}>
          <Text style={styles.portfolioLabel}>Total Portfolio Value</Text>
          <Text style={styles.portfolioValue}>
            ${formatNumber(totalPortfolioValue || (solBalance * solPrice), 2)}
          </Text>
          <Text style={styles.lastUpdated}>
            {tokenBalances.length > 0 ? `${tokenBalances.length} tokens` : 'Loading...'}
          </Text>
        </View>

        {/* Actions */}
        <View style={styles.actionsContainer}>
          <Pressable 
            style={styles.actionButton}
            onPress={() => setShowTokenPicker(true)}
          >
            <Ionicons name="send-outline" size={20} color="#9945FF" />
            <Text style={styles.actionText}>Send</Text>
          </Pressable>
          <Pressable 
            style={styles.actionButton}
            onPress={handleShowReceiveModal}
          >
            <Ionicons name="download-outline" size={20} color="#9945FF" />
            <Text style={styles.actionText}>Receive</Text>
          </Pressable>
          <Pressable 
            style={styles.actionButton}
            onPress={() => setShowSwapModal(true)}
          >
            <Ionicons name="swap-horizontal-outline" size={20} color="#9945FF" />
            <Text style={styles.actionText}>Swap</Text>
          </Pressable>
        </View>

        {/* Token Balances */}
        {tokenBalances.length > 0 && (
          <View style={styles.card}>
            <View style={styles.cardHeader}>
              <Ionicons name="wallet-outline" size={20} color="#9945FF" />
              <Text style={styles.cardTitle}>Holdings</Text>
            </View>
            {tokenBalances.slice(0, 5).map((token: any, index: number) => (
              <View key={index} style={[styles.tokenRow, index > 0 && styles.tokenRowBorder]}>
                <View style={styles.tokenInfoColumn}>
                  <Text style={styles.tokenSymbol}>{token.symbol || 'Unknown'}</Text>
                  <Text style={styles.tokenName}>{token.name || 'Unknown Token'}</Text>
                </View>
                <View style={styles.tokenBalanceSection}>
                  <View style={styles.tokenBalance}>
                    <Text style={styles.tokenAmount}>{formatTokenAmount(token.balance || 0, token.symbol)}</Text>
                    <Text style={styles.tokenValue}>${formatNumber(token.value || 0)}</Text>
                  </View>
                  <Pressable 
                    style={styles.tokenSendButton}
                    onPress={() => {
                      setSelectedToken(token);
                      setSendAmount('');
                      setSendAddress('');
                      setShowSendModal(true);
                    }}
                  >
                    <Ionicons name="send-outline" size={16} color="#9945FF" />
                  </Pressable>
                </View>
              </View>
            ))}
            {tokenBalances.length > 5 && (
              <Text style={styles.emptyText}>+{tokenBalances.length - 5} more tokens</Text>
            )}
          </View>
        )}

        {/* Recent Activity */}
        <View style={styles.card}>
          <View style={styles.cardHeader}>
            <Ionicons name="time-outline" size={20} color="#9945FF" />
            <Text style={styles.cardTitle}>Recent Activity</Text>
          </View>
          {recentTransactions.length > 0 ? (
            recentTransactions.slice(0, 5).map((tx: any, index: number) => (
              <View key={tx.id || index} style={[styles.tokenRow, index > 0 && styles.tokenRowBorder]}>
                <View style={styles.tokenInfoColumn}>
                  <Text style={styles.tokenSymbol}>{tx.type || 'Transaction'}</Text>
                  <Text style={styles.tokenName}>
                    {new Date(tx.timestamp * 1000).toLocaleDateString()}
                  </Text>
                </View>
                <View style={styles.tokenBalance}>
                  <Text style={styles.tokenAmount}>{tx.amount}</Text>
                  <Text style={styles.tokenValue}>{tx.symbol}</Text>
                </View>
              </View>
            ))
          ) : (
            <Text style={styles.emptyText}>No recent transactions</Text>
          )}
        </View>

        {/* Wallet Address */}
        <View style={styles.card}>
          <View style={styles.cardHeader}>
            <Ionicons name="wallet-outline" size={20} color="#9945FF" />
            <Text style={styles.cardTitle}>Wallet Address</Text>
          </View>
          <Pressable style={styles.addressContainer} onPress={handleCopyWallet}>
            <Text style={styles.addressText}>
              {`${walletAddress.slice(0, 8)}...${walletAddress.slice(-8)}`}
            </Text>
            <Ionicons name="copy-outline" size={16} color="#9945FF" />
          </Pressable>
        </View>

        {/* Send Modal */}
        {showSendModal && (
          <Modal
            visible={showSendModal}
            transparent={true}
            animationType="fade"
            onRequestClose={() => setShowSendModal(false)}
          >
            <View style={styles.modalOverlay}>
              <View style={styles.modal}>
                <Text style={styles.modalTitle}>Send {selectedToken?.symbol || 'SOL'}</Text>
                
                <Text style={styles.inputLabel}>Recipient:</Text>
                {selectedRecipient ? (
                  <View style={styles.selectedRecipient}>
                    <View style={styles.recipientInfo}>
                      <Text style={styles.recipientName}>
                        {selectedRecipient.other_user.display_name || selectedRecipient.other_user.username}
                      </Text>
                      <Text style={styles.recipientAddress} numberOfLines={1}>
                        {selectedRecipient.other_user.wallet_address}
                      </Text>
                    </View>
                    <Pressable 
                      style={styles.changeRecipientButton}
                      onPress={() => setShowRecipientPicker(true)}
                    >
                      <Text style={styles.changeRecipientText}>Change</Text>
                    </Pressable>
                  </View>
                ) : (
                  <>
                    <Pressable
                      style={styles.recipientPickerButton}
                      onPress={() => setShowRecipientPicker(true)}
                    >
                      <Text style={styles.recipientPickerText}>
                        {matches.length > 0 ? 'Choose from matches' : 'No matches with wallets'}
                      </Text>
                      <Ionicons name="chevron-down" size={20} color="#9945FF" />
                    </Pressable>
                    
                    <Text style={styles.orText}>or</Text>
                    
                    <TextInput
                      style={styles.input}
                      value={sendAddress}
                      onChangeText={setSendAddress}
                      placeholder="Enter Solana address manually..."
                      placeholderTextColor="#666666"
                    />
                  </>
                )}
                
                <Text style={styles.inputLabel}>Amount ({selectedToken?.symbol || 'SOL'}):</Text>
                <TextInput
                  style={styles.input}
                  value={sendAmount}
                  onChangeText={setSendAmount}
                  placeholder="0.0"
                  placeholderTextColor="#666666"
                  keyboardType="numeric"
                />
                
                <Text style={styles.balanceText}>Available: {formatTokenAmount(selectedToken?.balance || solBalance, selectedToken?.symbol || 'SOL')} {selectedToken?.symbol || 'SOL'}</Text>
                
                <View style={styles.modalActions}>
                  <Pressable 
                    style={[styles.modalButton, styles.cancelButton]}
                    onPress={() => setShowSendModal(false)}
                  >
                    <Text style={styles.cancelButtonText}>Cancel</Text>
                  </Pressable>
                  <Pressable 
                    style={[styles.modalButton, styles.sendButton, loading && styles.disabledButton]}
                    onPress={handleSend}
                    disabled={loading}
                  >
                    {loading ? (
                      <ActivityIndicator size="small" color="#FFFFFF" />
                    ) : (
                      <Text style={styles.sendButtonText}>Send</Text>
                    )}
                  </Pressable>
                </View>
              </View>
            </View>
          </Modal>
        )}

        {/* Receive Modal */}
        {showReceiveModal && (
          <Modal
            visible={showReceiveModal}
            transparent={true}
            animationType="fade"
            onRequestClose={() => setShowReceiveModal(false)}
          >
            <View style={styles.modalOverlay}>
              <View style={styles.modal}>
                <Text style={styles.modalTitle}>Receive SOL</Text>
                
                <View style={styles.qrContainer}>
                  {qrCodeDataUrl ? (
                    <Image
                      source={{ uri: qrCodeDataUrl }}
                      style={styles.qrImage}
                      resizeMode="contain"
                    />
                  ) : (
                    <View style={styles.qrPlaceholder}>
                      <Ionicons name="qr-code-outline" size={120} color="#9945FF" />
                      <Text style={styles.qrPlaceholderText}>Generating QR Code...</Text>
                    </View>
                  )}
                </View>
                
                <Text style={styles.modalSubtitle}>Scan QR Code or copy address below</Text>
                
                <View style={styles.receiveAddressContainer}>
                  <Text style={styles.receiveAddressText} numberOfLines={2}>
                    {walletAddress}
                  </Text>
                  <Pressable 
                    style={styles.copyButton}
                    onPress={handleCopyWallet}
                  >
                    <Ionicons name="copy-outline" size={16} color="#9945FF" />
                  </Pressable>
                </View>
                
                <Text style={styles.warningText}>
                  Only send SOL and SPL tokens to this address
                </Text>
                
                <View style={styles.modalActions}>
                  <Pressable 
                    style={[styles.modalButton, styles.cancelButton]}
                    onPress={() => setShowReceiveModal(false)}
                  >
                    <Text style={styles.cancelButtonText}>Close</Text>
                  </Pressable>
                </View>
              </View>
            </View>
          </Modal>
        )}

        {/* Token Picker Modal */}
        {showTokenPicker && (
          <Modal
            visible={showTokenPicker}
            transparent={true}
            animationType="fade"
            onRequestClose={() => setShowTokenPicker(false)}
          >
            <View style={styles.modalOverlay}>
              <View style={styles.modal}>
                <Text style={styles.modalTitle}>Select Token to Send</Text>
                
                <ScrollView style={styles.tokenPickerScroll}>
                  {tokenBalances.map((token: any, index: number) => (
                    <Pressable
                      key={index}
                      style={[styles.tokenPickerItem, index > 0 && styles.tokenPickerItemBorder]}
                      onPress={() => {
                        setSelectedToken(token.mint === 'native' ? null : token);
                        setSendAmount('');
                        setSendAddress('');
                        setShowTokenPicker(false);
                        setShowSendModal(true);
                      }}
                    >
                      <View style={styles.tokenPickerInfo}>
                        <View>
                          <Text style={styles.tokenPickerSymbol}>{token.symbol}</Text>
                          <Text style={styles.tokenPickerName}>{token.name}</Text>
                        </View>
                        <View style={styles.tokenPickerBalance}>
                          <Text style={styles.tokenPickerAmount}>{formatTokenAmount(token.balance, token.symbol)}</Text>
                          <Text style={styles.tokenPickerValue}>${formatNumber(token.value, 2)}</Text>
                        </View>
                      </View>
                    </Pressable>
                  ))}
                </ScrollView>
                
                <Pressable 
                  style={[styles.modalButton, styles.cancelButton]}
                  onPress={() => setShowTokenPicker(false)}
                >
                  <Text style={styles.cancelButtonText}>Cancel</Text>
                </Pressable>
              </View>
            </View>
          </Modal>
        )}

        {/* Recipient Picker Modal */}
        {showRecipientPicker && (
          <Modal
            visible={showRecipientPicker}
            transparent={true}
            animationType="fade"
            onRequestClose={() => setShowRecipientPicker(false)}
          >
            <View style={styles.modalOverlay}>
              <View style={styles.modal}>
                <Text style={styles.modalTitle}>Select Recipient</Text>
                
                {matches.length > 0 ? (
                  <ScrollView style={styles.recipientPickerScroll}>
                    {matches.map((match, index) => (
                      <Pressable
                        key={match.id}
                        style={[styles.recipientPickerItem, index > 0 && styles.recipientPickerItemBorder]}
                        onPress={() => {
                          setSelectedRecipient(match);
                          setSendAddress(match.other_user.wallet_address);
                          setShowRecipientPicker(false);
                        }}
                      >
                        <View style={styles.recipientPickerInfo}>
                          {match.other_user.twitter_avatar_url || match.other_user.avatar_url ? (
                            <Image
                              source={{ uri: match.other_user.twitter_avatar_url || match.other_user.avatar_url }}
                              style={styles.recipientAvatar}
                            />
                          ) : (
                            <View style={styles.recipientAvatarPlaceholder}>
                              <Text style={styles.recipientAvatarText}>
                                {(match.other_user.username || 'U').charAt(0).toUpperCase()}
                              </Text>
                            </View>
                          )}
                          
                          <View style={styles.recipientDetails}>
                            <Text style={styles.recipientPickerName}>
                              {match.other_user.display_name || match.other_user.username}
                            </Text>
                            <Text style={styles.recipientPickerAddress} numberOfLines={1}>
                              {match.other_user.wallet_address}
                            </Text>
                            <Text style={styles.recipientMatchDate}>
                              Matched {new Date(match.created_at).toLocaleDateString()}
                            </Text>
                          </View>
                        </View>
                      </Pressable>
                    ))}
                  </ScrollView>
                ) : (
                  <View style={styles.noMatchesContainer}>
                    <Ionicons name="people-outline" size={48} color="#666666" />
                    <Text style={styles.noMatchesText}>No matches with connected wallets</Text>
                    <Text style={styles.noMatchesSubtext}>Matched users need to connect their wallets first</Text>
                  </View>
                )}
                
                <View style={styles.modalActions}>
                  <Pressable 
                    style={[styles.modalButton, styles.cancelButton]}
                    onPress={() => setShowRecipientPicker(false)}
                  >
                    <Text style={styles.cancelButtonText}>Cancel</Text>
                  </Pressable>
                </View>
              </View>
            </View>
          </Modal>
        )}

        {/* Swap Modal */}
        {showSwapModal && (
          <SwapModal
            visible={showSwapModal}
            onClose={() => setShowSwapModal(false)}
            walletInstance={wallets?.[0]}
            walletAddress={walletAddress || ''}
            tokenBalances={tokenBalances}
            onSwapComplete={() => {
              // Refresh wallet data after swap
              handleRefresh();
            }}
          />
        )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  scrollView: {
    flex: 1,
  },
  content: {
    paddingHorizontal: 24,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: 24,
  },
  backButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  refreshButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  title: {
    fontSize: 24,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  portfolioCard: {
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 20,
    padding: 24,
    marginBottom: 0,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
    alignItems: 'center',
  },
  portfolioLabel: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 8,
  },
  portfolioValue: {
    fontSize: 32,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  lastUpdated: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  card: {
    backgroundColor: 'rgba(255, 255, 255, 0.08)',
    borderRadius: 16,
    padding: 20,
    marginBottom: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.1)',
  },
  cardHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 16,
  },
  cardTitle: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginLeft: 8,
  },
  solIcon: {
    fontSize: 20,
    color: '#9945FF',
    fontWeight: 'bold',
  },
  addressContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    padding: 12,
    borderRadius: 12,
  },
  addressText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    flex: 1,
  },
  balanceContainer: {
    alignItems: 'flex-start',
  },
  balanceAmount: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  balanceValue: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  tokenRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: 12,
  },
  tokenRowBorder: {
    borderTopWidth: 1,
    borderTopColor: 'rgba(255, 255, 255, 0.1)',
  },
  tokenInfo: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  tokenInfoColumn: {
    flexDirection: 'column',
    alignItems: 'flex-start',
  },
  tokenIcon: {
    fontSize: 24,
    marginRight: 12,
  },
  tokenSymbol: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  tokenName: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  tokenBalance: {
    alignItems: 'flex-end',
  },
  tokenBalanceSection: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  tokenSendButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    marginLeft: 8,
  },
  tokenAmount: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  tokenValue: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  nftContainer: {
    alignItems: 'flex-start',
  },
  nftCount: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  nftSubtext: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  actionsContainer: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    marginVertical: 12,
  },
  actionButton: {
    alignItems: 'center',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    paddingVertical: 16,
    paddingHorizontal: 24,
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
    flex: 1,
    marginHorizontal: 6,
  },
  actionText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginTop: 4,
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
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
  },
  modalOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    justifyContent: 'center',
    alignItems: 'center',
    zIndex: 1000,
  },
  modal: {
    backgroundColor: '#1A1F3A',
    borderRadius: 20,
    padding: 24,
    width: '90%',
    maxWidth: 400,
  },
  modalTitle: {
    fontSize: 20,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
    marginBottom: 20,
    textAlign: 'center',
  },
  inputLabel: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#B8B8B8',
    marginBottom: 8,
    marginTop: 16,
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
  balanceText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#9945FF',
    marginTop: 8,
    textAlign: 'center',
  },
  modalActions: {
    flexDirection: 'row',
    marginTop: 24,
    gap: 12,
  },
  modalButton: {
    flex: 1,
    paddingVertical: 16,
    borderRadius: 12,
    alignItems: 'center',
  },
  cancelButton: {
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
  },
  sendButton: {
    backgroundColor: '#9945FF',
  },
  disabledButton: {
    opacity: 0.5,
  },
  cancelButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  sendButtonText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
  },
  qrContainer: {
    alignItems: 'center',
    marginVertical: 20,
    padding: 20,
    backgroundColor: '#1A1F3A',
    borderRadius: 16,
    borderWidth: 2,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  modalSubtitle: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    textAlign: 'center',
    marginBottom: 20,
  },
  receiveAddressContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 12,
    padding: 16,
    marginBottom: 16,
  },
  receiveAddressText: {
    flex: 1,
    fontSize: 12,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
    marginRight: 12,
  },
  copyButton: {
    padding: 8,
    borderRadius: 8,
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
  },
  warningText: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#FFB800',
    textAlign: 'center',
    marginBottom: 20,
  },
  qrImage: {
    width: 200,
    height: 200,
  },
  qrPlaceholder: {
    alignItems: 'center',
    justifyContent: 'center',
    width: 200,
    height: 200,
  },
  qrPlaceholderText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
    marginTop: 8,
  },
  tokenPickerScroll: {
    maxHeight: 300,
    marginVertical: 16,
  },
  tokenPickerItem: {
    paddingVertical: 16,
    paddingHorizontal: 8,
  },
  tokenPickerItemBorder: {
    borderTopWidth: 1,
    borderTopColor: 'rgba(255, 255, 255, 0.1)',
  },
  tokenPickerInfo: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  tokenPickerSymbol: {
    fontSize: 18,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  tokenPickerName: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  tokenPickerBalance: {
    alignItems: 'flex-end',
  },
  tokenPickerAmount: {
    fontSize: 16,
    fontFamily: 'Inter-Medium',
    color: '#FFFFFF',
  },
  tokenPickerValue: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  selectedRecipient: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: 'rgba(153, 69, 255, 0.1)',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(153, 69, 255, 0.2)',
  },
  recipientInfo: {
    flex: 1,
  },
  recipientName: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  recipientAddress: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
  },
  changeRecipientButton: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    backgroundColor: 'rgba(153, 69, 255, 0.2)',
    borderRadius: 8,
  },
  changeRecipientText: {
    fontSize: 14,
    fontFamily: 'Inter-Medium',
    color: '#9945FF',
  },
  recipientPickerButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.2)',
    marginBottom: 12,
  },
  recipientPickerText: {
    fontSize: 16,
    fontFamily: 'Inter-Regular',
    color: '#FFFFFF',
  },
  orText: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
    marginVertical: 8,
  },
  recipientPickerScroll: {
    maxHeight: 300,
    marginVertical: 16,
  },
  recipientPickerItem: {
    paddingVertical: 12,
    paddingHorizontal: 8,
  },
  recipientPickerItemBorder: {
    borderTopWidth: 1,
    borderTopColor: 'rgba(255, 255, 255, 0.1)',
  },
  recipientPickerInfo: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  recipientAvatar: {
    width: 48,
    height: 48,
    borderRadius: 24,
    marginRight: 12,
  },
  recipientAvatarPlaceholder: {
    width: 48,
    height: 48,
    borderRadius: 24,
    backgroundColor: '#9945FF',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  recipientAvatarText: {
    fontSize: 18,
    fontFamily: 'Inter-Bold',
    color: '#FFFFFF',
  },
  recipientDetails: {
    flex: 1,
  },
  recipientPickerName: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginBottom: 4,
  },
  recipientPickerAddress: {
    fontSize: 12,
    fontFamily: 'Inter-Regular',
    color: '#B8B8B8',
    marginBottom: 2,
  },
  recipientMatchDate: {
    fontSize: 11,
    fontFamily: 'Inter-Regular',
    color: '#666666',
  },
  noMatchesContainer: {
    alignItems: 'center',
    paddingVertical: 40,
  },
  noMatchesText: {
    fontSize: 16,
    fontFamily: 'Inter-SemiBold',
    color: '#FFFFFF',
    marginTop: 16,
    marginBottom: 8,
  },
  noMatchesSubtext: {
    fontSize: 14,
    fontFamily: 'Inter-Regular',
    color: '#666666',
    textAlign: 'center',
  },
});