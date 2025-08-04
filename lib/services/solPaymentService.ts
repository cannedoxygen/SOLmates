import { Connection, PublicKey, Transaction, SystemProgram, LAMPORTS_PER_SOL } from '@solana/web3.js';
import HybridWalletService from './hybridWalletService';
import { supabase } from '../supabase/client';
import Constants from 'expo-constants';

// Ensure Buffer is available before any Solana operations
if (typeof global !== 'undefined' && !global.Buffer) {
  const { Buffer } = require('buffer');
  global.Buffer = Buffer;
}

// Solana RPC connection
const HELIUS_API_KEY = '99b7e94e-9dff-4de3-82ac-567bfbda369c';
const connection = new Connection(`https://mainnet.helius-rpc.com/?api-key=${HELIUS_API_KEY}`, 'confirmed');

// Current SOL/USD rate - in production, fetch from an API
const SOL_USD_RATE = 140.0;

export interface PaymentTransaction {
  id: string;
  user_id: string;
  product_id: string;
  sol_amount: number;
  usd_amount: number;
  transaction_hash?: string;
  status: 'pending' | 'completed' | 'failed';
  created_at: string;
}

export class SolPaymentService {
  
  /**
   * Get project wallet address from environment
   */
  private static getProjectWallet(): string {
    // Try multiple ways to get the project wallet
    const projectWallet = process.env.EXPO_PUBLIC_PROJECT_WALLET || 
                          Constants.expoConfig?.extra?.projectWallet ||
                          Constants.manifest?.extra?.projectWallet ||
                          'BgYCyVYgymjGwki2Ao3ZWb7Qrbv2QXiXco8VzY4UwCyt'; // Direct fallback
    
    console.log('🔍 Environment check:', {
      fromProcessEnv: process.env.EXPO_PUBLIC_PROJECT_WALLET,
      fromExpoConfig: Constants.expoConfig?.extra?.projectWallet,
      fromManifest: Constants.manifest?.extra?.projectWallet,
      finalValue: projectWallet,
      usingFallback: !process.env.EXPO_PUBLIC_PROJECT_WALLET && !Constants.expoConfig?.extra?.projectWallet && !Constants.manifest?.extra?.projectWallet
    });
    
    if (!projectWallet) {
      throw new Error('Project wallet not configured. Please set EXPO_PUBLIC_PROJECT_WALLET in environment.');
    }
    return projectWallet;
  }

  /**
   * Convert USD amount to SOL
   */
  static usdToSol(usdAmount: number): number {
    return usdAmount / SOL_USD_RATE;
  }

  /**
   * Process SOL payment for premium purchase
   */
  static async processPayment(
    userId: string,
    productId: string,
    usdAmount: number,
    walletInstance?: any,
    walletAddress?: string
  ): Promise<PaymentTransaction> {
    try {
      const solAmount = this.usdToSol(usdAmount);
      
      console.log('💰 Processing SOL payment:', {
        userId,
        productId,
        usdAmount,
        solAmount,
        projectWallet: this.getProjectWallet()
      });

      // Create payment record
      const { data: payment, error } = await supabase
        .from('premium_payments')
        .insert([{
          user_id: userId,
          product_id: productId,
          sol_amount: solAmount,
          usd_amount: usdAmount,
          status: 'pending'
        }])
        .select()
        .single();

      if (error || !payment) {
        console.error('❌ Failed to create payment record:', {
          error,
          errorMessage: error?.message,
          errorCode: error?.code,
          errorDetails: error?.details,
          errorHint: error?.hint,
          tableName: 'premium_payments',
          insertData: {
            user_id: userId,
            product_id: productId,
            sol_amount: solAmount,
            usd_amount: usdAmount,
            status: 'pending'
          }
        });
        throw new Error(`Failed to create payment record: ${error?.message || 'Unknown error'}`);
      }

      console.log('✅ Payment record created:', payment.id);

      // Send SOL transaction to project wallet
      const txHash = await this.sendSolToProject(
        payment.id,
        userId,
        solAmount,
        `Premium purchase: ${productId}`,
        walletInstance,
        walletAddress // Pass the wallet address we already have
      );

      return payment;
    } catch (error) {
      console.error('❌ Payment processing failed:', error);
      throw error;
    }
  }

