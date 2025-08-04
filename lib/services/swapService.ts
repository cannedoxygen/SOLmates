import { Connection, PublicKey, Transaction, VersionedTransaction } from '@solana/web3.js';
import HybridWalletService from './hybridWalletService';

// Ensure Buffer is available
if (typeof global !== 'undefined' && !global.Buffer) {
  const { Buffer } = require('buffer');
  global.Buffer = Buffer;
}

// Jupiter API endpoint
const JUPITER_API_URL = 'https://quote-api.jup.ag/v6';

// Helius RPC connection
const HELIUS_API_KEY = '99b7e94e-9dff-4de3-82ac-567bfbda369c';
const connection = new Connection(`https://mainnet.helius-rpc.com/?api-key=${HELIUS_API_KEY}`, 'confirmed');

// Common token mints
export const TOKEN_MINTS = {
  SOL: 'So11111111111111111111111111111111111111112',
  BONK: 'DezXAZ8z7PnrnRJjz3wXBoRgixCa6xjnB7YaB1pPB263',
  USDC: 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v',
  USDT: 'Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB',
};

export interface SwapQuote {
  inputMint: string;
  outputMint: string;
  inAmount: string;
  outAmount: string;
  priceImpactPct: number;
  marketInfos: any[];
  slippageBps: number;
  otherAmountThreshold: string;
}

export interface SwapRoute {
  inputToken: {
    symbol: string;
    mint: string;
    decimals: number;
    logoURI?: string;
  };
  outputToken: {
    symbol: string;
    mint: string;
    decimals: number;
    logoURI?: string;
  };
  inputAmount: number;
  outputAmount: number;
  priceImpact: number;
  fee: number;
  route: string;
}

export class SwapService {
  /**
   * Get swap quote from Jupiter
   */
  static async getQuote(
    inputMint: string,
    outputMint: string,
    amount: number,
    inputDecimals: number = 9,
    slippageBps = 50 // 0.5% slippage
  ): Promise<SwapQuote | null> {
    try {
      console.log('🔄 Getting swap quote:', {
        inputMint,
        outputMint,
        amount,
        inputDecimals,
        slippageBps
      });

      // Convert amount to smallest units based on token decimals
      const amountInSmallestUnits = Math.floor(amount * Math.pow(10, inputDecimals));

      const params = new URLSearchParams({
        inputMint,
        outputMint,
        amount: amountInSmallestUnits.toString(),
        slippageBps: slippageBps.toString(),
      });

      const response = await fetch(`${JUPITER_API_URL}/quote?${params}`);
      const data = await response.json();

      if (!response.ok || data.error) {
        throw new Error(data.error || 'Failed to get quote');
      }

      console.log('✅ Got swap quote:', data);
      return data;
    } catch (error) {
      console.error('❌ Failed to get swap quote:', error);
      return null;
    }
  }

  /**
   * Execute swap transaction
   */
  static async executeSwap(
    walletAddress: string,
    quote: SwapQuote,
    walletInstance?: any
  ): Promise<string | null> {
    try {
      console.log('🔄 Executing swap...');

      // Get serialized transaction from Jupiter
      const swapResponse = await fetch(`${JUPITER_API_URL}/swap`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          quoteResponse: quote,
          userPublicKey: walletAddress,
          wrapAndUnwrapSol: true,
          dynamicComputeUnitLimit: true,
          prioritizationFeeLamports: 'auto'
        })
      });

      const swapData = await swapResponse.json();

      if (!swapResponse.ok || swapData.error) {
        throw new Error(swapData.error || 'Failed to create swap transaction');
      }

      console.log('✅ Got swap transaction');

      // Deserialize the transaction
      const swapTransactionBuf = Buffer.from(swapData.swapTransaction, 'base64');
      const transaction = VersionedTransaction.deserialize(swapTransactionBuf);

      // Sign and send transaction using Privy wallet
      if (!walletInstance) {
        throw new Error('Wallet instance required for signing');
      }

      console.log('🔏 Signing swap transaction...');

      // Sign and send transaction using hybrid wallet service
      const txHash = await HybridWalletService.signAndSendTransaction(
        transaction,
        connection
      );
      console.log('✅ Swap transaction sent:', txHash);
      
      return txHash;
    } catch (error) {
      console.error('❌ Failed to execute swap:', error);
      return null;
    }
  }

  /**
   * Get token information from Jupiter
   */
  static async getTokenInfo(mint: string): Promise<any> {
    try {
      const response = await fetch(`https://api.jup.ag/tokens/v1/${mint}`);
      const data = await response.json();
      return data;
    } catch (error) {
      console.error('❌ Failed to get token info:', error);
      return null;
    }
  }

  /**
   * Get popular tokens for swapping
   */
  static async getPopularTokens(): Promise<any[]> {
    try {
      console.log('🔄 Loading popular tokens...');
      
      // Return basic tokens directly - Jupiter token list API is inconsistent
      const popularTokens = [
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
        },
        {
          address: TOKEN_MINTS.USDC,
          symbol: 'USDC',
          name: 'USD Coin',
          decimals: 6,
          logoURI: 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v/logo.png'
        },
        {
          address: TOKEN_MINTS.USDT,
          symbol: 'USDT',
          name: 'Tether USD',
          decimals: 6,
          logoURI: 'https://raw.githubusercontent.com/solana-labs/token-list/main/assets/mainnet/Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB/logo.png'
        },
        {
          address: 'JUPyiwrYJFskUPiHa7hkeR8VUtAeFoSYbKedZNsDvCN',
          symbol: 'JUP',
          name: 'Jupiter',
          decimals: 6,
          logoURI: 'https://static.jup.ag/jup/icon.png'
        }
      ];
      
      console.log('✅ Loaded popular tokens:', popularTokens.length);
      return popularTokens;
    } catch (error) {
      console.error('❌ Failed to get popular tokens:', error);
      // Return basic tokens as fallback
      return [
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
      ];
    }
  }

  /**
   * Estimate swap fees
   */
  static async estimateSwapFees(): Promise<{
    networkFee: number;
    jupiterFee: number;
    totalFee: number;
  }> {
    try {
      // Use a simplified fee estimation - Jupiter swaps typically cost 0.000005-0.00001 SOL
      const networkFee = 0.000005; // ~5000 lamports typical for a swap
      const jupiterFee = 0; // Jupiter doesn't charge platform fees
      
      console.log('💰 Estimated swap fees:', { networkFee, jupiterFee });
      
      return {
        networkFee,
        jupiterFee,
        totalFee: networkFee + jupiterFee
      };
    } catch (error) {
      console.error('❌ Failed to estimate fees:', error);
      return {
        networkFee: 0.000005,
        jupiterFee: 0,
        totalFee: 0.000005
      };
    }
  }
}