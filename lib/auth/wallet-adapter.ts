// Mock imports for UI testing
const transact = async (callback: any) => {
  console.log('Mock wallet adapter - transact called');
  return null;
};
type Web3MobileWallet = any;

import { Connection, PublicKey, Transaction, clusterApiUrl } from '@solana/web3.js';
import AsyncStorage from '@react-native-async-storage/async-storage';

const WALLET_STORAGE_KEY = '@solmates/wallet';
const RPC_ENDPOINT = process.env.EXPO_PUBLIC_RPC_ENDPOINT || clusterApiUrl('mainnet-beta');

export interface WalletSession {
  publicKey: string;
  address: string;
  timestamp: number;
}

export class WalletAdapter {
  private connection: Connection;
  private currentWallet: Web3MobileWallet | null = null;
  private session: WalletSession | null = null;

  constructor() {
    this.connection = new Connection(RPC_ENDPOINT, 'confirmed');
  }

  async connect(): Promise<WalletSession> {
    try {
      // Mock wallet connection for UI testing
      const mockPublicKey = '11111111111111111111111111111111';
      
      this.session = {
        publicKey: mockPublicKey,
        address: mockPublicKey,
        timestamp: Date.now(),
      };

      await AsyncStorage.setItem(WALLET_STORAGE_KEY, JSON.stringify(this.session));
      
      return this.session;
    } catch (error) {
      console.error('Wallet connection error:', error);
      throw new Error('Failed to connect wallet');
    }
  }

  async disconnect(): Promise<void> {
    if (this.currentWallet) {
      try {
        await transact(async (wallet) => {
          await wallet.deauthorize();
        });
      } catch (error) {
        console.error('Deauthorization error:', error);
      }
    }

    this.currentWallet = null;
    this.session = null;
    await AsyncStorage.removeItem(WALLET_STORAGE_KEY);
  }

  async getSession(): Promise<WalletSession | null> {
    if (this.session) return this.session;

    try {
      const stored = await AsyncStorage.getItem(WALLET_STORAGE_KEY);
      if (stored) {
        this.session = JSON.parse(stored);
        return this.session;
      }
    } catch (error) {
      console.error('Failed to load wallet session:', error);
    }

    return null;
  }

  async signMessage(message: string): Promise<string> {
    if (!this.session) throw new Error('Wallet not connected');

    const result = await transact(async (wallet) => {
      const encodedMessage = new TextEncoder().encode(message);
      const signedMessage = await wallet.signMessage({
        message: encodedMessage,
        addresses: [this.session!.publicKey],
      });

      return Buffer.from(signedMessage[0]).toString('base64');
    });

    return result;
  }

  async signAndSendTransaction(transaction: Transaction): Promise<string> {
    if (!this.session) throw new Error('Wallet not connected');

    const result = await transact(async (wallet) => {
      const latestBlockhash = await this.connection.getLatestBlockhash();
      
      transaction.recentBlockhash = latestBlockhash.blockhash;
      transaction.feePayer = new PublicKey(this.session!.publicKey);

      const signedTx = await wallet.signAndSendTransactions({
        transactions: [transaction],
      });

      return signedTx[0];
    });

    return result;
  }

  getConnection(): Connection {
    return this.connection;
  }

  getPublicKey(): PublicKey | null {
    if (!this.session) return null;
    return new PublicKey(this.session.publicKey);
  }
}

export const walletAdapter = new WalletAdapter();