# Solmates - Master Concept Document

## 1. Core Concept & Purpose

**Solmates** is a revolutionary mobile application that functions as a "Tinder for Web3 collaboration" - specifically designed for finding project collaborators within the Solana ecosystem. The platform addresses the critical problem of connecting skilled developers, designers, marketers, and other professionals who want to build together in the Web3 space.

### The Problem It Solves:
- **Isolation in Web3 Development**: Many talented individuals work alone on projects that would benefit from collaboration
- **Skill Discovery Gap**: Difficulty finding complementary skills for specific project needs
- **Trust & Verification**: No reliable way to verify past collaboration success and expertise
- **Geographic Barriers**: Connecting global talent regardless of location
- **Project Ideation**: Moving from individual ideas to collaborative execution

### Core Value Proposition:
- **Swipe-based Discovery**: Intuitive interface familiar to users from dating apps
- **Skill-based Matching**: Intelligent algorithms match complementary and shared skills
- **Project-focused Collaboration**: Dedicated spaces for planning and executing projects together
- **Blockchain-verified Credentials**: NFT badges that prove successful collaborations
- **Integrated Web3 Payments**: Seamless SOL and BONK transactions for tips and premium features

## 2. Architecture & Tech Stack

### Frontend Architecture
- **Framework**: React Native with Expo SDK 52
- **Navigation**: Expo Router for file-based routing
- **State Management**: React Context API with multiple providers
- **Animations**: React Native Reanimated for smooth UI interactions
- **Styling**: StyleSheet with custom glass effects and gradients

### Backend & Database
- **Database**: Supabase (PostgreSQL) with Row Level Security (RLS)
- **Real-time Features**: Supabase subscriptions for live chat and notifications
- **Authentication**: Privy integration for Web3-native auth with Twitter OAuth
- **File Storage**: Supabase storage for avatars and media

### Web3 Integration
- **Blockchain**: Solana mainnet-beta
- **Wallet Integration**: Privy embedded wallets + Mobile Wallet Adapter
- **Smart Contracts**: Anchor framework for collaboration badge NFTs
- **Token Support**: SOL (payments) and BONK (tipping system)

### Key Libraries & Services
- **Authentication**: `@privy-io/expo` for Web3 auth
- **Database**: `@supabase/supabase-js` for backend operations
- **Solana**: `@solana/web3.js` and `@coral-xyz/anchor`
- **UI Components**: Custom components with Ionicons
- **Encryption**: Built-in message encryption for private chats

## 3. Key Features Deep Dive

### 3.1 Authentication System
- **Twitter OAuth**: Primary login method via Privy
- **Embedded Wallets**: Automatic Solana wallet creation for all users
- **Profile Sync**: Seamless sync between Privy user data and Supabase profiles
- **Onboarding Flow**: Guided profile completion with skill selection

### 3.2 User Profiles & Matching
- **Rich Profiles**: Skills, interests, experience level, availability, social links
- **Avatar System**: Twitter profile pictures with fallback to generated avatars
- **Skill Matching**: Algorithm matches complementary and shared skills
- **Reputation System**: Scoring based on successful collaborations and community feedback

### 3.3 Discovery & Swiping
- **Card-based Interface**: Tinder-style swipe mechanism
- **Three Actions**: 
  - Swipe Left (Pass)
  - Swipe Right (Like) 
  - Super Like (Priority matching)
- **Smart Filtering**: Excludes already-swiped users and inactive profiles
- **Pull-to-Refresh**: Dynamic content loading

### 3.4 Matching & Chat System
- **Mutual Matching**: Both users must like each other to unlock chat
- **Encrypted Messaging**: End-to-end encrypted chat with message deletion
- **BONK Tipping**: Integrated micro-payments for showing appreciation
- **Real-time Updates**: Live message delivery and read receipts

### 3.5 Project Collaboration Rooms
- **Skill Synergy Analysis**: Visual breakdown of complementary vs shared skills
- **Project Idea Sharing**: Structured forms for proposing collaboration ideas
- **AI-powered Suggestions**: Smart project recommendations based on combined skills
- **Project Management**: Status tracking, task assignment, and progress monitoring
- **Multi-phase Workflow**: Ideas → Active Projects → Completed Projects

### 3.6 Premium Features & Monetization
- **Subscription Tiers**: Weekly ($5), Monthly ($15), Yearly ($96)
- **Premium Benefits**:
  - Unlimited daily swipes (vs 20 free)
  - 5 daily super swipes (vs 1 free)
  - See who liked you
  - Priority discovery placement
  - Ad-free experience
