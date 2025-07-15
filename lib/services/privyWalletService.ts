import { Transaction, VersionedTransaction, Connection, PublicKey } from '@solana/web3.js';

// Ensure Buffer is available globally - multiple approaches
if (typeof global !== 'undefined') {
  if (!global.Buffer) {
    global.Buffer = require('buffer').Buffer;
  }
  if (!global.process) {
    global.process = require('process');
  }
}

// Also try direct import
import { Buffer } from 'buffer';

/**
 * Service for handling Privy wallet operations
 */
export class PrivyWalletService {
  /**
   * Sign a transaction with Privy embedded wallet
   * Handles both legacy and versioned transactions
   */
  static async signTransaction(
    wallet: any,
    transaction: Transaction | VersionedTransaction,
    connection: Connection
  ): Promise<Uint8Array> {
    try {
      console.log('🔐 Preparing transaction for Privy signing...');
      console.log('🔐 Wallet object:', {
        address: wallet?.address,
        methods: Object.getOwnPropertyNames(wallet || {}),
        type: typeof wallet
      });
      
      // Check if wallet has signing capability
      if (!wallet?.address) {
        throw new Error('Invalid wallet instance');
      }

      // Get the provider and use Privy's documented request method
      if (typeof wallet.getProvider !== 'function') {
        throw new Error('Wallet does not have getProvider method');
      }

      console.log('🔐 Getting provider from wallet...');
      const provider = await wallet.getProvider();
      console.log('🔐 Provider obtained:', {
        hasProvider: !!provider,
        hasRequest: typeof provider?.request === 'function',
        providerMethods: provider ? Object.getOwnPropertyNames(provider).filter(prop => typeof provider[prop] === 'function') : [],
        providerType: typeof provider
      });

      if (!provider || typeof provider.request !== 'function') {
        throw new Error('Provider does not have request method');
      }

      // Use Privy's documented signTransaction method via provider.request
      console.log('🔐 Using provider.request with signTransaction...');
      
      // Get recent blockhash if not set
      if (!transaction.recentBlockhash) {
        const { blockhash } = await connection.getLatestBlockhash();
        transaction.recentBlockhash = blockhash;
      }

      // Set fee payer if not set
      if (!transaction.feePayer) {
        transaction.feePayer = new PublicKey(wallet.address);
      }

      // Try to sign the transaction using Privy's provider.request method
      const response = await provider.request({
        method: 'signTransaction',
        params: {
          transaction: transaction
        }
      });

      console.log('🔐 Sign response:', response);

      // The response should contain the signed transaction
      if (response && response.transaction) {
        const serialized = response.transaction.serialize ? response.transaction.serialize() : response.transaction;
        return new Uint8Array(serialized);
      } else if (response && response.signature) {
        // If we get back a signature, add it to the transaction
        transaction.addSignature(new PublicKey(wallet.address), response.signature);
        return new Uint8Array(transaction.serialize());
      }

      throw new Error(`Unexpected response from provider.request: ${JSON.stringify(response)}`);
      
    } catch (error) {
      throw error;
    }
  }

  /**
   * Sign and send a transaction using Privy wallet
   */
  static async signAndSendTransaction(
    wallet: any,
    transaction: Transaction | VersionedTransaction,
    connection: Connection
  ): Promise<string> {
    try {
      console.log('📡 Starting signAndSendTransaction...');
      console.log('📡 Buffer check:', {
        globalBuffer: typeof global?.Buffer,
        bufferAvailable: typeof Buffer,
        nodeBuffer: typeof require('buffer')?.Buffer
      });

      // Get the provider
      if (typeof wallet.getProvider !== 'function') {
        throw new Error('Wallet does not have getProvider method');
      }

      const provider = await wallet.getProvider();
      if (!provider || typeof provider.request !== 'function') {
        throw new Error('Provider does not have request method');
      }

      // Get recent blockhash if not set
      if (!transaction.recentBlockhash) {
        const { blockhash } = await connection.getLatestBlockhash();
        transaction.recentBlockhash = blockhash;
      }

      // Set fee payer if not set
      if (!transaction.feePayer) {
        transaction.feePayer = new PublicKey(wallet.address);
      }

      // Use Privy's documented signAndSendTransaction method
      console.log('📡 Using provider.request with signAndSendTransaction...');
      const response = await provider.request({
        method: 'signAndSendTransaction',
        params: {
          transaction: transaction,
          connection: connection
        }
      });

      console.log('📡 SignAndSend response:', response);

      if (response && response.signature) {
        console.log(`✅ Transaction sent and confirmed: ${response.signature}`);
        return response.signature;
      }

      throw new Error(`Unexpected response from provider.request: ${JSON.stringify(response)}`);
      
    } catch (error) {
      throw error;
    }
  }

  /**
   * Check if a wallet instance is valid and can sign
   */
  static isValidWallet(wallet: any): boolean {
    console.log('🔍 Wallet validation check:', {
      hasAddress: !!wallet?.address,
      address: wallet?.address,
      hasSignMessage: typeof wallet?.signMessage === 'function',
      hasSignTransaction: typeof wallet?.signTransaction === 'function',
      hasGetProvider: typeof wallet?.getProvider === 'function',
      walletType: typeof wallet,
      walletConstructor: wallet?.constructor?.name,
      allMethods: wallet ? Object.getOwnPropertyNames(wallet).filter(prop => typeof wallet[prop] === 'function') : [],
      allProperties: wallet ? Object.getOwnPropertyNames(wallet) : []
    });
    
    // Wallet is valid if it has address and either signing methods or a provider
    return !!(wallet?.address && (wallet.signMessage || wallet.signTransaction || wallet.getProvider));
  }
}