# Solmates 🚀

A Tinder-style mobile app for finding collaborators on Solana Mobile. Swipe to connect with developers, designers, and builders in the Solana ecosystem.

## Features

### 🔐 Authentication & Onboarding
- **Solana Mobile Wallet Integration**: Connect using Phantom, Solflare, or Backpack
- **Profile Creation**: Username, bio, skills, and collaboration preferences
- **Seeker Integration**: Pull wallet reputation and on-chain activity

### 💫 Smart Matching
- **Swipe Interface**: Tinder-style card stack with smooth animations
- **AI-Powered Matching**: Algorithm considers skills, preferences, and Seeker reputation
- **Real-time Notifications**: Get notified instantly when you have a match

### 💬 Messaging & Collaboration
- **Secure Chat**: End-to-end encrypted messaging with real-time updates
- **BONK Tipping**: Send micro-tips to show appreciation
- **Project Rooms**: Dedicated spaces for collaboration planning

### 🏆 Web3 Features
- **Soulbound Collaboration Badges**: Mint NFTs to commemorate successful collaborations
- **On-chain Verification**: Collaborators can verify badges on-chain
- **Reputation System**: Build your on-chain reputation through successful projects

### ⚡ Hackathon Mode
- **Priority Matching**: Get fast-tracked connections during hackathons
- **Urgency Levels**: Signal how quickly you need collaborators
- **Real-time Alerts**: Instant notifications for urgent matches

## Tech Stack

### Frontend
- **React Native** with Expo Router
- **TypeScript** for type safety
- **Reanimated** for smooth animations
- **Linear Gradient** for beautiful UI

### Web3 Integration
- **Solana Mobile Wallet Adapter** for wallet connections
- **@solana/web3.js** for blockchain interactions
- **Anchor Framework** for smart contract development
- **SPL Token** for BONK tipping functionality

### Backend Services
- **Supabase** for database and real-time features
- **Seeker SDK** for reputation and skill data
- **Expo Notifications** for push notifications

### Smart Contracts
- **Collaboration Badge Program**: Solana program for minting soulbound NFTs
- **Project DAO Logic**: Governance features for project management

## Getting Started

### Prerequisites
- Node.js 18+
- Expo CLI
- Solana Mobile device or emulator
- Supabase account
- Seeker API access

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/solmates/app.git
cd solmates
```

2. **Install dependencies**
```bash
npm install
```

3. **Set up environment variables**
```bash
cp .env.example .env
```

Fill in your environment variables:
```env
EXPO_PUBLIC_SUPABASE_URL=your_supabase_url
EXPO_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
EXPO_PUBLIC_SEEKER_API_URL=https://api.seeker.xyz
EXPO_PUBLIC_SEEKER_API_KEY=your_seeker_api_key
EXPO_PUBLIC_RPC_ENDPOINT=your_solana_rpc_endpoint
EXPO_PUBLIC_PROJECT_ID=your_expo_project_id
```

4. **Set up Supabase database**
```sql
-- Run the SQL scripts in /database/schema.sql
-- Set up RLS policies and triggers
```

5. **Deploy smart contracts**
```bash
cd contracts/collab-badge
anchor build
anchor deploy
```

6. **Start the development server**
```bash
npm start
```

## Project Structure

```
solmates/
├── app/                    # App screens and navigation
│   ├── (auth)/            # Authentication flow
│   ├── (tabs)/            # Main app tabs
│   ├── chat/              # Chat screens
│   └── [modals]/          # Modal screens
├── components/            # Reusable UI components
│   ├── ui/               # Basic UI components
│   ├── swipe/            # Swipe interface
│   ├── chat/             # Chat components
│   └── web3/             # Web3 components
├── lib/                  # Business logic and services
│   ├── auth/             # Authentication logic
│   ├── web3/             # Blockchain interactions
│   ├── supabase/         # Database operations
│   ├── seeker/           # Seeker API integration
│   ├── matching/         # Matching algorithm
│   └── services/         # External services
├── hooks/                # Custom React hooks
├── context/              # React context providers
├── types/                # TypeScript type definitions
├── contracts/            # Solana smart contracts
└── assets/               # Static assets
```

## Development

### Available Scripts

- `npm start` - Start Expo development server
- `npm run android` - Run on Android device/emulator
- `npm run ios` - Run on iOS device/simulator
- `npm run web` - Run web version
- `npm run lint` - Run ESLint
- `npm run typecheck` - Run TypeScript compiler
- `npm test` - Run tests

### Code Style

- Use TypeScript for all new code
- Follow React Native best practices
- Use functional components with hooks
- Implement proper error handling
- Add JSDoc comments for complex functions

### Testing

```bash
# Run unit tests
npm test

# Run E2E tests
npm run test:e2e

# Test on physical device
expo run:android --device
expo run:ios --device
```

## Deployment

### Mobile App Store

1. **Build production app**
```bash
eas build --platform all
```

2. **Submit to stores**
```bash
eas submit --platform all
```

### Smart Contracts

1. **Deploy to mainnet**
```bash
anchor deploy --provider.cluster mainnet
```

2. **Verify contracts**
```bash
anchor verify <program-id>
```

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `EXPO_PUBLIC_SUPABASE_URL` | Supabase project URL | Yes |
| `EXPO_PUBLIC_SUPABASE_ANON_KEY` | Supabase anonymous key | Yes |
| `EXPO_PUBLIC_SEEKER_API_URL` | Seeker API endpoint | Yes |
| `EXPO_PUBLIC_SEEKER_API_KEY` | Seeker API key | Yes |
| `EXPO_PUBLIC_RPC_ENDPOINT` | Solana RPC endpoint | Yes |
| `EXPO_PUBLIC_PROJECT_ID` | Expo project ID | Yes |

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Contribution Guidelines

- Follow the existing code style
- Add tests for new features
- Update documentation
- Ensure all tests pass
- Get code review approval

## Security

- Never commit private keys or sensitive data
- Use environment variables for configuration
- Implement proper input validation
- Follow Solana security best practices
- Regular security audits for smart contracts

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## About

- **Website**: [www.solmates.wtf](https://www.solmates.wtf)
- **Twitter**: [@SOLmatesSKR](https://twitter.com/SOLmatesSKR)

---

Built by Canned Oxygen