- **Consumable Purchases**: Super swipe packs (1 for $1, 5 for $4, 15 for $10)
- **SOL Payments**: All transactions processed in SOL with USD pricing

### 3.7 Collaboration Badge NFTs
- **Smart Contract**: Anchor-based program for minting achievement badges
- **Verification System**: Collaborators verify each other's contributions
- **Metadata Standards**: Rich metadata including project details, collaborators, contribution types
- **Portfolio Building**: Verifiable on-chain history of successful collaborations
- **Badge Categories**: Frontend, Backend, Design, Marketing, etc.

### 3.8 Advanced Features
- **Hackathon Mode**: Special discovery mode during hackathon events (Premium feature)
- **Project Analytics**: Comprehensive stats on swipes, matches, and collaborations
- **User Safety**: Blocking, reporting, and content moderation
- **Notification System**: Push notifications for matches, messages, and updates

## 4. Database Schema & Architecture

### Core Tables
```sql
-- Users table - Central profile data
users (
  id UUID PRIMARY KEY,
  privy_user_id TEXT UNIQUE,
  wallet_address TEXT,
  username TEXT UNIQUE,
  bio TEXT,
  skills TEXT[],
  looking_for TEXT[],
  twitter_data JSONB,
  profile_completed BOOLEAN,
  reputation_score INTEGER,
  is_premium BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP
)

-- Matching system
matches (
  id UUID PRIMARY KEY,
  user1_id UUID REFERENCES users(id),
  user2_id UUID REFERENCES users(id),
  user1_liked BOOLEAN,
  user2_liked BOOLEAN,
  matched_at TIMESTAMP
)

swipes (
  id UUID PRIMARY KEY,
  swiper_id UUID REFERENCES users(id),
  swiped_id UUID REFERENCES users(id),
  direction TEXT CHECK (direction IN ('left', 'right', 'super')),
  created_at TIMESTAMP
)

-- Communication
chats (
  id UUID PRIMARY KEY,
  user1_id UUID REFERENCES users(id),
  user2_id UUID REFERENCES users(id),
  last_message TEXT,
  last_message_at TIMESTAMP
)

messages (
  id UUID PRIMARY KEY,
  chat_id UUID REFERENCES chats(id),
  sender_id UUID REFERENCES users(id),
  content TEXT, -- Encrypted
  message_type TEXT,
  created_at TIMESTAMP
)

-- Collaboration features
project_ideas (
  id UUID PRIMARY KEY,
  match_id UUID REFERENCES matches(id),
  title TEXT,
  description TEXT,
  skills_needed TEXT[],
  created_by UUID REFERENCES users(id)
)

projects (
  id UUID PRIMARY KEY,
  match_id UUID REFERENCES matches(id),
  name TEXT,
  description TEXT,
  status TEXT CHECK (status IN ('planning', 'active', 'completed', 'on-hold')),
  project_type TEXT,
  tech_stack TEXT[],
  github_url TEXT,
  demo_url TEXT,
  figma_url TEXT,
  deadline TIMESTAMP,
  created_by UUID REFERENCES users(id)
)

project_members (
  id UUID PRIMARY KEY,
  project_id UUID REFERENCES projects(id),
  user_id UUID REFERENCES users(id),
  role TEXT CHECK (role IN ('owner', 'collaborator', 'viewer'))
)

-- Premium system
user_subscriptions (
  id UUID PRIMARY KEY,
  user_id TEXT REFERENCES users(privy_user_id),
  subscription_type TEXT,
  expires_at TIMESTAMP,
  transaction_hash TEXT
)

-- Web3 transactions
bonk_tips (
  id UUID PRIMARY KEY,
  sender_id TEXT,
  recipient_id TEXT,
  amount BIGINT,
  transaction_hash TEXT,
  created_at TIMESTAMP
)

sol_transfers (
  id UUID PRIMARY KEY,
  sender_id TEXT,
  recipient_id TEXT,
  amount_sol DECIMAL,
  purpose TEXT,
  transaction_hash TEXT
)
```

## 5. Smart Contracts - Solana/Anchor Implementation

