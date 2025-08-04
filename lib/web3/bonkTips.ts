import { 
  Connection, 
  PublicKey, 
  Transaction, 
  SystemProgram,
  LAMPORTS_PER_SOL,
} from '@solana/web3.js';
import { 
  createTransferInstruction,
  getAssociatedTokenAddress,
  getAccount,
  createAssociatedTokenAccountInstruction,
} from '@solana/spl-token';
import HybridWalletService from '../services/hybridWalletService';

const BONK_MINT = new PublicKey('DezXAZ8z7PnrnRJjz3wXBoRgixCa6xjnB7YaB1pPB263');
const BONK_DECIMALS = 5;
const RPC_ENDPOINT = process.env.EXPO_PUBLIC_RPC_ENDPOINT || 'https://api.mainnet-beta.solana.com';

export interface TipResult {
  signature: string;
  amount: number;
  recipient: string;
}

export class BonkTipService {
  private connection: Connection;

  constructor() {
    this.connection = new Connection(RPC_ENDPOINT, 'confirmed');
  }

  async getTokenBalance(walletAddress: string): Promise<number> {
    try {
      const publicKey = new PublicKey(walletAddress);
      const tokenAccount = await getAssociatedTokenAddress(BONK_MINT, publicKey);
      
      const accountInfo = await getAccount(this.connection, tokenAccount);
      return Number(accountInfo.amount) / Math.pow(10, BONK_DECIMALS);
    } catch (error) {
      console.error('Failed to get BONK balance:', error);
      return 0;
    }
  }

  async sendTip(
    recipientAddress: string,
    amount: number,
    message?: string
  ): Promise<TipResult | null> {
    try {
      const senderPublicKey = walletAdapter.getPublicKey();
      if (!senderPublicKey) throw new Error('Wallet not connected');

      const recipientPublicKey = new PublicKey(recipientAddress);
      
      // Get or create associated token accounts
      const senderTokenAccount = await getAssociatedTokenAddress(
        BONK_MINT,
        senderPublicKey
      );
      
      const recipientTokenAccount = await getAssociatedTokenAddress(
        BONK_MINT,
        recipientPublicKey
      );

      const transaction = new Transaction();
      
      // Check if recipient token account exists
      try {
        await getAccount(this.connection, recipientTokenAccount);
      } catch (error) {
        // Create recipient token account if it doesn't exist
        transaction.add(
          createAssociatedTokenAccountInstruction(
            senderPublicKey,
            recipientTokenAccount,
            recipientPublicKey,
            BONK_MINT
          )
        );
      }

      // Add transfer instruction
      const transferAmount = BigInt(amount * Math.pow(10, BONK_DECIMALS));
      transaction.add(
        createTransferInstruction(
          senderTokenAccount,
          recipientTokenAccount,
          senderPublicKey,
          transferAmount
        )
      );

      // Add memo if provided
      if (message) {
        transaction.add(
          SystemProgram.transfer({
            fromPubkey: senderPublicKey,
            toPubkey: senderPublicKey,
            lamports: 0,
          })
        );
        // Note: In a real implementation, you'd add a memo instruction here
      }

      const signature = await HybridWalletService.signAndSendTransaction(transaction, this.connection);
      
      return {
        signature,
        amount,
        recipient: recipientAddress,
      };
    } catch (error) {
      console.error('Failed to send BONK tip:', error);
      return null;
    }
  }

  async getTipHistory(walletAddress: string, limit = 50): Promise<any[]> {
    try {
      // In a real implementation, you'd query transaction history
      // For now, return empty array
      return [];
    } catch (error) {
      console.error('Failed to get tip history:', error);
      return [];
    }
  }

  formatBonkAmount(amount: number): string {
    if (amount >= 1000000) {
      return `${(amount / 1000000).toFixed(1)}M`;
    }
    if (amount >= 1000) {
      return `${(amount / 1000).toFixed(1)}K`;
    }
    return amount.toLocaleString();
  }

  validateTipAmount(amount: number, balance: number): string | null {
    if (amount <= 0) return 'Amount must be greater than 0';
    if (amount > balance) return 'Insufficient BONK balance';
    if (amount < 1000) return 'Minimum tip is 1,000 BONK';
    return null;
  }
}

export const bonkTipService = new BonkTipService();