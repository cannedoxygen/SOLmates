// Run this script to populate your database with test users
// Usage: node scripts/populate-test-data.js

const { createClient } = require('@supabase/supabase-js');

// You'll need to add your Supabase credentials here
const supabaseUrl = 'https://kvpnseftxvidonyjiqsv.supabase.co';
const supabaseKey = 'YOUR_SUPABASE_ANON_KEY'; // Replace with your actual key

const supabase = createClient(supabaseUrl, supabaseKey);

const testUsers = [
  {
    privy_user_id: 'did:privy:test1',
    username: 'alice_dev',
    bio: 'Frontend developer passionate about Web3 and DeFi. Looking to build the next generation of decentralized apps.',
    skills: ['React', 'TypeScript', 'Solidity', 'UI/UX'],
    looking_for: ['Co-founder', 'CTO', 'Frontend Developer'],
    twitter_username: 'alice_dev',
    twitter_name: 'Alice Johnson',
    twitter_avatar_url: 'https://images.unsplash.com/photo-1494790108755-2616b332a378?w=400&h=400&fit=crop&crop=face',
    wallet_address: '5vPf3hYo4qCAxZfZsQ9n6YVxkL8ZGpVzJ4KfvDz4mEa1',
    profile_completed: true
  },
  {
    privy_user_id: 'did:privy:test2',
    username: 'bob_blockchain',
    bio: 'Backend engineer with 5+ years experience. Expertise in Rust, Go, and blockchain protocols.',
    skills: ['Rust', 'Go', 'Blockchain', 'Smart Contracts'],
    looking_for: ['Co-founder', 'Backend Developer', 'Technical Advisor'],
    twitter_username: 'bob_blockchain',
    twitter_name: 'Bob Smith',
    twitter_avatar_url: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400&h=400&fit=crop&crop=face',
    wallet_address: '8kLm9nP2qRsT6uVwX7yZaBc3dEf4gHi5jK6lM8nO9pQ2',
    profile_completed: true
  },
  // Add more test users as needed
];

async function populateTestData() {
  try {
    console.log('Adding test users...');
    
    for (const user of testUsers) {
      const { data, error } = await supabase
        .from('users')
        .insert([user]);
        
      if (error) {
        console.error('Error adding user:', user.username, error);
      } else {
        console.log('✅ Added user:', user.username);
      }
    }
    
    console.log('🎉 Test data populated successfully!');
  } catch (error) {
    console.error('Failed to populate test data:', error);
  }
}

populateTestData();