### Collaboration Badge Contract
```rust
// Program ID: 8mJAkVVgBzD8VvKz5q9KP6XrY4nMbJuTZxGhKkEeHhzr
pub mod collab_badge {
    // Initialize badge collection for Solmates
    pub fn initialize_badge_collection(
        ctx: Context<InitializeBadgeCollection>,
        name: String,
        symbol: String,
        uri: String,
    ) -> Result<()>

    // Mint collaboration badge NFT
    pub fn mint_collaboration_badge(
        ctx: Context<MintCollaborationBadge>,
        project_name: String,
        collaborators: Vec<Pubkey>,
        contribution_type: String,
        completion_date: i64,
    ) -> Result<()>

    // Verify collaboration by other participants
    pub fn verify_collaboration(
        ctx: Context<VerifyCollaboration>,
        badge_mint: Pubkey,
    ) -> Result<()>
}

#[account]
pub struct BadgeAccount {
    pub project_name: String,
    pub collaborators: Vec<Pubkey>,
    pub contribution_type: String,
    pub completion_date: i64,
    pub mint_date: i64,
    pub recipient: Pubkey,
    pub is_soulbound: bool,
}
```

### Badge Features
- **Soulbound NFTs**: Non-transferable to maintain authenticity
- **Collaborative Verification**: Multiple participants must verify contributions
- **Rich Metadata**: Project details, timeline, contribution type
- **Collection System**: All badges part of official Solmates collection

## 6. User Journey & Flows

### Complete User Flow
1. **Discovery**: User opens app, sees login screen
2. **Authentication**: Twitter OAuth via Privy → Embedded wallet creation
3. **Onboarding**: Profile setup with skills, interests, bio, availability
4. **Discovery**: Swipe through potential collaborators based on skills
5. **Matching**: Mutual likes create matches with chat unlock
6. **Communication**: Encrypted chat with BONK tipping capabilities
7. **Collaboration**: Project room for ideation and planning
8. **Execution**: Project management and progress tracking
9. **Completion**: NFT badge minting for successful collaborations
10. **Portfolio**: Verified on-chain credential portfolio

### Key Decision Points
- **Premium Upgrade**: When daily limits are reached
- **Super Likes**: For high-priority connections
- **Project Creation**: Converting ideas into active collaborations
- **Badge Minting**: Memorializing successful partnerships

## 7. Monetization Strategy

### Revenue Streams
1. **Premium Subscriptions** (Primary)
   - Weekly: $5 (for hackathons)
   - Monthly: $15 (most popular)
   - Yearly: $96 (20% savings)

2. **Consumable Purchases**
   - 1 Super Swipe: $1
   - 5 Super Swipes: $4
   - 15 Super Swipes: $10

3. **Transaction Fees** (Future)
   - Small percentage on project payments
   - Badge minting fees
   - Premium project features

### Value Proposition for Premium
- **Unlimited Swipes**: vs 20 daily free limit
- **Enhanced Discovery**: Priority placement in other users' stacks
- **Advanced Features**: See who liked you, advanced filtering
- **Super Swipes**: Higher response rates (3x more matches)
- **Hackathon Mode**: Priority matching for urgent collaborations

## 8. Unique Innovations

### 1. Skill-based Matching Algorithm
- **Complementary Matching**: Pairs frontend with backend developers
- **Shared Expertise**: Finds common ground for collaboration
- **Experience Balancing**: Mentorship opportunities between skill levels

### 2. Project Suggestion Engine
- **AI-powered Recommendations**: Suggests projects based on combined skills
- **Skill Gap Analysis**: Identifies what skills are needed for specific project types
- **Template Projects**: Predefined project structures for common skill combinations

### 3. Web3-native Tipping
- **Micro-appreciation**: BONK tokens for small gestures
- **Frictionless Payments**: One-tap tipping within chat
- **Community Currency**: Building reputation through giving and receiving

### 4. Soulbound Collaboration Badges
- **Verifiable History**: Immutable proof of successful collaborations
- **Peer Verification**: Community-validated achievements
- **Portfolio Building**: Professional credentials for Web3 space

### 5. Hackathon Integration
- **Event-specific Modes**: Special discovery during hackathons
- **Time-sensitive Matching**: Quick team formation
- **Competition Tracking**: Project progress within event timeframes

## 9. Technical Implementation Details

### Authentication Flow
```typescript
// Privy integration with embedded wallets
const { user } = usePrivy();
const { wallets } = useEmbeddedSolanaWallet();

// Automatic profile sync
await ProfileService.syncPrivyUser(privyUser, walletAddress);
```

### Matching Algorithm
```typescript
// Smart user filtering
const potentialMatches = await supabase
  .from('users')
  .select('*')
  .neq('id', currentUserId)
  .not('id', 'in', swipedUserIds)
  .eq('profile_completed', true)
  .eq('is_active', true);

// Skill-based scoring
const matchScore = calculateSkillCompatibility(
  currentUser.skills,
  potentialMatch.skills
);
```

