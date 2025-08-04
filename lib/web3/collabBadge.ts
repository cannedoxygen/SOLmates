import { 
  Connection, 
  PublicKey, 
  Transaction,
  SystemProgram,
  SYSVAR_RENT_PUBKEY,
} from '@solana/web3.js';
import { 
  TOKEN_PROGRAM_ID,
  ASSOCIATED_TOKEN_PROGRAM_ID,
  createInitializeMintInstruction,
  createAssociatedTokenAccountInstruction,
  createMintToInstruction,
  getAssociatedTokenAddress,
  MINT_SIZE,
} from '@solana/spl-token';
import HybridWalletService from '../services/hybridWalletService';
import { BN, Program, AnchorProvider, web3 } from '@coral-xyz/anchor';

// Helius RPC connection
const HELIUS_API_KEY = '99b7e94e-9dff-4de3-82ac-567bfbda369c';
const connection = new Connection(`https://mainnet.helius-rpc.com/?api-key=${HELIUS_API_KEY}`, 'confirmed');

// Program ID from lib.rs
const COLLAB_BADGE_PROGRAM_ID = new PublicKey('8mJAkVVgBzD8VvKz5q9KP6XrY4nMbJuTZxGhKkEeHhzr');
const TOKEN_METADATA_PROGRAM_ID = new PublicKey('metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s');

export interface CollabBadgeData {
  projectName: string;
  collaborators: string[];
  contributionType: string;
  completionDate: Date;
  recipient: string;
}

export interface BadgeMetadata {
  mint: string;
  name: string;
  image: string;
  description: string;
  attributes: Array<{
    trait_type: string;
    value: string;
  }>;
  collaborators: string[];
  project: string;
  completion_date: string;
}

export class CollabBadgeService {
  private connection: Connection;
  private programId: PublicKey;

  constructor() {
    this.connection = connection;
    this.programId = COLLAB_BADGE_PROGRAM_ID;
  }

  async mintCollabBadge(badgeData: CollabBadgeData, walletAddress?: string): Promise<string | null> {
    try {
      if (!walletAddress) throw new Error('Wallet address required');
      const wallet = new PublicKey(walletAddress);

      // Generate new mint keypair for the badge
      const badgeMint = web3.Keypair.generate();
      
      // Find program authority PDA
      const [programAuthority] = PublicKey.findProgramAddressSync(
        [Buffer.from('authority')],
        this.programId
      );

      // Find badge account PDA
      const [badgeAccount] = PublicKey.findProgramAddressSync(
        [Buffer.from('badge'), badgeMint.publicKey.toBuffer()],
        this.programId
      );

      // Find metadata account
      const [metadataAccount] = PublicKey.findProgramAddressSync(
        [
          Buffer.from('metadata'),
          TOKEN_METADATA_PROGRAM_ID.toBuffer(),
          badgeMint.publicKey.toBuffer(),
        ],
        TOKEN_METADATA_PROGRAM_ID
      );

      // Get recipient token account
      const recipientTokenAccount = await getAssociatedTokenAddress(
        badgeMint.publicKey,
        new PublicKey(badgeData.recipient)
      );

      // Get collection mint (would be initialized once for the program)
      const collectionMint = new PublicKey('COLLECTION_MINT_PLACEHOLDER');

      const transaction = new Transaction();

      // Create mint account
      transaction.add(
        SystemProgram.createAccount({
          fromPubkey: wallet,
          newAccountPubkey: badgeMint.publicKey,
          lamports: await this.connection.getMinimumBalanceForRentExemption(MINT_SIZE),
          space: MINT_SIZE,
          programId: TOKEN_PROGRAM_ID,
        })
      );

      // Initialize mint
      transaction.add(
        createInitializeMintInstruction(
          badgeMint.publicKey,
          0, // decimals
          programAuthority,
          programAuthority
        )
      );

      // Create associated token account for recipient
      transaction.add(
        createAssociatedTokenAccountInstruction(
          wallet,
          recipientTokenAccount,
          new PublicKey(badgeData.recipient),
          badgeMint.publicKey
        )
      );

      // Mint badge instruction (this would be a custom instruction for our program)
      const mintBadgeInstruction = this.createMintBadgeInstruction({
        badgeAccount,
        badgeMint: badgeMint.publicKey,
        recipientTokenAccount,
        metadataAccount,
        collectionMint,
        recipient: new PublicKey(badgeData.recipient),
        programAuthority,
        payer: wallet,
        badgeData,
      });

      transaction.add(mintBadgeInstruction);

      // Mint 1 token to recipient
      transaction.add(
        createMintToInstruction(
          badgeMint.publicKey,
          recipientTokenAccount,
          programAuthority,
          1
        )
      );

      // Sign with badge mint keypair
      transaction.partialSign(badgeMint);

      const signature = await HybridWalletService.signAndSendTransaction(transaction, this.connection);
      
      // Store badge metadata
      await this.storeBadgeMetadata(badgeMint.publicKey.toString(), badgeData);

      return signature;
    } catch (error) {
      console.error('Failed to mint collaboration badge:', error);
      return null;
    }
  }

