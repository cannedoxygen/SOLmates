 MASTER PROMPT: "Read, Plan, Then Build — Solmates"
You are an elite mobile and web3 developer with deep experience in Solana, React Native, wallet SDKs, and social DApps.

You’ve just received the complete project structure for Solmates — a Tinder-style mobile app for finding collaborators (coders, artists, builders) on Solana Mobile using Reown, Seeker, Supabase, and more.

Before you write any code, READ THIS PROMPT, then scan and understand the entire file structure below. Your first task is to:

Understand the architecture and scope.

Identify every file that must be written from scratch.

Create a master plan and file-by-file roadmap.

Then — begin writing the code, file by file, as outlined in your plan.

📂 FILE STRUCTURE SNAPSHOT (Must Be Written From Scratch)
Your mission is to implement the following files (no boilerplate, no placeholders — real logic and UI required):

🔹 App Screens (in app/)
index.tsx – app entry screen

_layout.tsx – app router layout

login.tsx, onboarding.tsx, welcome.tsx – full wallet login flow

discover.tsx, matches.tsx, chat.tsx, profile.tsx – swipe, match, and profile tabs

user-profile.tsx, project-room.tsx, badge-mint.tsx, hackathon-mode.tsx – modal UIs

chat/[chatId].tsx, project-room/[roomId].tsx – chat rooms

🔹 Core Components (components/)
ui/ – buttons, modals, inputs, avatars, spinners

forms/ – profile/project forms, Zod/Yup validations

swipe/ – swipe card stack, animations, match actions

chat/ – message bubbles, chat inputs, tip buttons

profile/ – profile card, tags, collab badge display

web3/ – wallet connect buttons, transaction modals

navigation/ – custom TabBar, Header, DrawerMenu

🔹 Lib & Logic (lib/)
auth/ – auth context, wallet adapter, Reown config

web3/ – Solana config, badge minting, tip sending

supabase/ – Supabase client, auth, profile + chat ops

seeker/ – pull wallet tags, skills, reputation data

matching/ – matching logic, filters, score calculator

services/ – Helius, Dialect, Push API clients

utils/ – helpers, storage, validation, biometrics

🔹 Custom Hooks (hooks/)
Hooks for wallet, auth, chat, swipe, profile, Seeker, hackathon toggle, push notifications

🔹 Context (context/)
React context files for auth, wallet, chat, theme, notifications

🔹 Types (types/)
TypeScript interfaces for user, auth, chat, profile, project, web3

🔹 API Clients (api/)
API calls to Supabase, Helius, Solana programs

🔹 Contracts (contracts/)
collab-badge & project-room programs in Anchor

Include instructions, state, tests, Anchor.toml files

🔹 Assets, Docs, and Config
Add working logo files, animations, and minimal styles

Prepare README.md, DEPLOYMENT.md, and ARCHITECTURE.md

📌 GOAL: Build a full-stack, production-ready Solana Mobile app with:
Mobile Wallet Adapter

Reown login + SBT minting

Seeker reputation + matching

Swipe-to-match UX

Supabase-powered chat + storage

Soulbound collab badge

Optional BONK tipping & hackathon mode

🧭 MASTER PLAN (What You Must Do)
1. Plan
Group files by feature: Auth, Match, Profile, Chat, Web3

Decide build order (Start with Auth + Layout, then Discover, Match, Profile, then Chat)

Identify shared components and reusable logic

2. Build Phase 1 – Core App & Auth
Setup Expo Router

Layout + navigation

Wallet connect using Reown

Onboarding with Seeker SDK tags

Store profile to Supabase

3. Build Phase 2 – Match Engine
Swipe UI + animations

Matching logic (Seeker + custom filters)

Store matches in Supabase

4. Build Phase 3 – Messaging + Projects
Supabase chat + thread structure

Project room UI

BONK tipping (optional)

5. Build Phase 4 – Web3 Enhancements
Collab Badge mint

Project DAO logic

Push notifications

Hackathon toggle

🏁 Begin Once You’ve Planned
After reading and planning:

Start writing the code file by file, beginning with app/_layout.tsx, app/(auth)/login.tsx, and lib/auth/wallet-adapter.ts.

Ensure all logic, context, and state flows properly.

When complete, you will have a full mobile-native, Solana-powered collaborative DApp — ready for the Solana Mobile dApp Store.