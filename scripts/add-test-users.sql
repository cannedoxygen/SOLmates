-- Add test users for swiping functionality
-- Run this in your Supabase SQL editor

INSERT INTO users (
  privy_user_id, 
  username, 
  bio, 
  skills, 
  looking_for, 
  twitter_username, 
  twitter_name, 
  twitter_avatar_url, 
  wallet_address, 
  profile_completed
) VALUES 
(
  'did:privy:test1', 
  'alice_dev', 
  'Frontend developer passionate about Web3 and DeFi. Looking to build the next generation of decentralized apps.',
  ARRAY['React', 'TypeScript', 'Solidity', 'UI/UX'],
  ARRAY['Co-founder', 'CTO', 'Frontend Developer'],
  'alice_dev',
  'Alice Johnson',
  'https://images.unsplash.com/photo-1494790108755-2616b332a378?w=400&h=400&fit=crop&crop=face',
  '5vPf3hYo4qCAxZfZsQ9n6YVxkL8ZGpVzJ4KfvDz4mEa1',
  true
),
(
  'did:privy:test2', 
  'bob_blockchain', 
  'Backend engineer with 5+ years experience. Expertise in Rust, Go, and blockchain protocols. Ready to revolutionize finance.',
  ARRAY['Rust', 'Go', 'Blockchain', 'Smart Contracts'],
  ARRAY['Co-founder', 'Backend Developer', 'Technical Advisor'],
  'bob_blockchain',
  'Bob Smith',
  'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400&h=400&fit=crop&crop=face',
  '8kLm9nP2qRsT6uVwX7yZaBc3dEf4gHi5jK6lM8nO9pQ2',
  true
),
(
  'did:privy:test3', 
  'carol_crypto', 
  'Product manager turned entrepreneur. Built and scaled 3 startups. Expert in tokenomics and DeFi protocols.',
  ARRAY['Product Management', 'Tokenomics', 'Business Development', 'Marketing'],
  ARRAY['Co-founder', 'CEO', 'Product Manager'],
  'carol_crypto',
  'Carol Davis',
  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=400&h=400&fit=crop&crop=face',
  '2xYz7wVu4tSr8qPo6nMl5kJh3gFe9dCb1aZ8xW5vU4tS',
  true
),
(
  'did:privy:test4', 
  'david_defi', 
  'Smart contract auditor and security researcher. Found vulnerabilities in major DeFi protocols. Passionate about secure code.',
  ARRAY['Smart Contract Auditing', 'Security', 'Solidity', 'Formal Verification'],
  ARRAY['Co-founder', 'Security Advisor', 'Smart Contract Developer'],
  'david_defi',
  'David Chen',
  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=400&fit=crop&crop=face',
  '9qRs4tUv8wXy2zA5bCd6eF7gHi3jK9lM1nO4pQ7rS8tU',
  true
),
(
  'did:privy:test5', 
  'emma_nft', 
  'NFT artist and creative technologist. Sold 1000+ NFTs, building tools for creators in the Web3 space.',
  ARRAY['NFT Development', 'Digital Art', 'Creative Technology', 'Community Building'],
  ARRAY['Co-founder', 'Creative Director', 'NFT Developer'],
  'emma_nft',
  'Emma Wilson',
  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=400&h=400&fit=crop&crop=face',
  '3yZa8xWv5tSr9qPo7nMl6kJh4gFe2dCb5aZ1xW8vU7tS',
  true
);

-- Verify the data was inserted
SELECT username, bio, skills, looking_for FROM users WHERE privy_user_id LIKE 'did:privy:test%';