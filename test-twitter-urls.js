// Test Twitter image URLs to see what's causing 404s
const fetch = require('node-fetch');

async function testTwitterUrls() {
  console.log('🔍 Testing Twitter image URLs...');
  
  const testUrls = [
    // Original _normal URLs from database
    'https://pbs.twimg.com/profile_images/1635703048234917890/eAq5rO7u_normal.jpg',
    'https://pbs.twimg.com/profile_images/1598103201574912000/d7jMFI7k_normal.jpg',
    'https://pbs.twimg.com/profile_images/1930940768773931008/_fEG9oLw_normal.jpg',
    
    // Our converted _400x400 URLs
    'https://pbs.twimg.com/profile_images/1635703048234917890/eAq5rO7u_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1598103201574912000/d7jMFI7k_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1930940768773931008/_fEG9oLw_400x400.jpg',
    
    // Test other sizes
    'https://pbs.twimg.com/profile_images/1635703048234917890/eAq5rO7u_bigger.jpg',
    'https://pbs.twimg.com/profile_images/1635703048234917890/eAq5rO7u.jpg',
  ];
  
  for (const url of testUrls) {
    try {
      console.log(`\nTesting: ${url}`);
      const response = await fetch(url, { 
        method: 'HEAD',
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
      });
      
      console.log(`   Status: ${response.status} ${response.statusText}`);
      if (response.status === 200) {
        console.log(`   ✅ Working`);
      } else {
        console.log(`   ❌ Failed`);
      }
    } catch (error) {
      console.log(`   💥 Error: ${error.message}`);
    }
  }
}

testTwitterUrls();