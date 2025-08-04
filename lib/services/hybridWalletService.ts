import { Connection, Transaction, VersionedTransaction } from '@solana/web3.js';
import { transact } from '@solana-mobile/mobile-wallet-adapter-protocol';
import { Web3MobileWallet } from '@solana-mobile/mobile-wallet-adapter-protocol-web3js';
import { privyWalletService } from './privyWalletService';
import { Platform } from 'react-native';

export type WalletType = 'mobile' | 'privy';

export interface WalletCapability {
  type: WalletType;
  available: boolean;
  deviceSupported: boolean;
  reason?: string;
}

export class HybridWalletService {
  private static _capabilities: WalletCapability | null = null;

  /**
   * Detect available wallet capabilities on the device
   */
  static async getWalletCapabilities(): Promise<WalletCapability> {
    if (this._capabilities) {
      return this._capabilities;
    }

    try {
      // Check if we're on Android (required for Mobile Wallet Adapter)
      if (Platform.OS !== 'android') {
        this._capabilities = {
          type: 'privy',
          available: true,
          deviceSupported: false,
          reason: 'Mobile Wallet Adapter requires Android'
        };
        return this._capabilities;
      }

      // Try to detect Mobile Wallet Adapter support
      const hasMobileWallet = await this.checkMobileWalletSupport();
      
      if (hasMobileWallet) {
        this._capabilities = {
          type: 'mobile',
          available: true,
          deviceSupported: true
        };
      } else {
        this._capabilities = {
          type: 'privy',
          available: true,
          deviceSupported: true,
          reason: 'Mobile wallet not installed or supported'
        };
      }
    } catch (error) {
      console.log('Wallet capability detection failed, falling back to Privy:', error);
      this._capabilities = {
        type: 'privy',
        available: true,
        deviceSupported: true,
        reason: 'Detection failed, using fallback'
      };
    }

    return this._capabilities;
  }

  /**
   * Check if Mobile Wallet Adapter is supported
   */
  private static async checkMobileWalletSupport(): Promise<boolean> {
    try {
      // Simple check - try to access the Mobile Wallet Adapter
      // This is a basic detection method
      return Platform.OS === 'android' && typeof transact === 'function';
    } catch (error) {
      return false;
    }
  }

  /**
   * Get the preferred wallet service
   */
  static async getPreferredWallet(): Promise<WalletType> {
    const capabilities = await this.getWalletCapabilities();
    return capabilities.type;
  }

  /**
   * Sign and send transaction using the best available wallet
   */
  static async signAndSendTransaction(
    transaction: Transaction | VersionedTransaction,
    connection: Connection
  ): Promise<string> {
    const walletType = await this.getPreferredWallet();

    console.log(`🔄 Using ${walletType} wallet for transaction`);

    try {
      if (walletType === 'mobile') {
        return await this.signWithMobileWallet(transaction, connection);
      } else {
        return await this.signWithPrivy(transaction, connection);
      }
    } catch (error) {
      console.error(`❌ ${walletType} wallet failed, trying fallback:`, error);
      
      // Fallback to Privy if mobile wallet fails
      if (walletType === 'mobile') {
        console.log('🔄 Falling back to Privy wallet');
        return await this.signWithPrivy(transaction, connection);
      }
      
      throw error;
    }
  }

  /**
   * Sign transaction with Mobile Wallet Adapter
   */
  private static async signWithMobileWallet(
    transaction: Transaction | VersionedTransaction,
    connection: Connection
  ): Promise<string> {
    return new Promise((resolve, reject) => {
      transact(async (wallet: Web3MobileWallet) => {
        try {
          console.log('📱 Signing with Mobile Wallet Adapter');
          
          // Get the latest blockhash if not already set
          if (transaction instanceof Transaction) {
            if (!transaction.recentBlockhash) {
              const { blockhash } = await connection.getLatestBlockhash();
              transaction.recentBlockhash = blockhash;
            }
          }

          // Sign and send the transaction
          const signature = await wallet.signAndSendTransaction(transaction);
          
          console.log(`✅ Mobile wallet transaction sent: ${signature}`);
          
          // Wait for confirmation
          try {
            const confirmation = await connection.confirmTransaction(signature, 'confirmed');
            if (confirmation.value.err) {
              throw new Error(`Transaction failed: ${JSON.stringify(confirmation.value.err)}`);
            }
            console.log(`✅ Mobile wallet transaction confirmed: ${signature}`);
          } catch (confirmError) {
            console.log(`⚠️ Could not confirm transaction, but it was sent: ${confirmError}`);
          }
          
          resolve(signature);
        } catch (error) {
          console.error('❌ Mobile wallet signing failed:', error);
          reject(error);
        }
      }).catch(reject);
    });
  }

  /**
   * Sign transaction with Privy (fallback)
   */
  private static async signWithPrivy(
    transaction: Transaction | VersionedTransaction,
    connection: Connection
  ): Promise<string> {
    console.log('🔐 Signing with Privy wallet');
    return await privyWalletService.signAndSendTransaction(transaction, connection);
  }

  /**
   * Get wallet info for UI display
   */
  static async getWalletInfo(): Promise<{
    type: WalletType;
    name: string;
    icon: string;
    description: string;
  }> {
    const walletType = await this.getPreferredWallet();
    
    if (walletType === 'mobile') {
      return {
        type: 'mobile',
        name: 'Solana Mobile Wallet',
        icon: 'phone-portrait',
        description: 'Native mobile wallet with hardware security'
      };
    } else {
      return {
        type: 'privy',
        name: 'Embedded Wallet',
        icon: 'wallet',
        description: 'Secure embedded wallet for easy access'
      };
    }
  }

  /**
   * Check if device is Solana Seeker for special features
   */
  static async isSeekerDevice(): Promise<boolean> {
    try {
      // This is a simplified check - in reality you'd check device model
      // For now, we'll assume any Android device with MWA could be Seeker
      const capabilities = await this.getWalletCapabilities();
      return capabilities.type === 'mobile' && Platform.OS === 'android';
    } catch {
      return false;
    }
  }

  /**
   * Reset cached capabilities (useful for testing)
   */
  static resetCapabilities(): void {
    this._capabilities = null;
  }
}

export default HybridWalletService;