  private createMintBadgeInstruction(params: {
    badgeAccount: PublicKey;
    badgeMint: PublicKey;
    recipientTokenAccount: PublicKey;
    metadataAccount: PublicKey;
    collectionMint: PublicKey;
    recipient: PublicKey;
    programAuthority: PublicKey;
    payer: PublicKey;
    badgeData: CollabBadgeData;
  }) {
    // This would create the actual program instruction
    // For now, return a placeholder
    return SystemProgram.transfer({
      fromPubkey: params.payer,
      toPubkey: params.payer,
      lamports: 0,
    });
  }

  async verifyCollaboration(badgeMint: string, verifierAddress: string): Promise<boolean> {
    try {
      const wallet = new PublicKey(verifierAddress);

      // Find badge account PDA
      const [badgeAccount] = PublicKey.findProgramAddressSync(
        [Buffer.from('badge'), new PublicKey(badgeMint).toBuffer()],
        this.programId
      );

      const transaction = new Transaction();
      
      // Add verification instruction
      const verifyInstruction = this.createVerifyInstruction({
        badgeAccount,
        badgeMint: new PublicKey(badgeMint),
        verifier: wallet,
      });

      transaction.add(verifyInstruction);

      await HybridWalletService.signAndSendTransaction(transaction, this.connection);
      return true;
    } catch (error) {
      console.error('Failed to verify collaboration:', error);
      return false;
    }
  }

  private createVerifyInstruction(params: {
    badgeAccount: PublicKey;
    badgeMint: PublicKey;
    verifier: PublicKey;
  }) {
    // This would create the actual verification instruction
    return SystemProgram.transfer({
      fromPubkey: params.verifier,
      toPubkey: params.verifier,
      lamports: 0,
    });
  }

  async getUserBadges(userAddress: string): Promise<BadgeMetadata[]> {
    try {
      // In a real implementation, this would query the user's token accounts
      // and filter for badge NFTs
      const response = await fetch(`https://api.solmates.app/badges/${userAddress}`);
      if (!response.ok) return [];
      
      const badges = await response.json();
      return badges;
    } catch (error) {
      console.error('Failed to get user badges:', error);
      return [];
    }
  }

  async getProjectBadges(projectId: string): Promise<BadgeMetadata[]> {
    try {
      const response = await fetch(`https://api.solmates.app/project/${projectId}/badges`);
      if (!response.ok) return [];
      
      const badges = await response.json();
      return badges;
    } catch (error) {
      console.error('Failed to get project badges:', error);
      return [];
    }
  }

  private async storeBadgeMetadata(mintAddress: string, badgeData: CollabBadgeData) {
    try {
      const metadata: BadgeMetadata = {
        mint: mintAddress,
        name: `Solmates Collab Badge: ${badgeData.projectName}`,
        image: `https://api.solmates.app/badge/${mintAddress}/image`,
        description: `Collaboration badge for ${badgeData.projectName}. Contribution: ${badgeData.contributionType}`,
        attributes: [
          {
            trait_type: 'Project',
            value: badgeData.projectName,
          },
          {
            trait_type: 'Contribution Type',
            value: badgeData.contributionType,
          },
          {
            trait_type: 'Completion Date',
            value: badgeData.completionDate.toISOString(),
          },
          {
            trait_type: 'Collaborators',
            value: badgeData.collaborators.length.toString(),
          },
        ],
        collaborators: badgeData.collaborators,
        project: badgeData.projectName,
        completion_date: badgeData.completionDate.toISOString(),
      };

      await fetch('https://api.solmates.app/badge/metadata', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          mint: mintAddress,
          metadata,
        }),
      });
    } catch (error) {
      console.error('Failed to store badge metadata:', error);
    }
  }

  generateBadgeArt(badgeData: CollabBadgeData): string {
    // Generate dynamic badge artwork based on project data
    const colors = [
      '#9945FF', '#7B3FF2', '#4CAF50', '#FF5722', 
      '#2196F3', '#FF9800', '#E91E63', '#00BCD4'
    ];
    
    const colorIndex = badgeData.projectName.length % colors.length;
    const primaryColor = colors[colorIndex];
    
    return `https://api.solmates.app/badge/generate?project=${encodeURIComponent(badgeData.projectName)}&type=${encodeURIComponent(badgeData.contributionType)}&color=${encodeURIComponent(primaryColor)}`;
  }
}

export const collabBadgeService = new CollabBadgeService();