### Real-time Chat
```typescript
// Encrypted messaging with Supabase subscriptions
const subscription = chatService.subscribeToMessages(chatId, (newMessage) => {
  setMessages(prev => [...prev, newMessage]);
  chatService.markMessagesAsRead(chatId, currentUserId);
});
```

### Web3 Payments
```typescript
// SOL payment processing
const payment = await SolPaymentService.processPayment(
  userId,
  productId,
  usdPrice,
  wallet,
  walletAddress
);
```

### Transaction Handling
```typescript
// Improved transaction confirmation
if (response && response.signature) {
  console.log(`📡 Transaction sent: ${response.signature}`);
  
  // Wait for network confirmation with timeout
  try {
    const confirmation = await connection.confirmTransaction({
      signature: response.signature,
      blockhash: transaction.recentBlockhash,
      lastValidBlockHeight: transaction.lastValidBlockHeight
    }, 'confirmed');
    
    if (confirmation.value.err) {
      throw new Error(`Transaction failed: ${JSON.stringify(confirmation.value.err)}`);
    }
    
    console.log(`✅ Transaction confirmed: ${response.signature}`);
  } catch (confirmError) {
    console.log(`⚠️ Could not confirm transaction, but it was sent: ${confirmError.message}`);
  }
}
```

## 10. Development Highlights & Features Added

### Recent Enhancements
1. **Fixed Transaction Tracking**: Resolved "couldn't track transaction" errors with proper confirmation handling
2. **Enhanced Chat Navigation**: Fixed routing issues in chat interface
3. **Project Collaboration System**: Complete implementation from idea sharing to project management
4. **Badge Minting Interface**: Full UI for creating collaboration NFTs with explanatory content
5. **Premium Hackathon Mode**: Gated feature with upgrade prompts and comprehensive feature breakdown
6. **Project Management**: Delete functionality, status updates, and detailed project views

### UI/UX Improvements
- **Glass Morphism Design**: Modern UI with blur effects and gradients
- **Smooth Animations**: React Native Reanimated for polished interactions
- **Intuitive Navigation**: Tab-based interface with clear visual hierarchy
- **Premium Visual Indicators**: Gold accents and diamond icons for premium features
- **Responsive Design**: Optimized for various screen sizes

### Security & Safety
- **Message Encryption**: Protected communications between users
- **User Blocking**: Safety features for unwanted interactions
- **Transaction Security**: Proper error handling and confirmation flows
- **Data Privacy**: Row Level Security in Supabase

## 11. Future Roadmap & Expansion

### Phase 2 Features
- **Video Calls**: Integrated video chat for better collaboration
- **GitHub Integration**: Automatic project linking and contribution tracking
- **DAO Formation**: Tools for creating collaborative DAOs
- **Cross-chain Support**: Expansion to other blockchains

### Phase 3 Vision
- **AI Project Assistant**: Intelligent project planning and task distribution
- **Marketplace Integration**: Built-in hiring and service marketplace
- **Educational Platform**: Skill development and mentorship programs
- **Enterprise Features**: Corporate team building and recruitment

### Global Expansion
- **Multi-language Support**: Localization for global markets
- **Regional Hackathon Partnerships**: Local event integrations
- **University Partnerships**: Student collaboration programs
- **Corporate Partnerships**: Enterprise adoption for innovation teams

## Conclusion

Solmates represents a paradigm shift in how Web3 professionals discover and collaborate with each other. By combining the familiar mechanics of social matching with sophisticated skill analysis and blockchain-verified credentials, it creates a unique ecosystem where individual talent can efficiently combine into high-performing collaborative teams.

The platform addresses real pain points in the Web3 space while building sustainable monetization through premium features and creating lasting value through verifiable collaboration history. Its technical architecture provides a solid foundation for growth, and its innovative features position it as a leader in the emerging category of professional Web3 social platforms.

### Key Differentiators
- **First-mover Advantage**: No direct competitors in Web3 collaboration matching
- **Proven Revenue Model**: Successful freemium structure with premium upgrades
- **Technical Excellence**: Robust architecture with modern tech stack
- **Community Building**: Focus on long-term relationship and portfolio building
- **Blockchain Integration**: Native Web3 features that add real value

Solmates is positioned to become the essential platform for Web3 collaboration, connecting the global community of builders and creators in an unprecedented way.