  /**
   * Send SOL to project wallet
   */
  private static async sendSolToProject(
    paymentId: string,
    userId: string,
    solAmount: number,
    memo: string,
    walletInstance?: any,
    walletAddress?: string
  ): Promise<string> {
    try {
      console.log(`💰 Sending ${solAmount} SOL to project wallet for payment ${paymentId}`);

      // Use provided wallet address or get from database
      let userWalletAddress = walletAddress;
      if (!userWalletAddress) {
        const { data: user, error: userError } = await supabase
          .from('users')
          .select('wallet_address')
          .eq('id', userId)
          .single();

        if (userError || !user?.wallet_address) {
          throw new Error('Failed to get user wallet address');
        }
        userWalletAddress = user.wallet_address;
      }

      const fromPubkey = new PublicKey(userWalletAddress);
      const toPubkey = new PublicKey(this.getProjectWallet());

      console.log(`💰 Transfer: ${solAmount} SOL from ${userWalletAddress} to ${this.getProjectWallet()}`);

      // Create transfer instruction
      const transferInstruction = SystemProgram.transfer({
        fromPubkey,
        toPubkey,
        lamports: Math.floor(solAmount * LAMPORTS_PER_SOL) // Ensure whole number
      });

      // Create transaction
      const transaction = new Transaction();
      
      // Add memo
      if (memo) {
        const memoInstruction = {
          keys: [],
          programId: new PublicKey('MemoSq4gqABAXKb96qnH8TysNcWxMyWCqXgDLGmfcHr'),
          data: Buffer.from(memo, 'utf-8')
        };
        transaction.add(memoInstruction);
      }
      
      transaction.add(transferInstruction);

      // Get recent blockhash
      const { blockhash } = await connection.getLatestBlockhash();
      transaction.recentBlockhash = blockhash;
      transaction.feePayer = fromPubkey;

      console.log(`💰 Transaction created, requesting signature...`);

      // Sign and send transaction
      if (!walletInstance) {
        throw new Error('Wallet instance required for signing');
      }

      try {
        // Sign and send transaction using hybrid wallet service
        const txHash = await HybridWalletService.signAndSendTransaction(
          transaction,
          connection
        );
        
        // Update database with transaction hash
        const { error } = await supabase
          .from('premium_payments')
          .update({
            transaction_hash: txHash,
            status: 'completed'
          })
          .eq('id', paymentId);
        
        if (error) throw error;
        
        console.log(`✅ SOL payment completed: ${txHash}`);
        return txHash;
        
      } catch (signError) {
        console.error('❌ Transaction signing failed:', signError);
        
        // Fallback to simulation for development
        if (signError.message?.includes('signing not available') || 
            signError.message?.includes('signTransaction is not a function')) {
          console.log('⚠️ Using simulation mode for development');
          
          await new Promise(resolve => setTimeout(resolve, 1500));
          
          const mockTxHash = `sol_payment_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
          
          const { error } = await supabase
            .from('premium_payments')
            .update({
              transaction_hash: mockTxHash,
              status: 'completed'
            })
            .eq('id', paymentId);
          
          if (error) throw error;
          
          console.log(`✅ SOL payment simulated: ${mockTxHash}`);
          return mockTxHash;
        }
        
        throw signError;
      }

    } catch (error) {
      console.error('❌ SOL payment failed:', error);
      
      // Mark payment as failed
      await supabase
        .from('premium_payments')
        .update({ status: 'failed' })
        .eq('id', paymentId);
      
      throw error;
    }
  }

  /**
   * Get payment history for a user
   */
  static async getUserPayments(userId: string): Promise<PaymentTransaction[]> {
    try {
      const { data: payments, error } = await supabase
        .from('premium_payments')
        .select('*')
        .eq('user_id', userId)
        .order('created_at', { ascending: false })
        .limit(50);

      if (error) throw error;

      return payments || [];
    } catch (error) {
      console.error('❌ Failed to get user payments:', error);
      return [];
    }
  }

  /**
   * Check if user has sufficient SOL balance
   */
  static async checkSufficientBalance(userId: string, usdAmount: number, walletAddress?: string): Promise<boolean> {
    try {
      let userWalletAddress = walletAddress;
      
      // If wallet address not provided, try to get from database
      if (!userWalletAddress) {
        const { data: user, error } = await supabase
          .from('users')
          .select('wallet_address')
          .eq('id', userId)
          .single();

        if (error || !user?.wallet_address) {
          console.error('❌ No wallet address found for user');
          return false;
        }
        userWalletAddress = user.wallet_address;
      }

      const pubkey = new PublicKey(userWalletAddress);
      const balance = await connection.getBalance(pubkey);
      const balanceInSol = balance / LAMPORTS_PER_SOL;
      const requiredSol = this.usdToSol(usdAmount);
      
      // Add small buffer for transaction fees
      const requiredWithFees = requiredSol + 0.001;
      
      console.log(`💰 Balance check: ${balanceInSol} SOL available, ${requiredWithFees} SOL required (wallet: ${userWalletAddress})`);
      
      return balanceInSol >= requiredWithFees;
    } catch (error) {
      console.error('❌ Failed to check balance:', error);
      return false;
    }
  }
}