const { createClient } = require('@supabase/supabase-js');

// Your wallet address from the logs
const walletAddress = '5wcAxB2zHmcEXdtBxXYYYLvHdwMKLBjayPpsNHiaQQAd';
const HELIUS_API_KEY = '99b7e94e-9dff-4de3-82ac-567bfbda369c';

async function checkTransactions() {
  try {
    console.log('🔍 Checking recent transactions for:', walletAddress);
    
    // Try the enhanced Helius API endpoint for detailed transaction parsing
    const response = await fetch(`https://api.helius.xyz/v0/addresses/${walletAddress}/transactions?api-key=${HELIUS_API_KEY}&limit=20`);
    const data = await response.json();
    
    console.log('📋 Raw response status:', response.status);
    console.log('📊 Total transactions found:', data?.length || 0);
    
    if (data && data.length > 0) {
      console.log('\n💸 Recent transactions:');
      
      data.forEach((tx, index) => {
        console.log(`\n${index + 1}. Transaction ${tx.signature?.slice(0, 8)}...`);
        console.log('   Type:', tx.type);
        console.log('   Description:', tx.description);
        console.log('   Timestamp:', new Date(tx.timestamp * 1000).toLocaleString());
        
        // Check for SOL transfers
        if (tx.nativeTransfers && tx.nativeTransfers.length > 0) {
          console.log('   SOL Transfers:');
          tx.nativeTransfers.forEach(transfer => {
            const amount = transfer.amount / 1000000000; // Convert lamports to SOL
            console.log(`     ${transfer.fromUserAccount === walletAddress ? 'Sent' : 'Received'} ${amount.toFixed(4)} SOL`);
          });
        }
        
        // Check for token transfers
        if (tx.tokenTransfers && tx.tokenTransfers.length > 0) {
          console.log('   Token Transfers:');
          tx.tokenTransfers.forEach(transfer => {
            const isBonk = transfer.mint === 'DezXAZ8z7PnrnRJjz3wXBoRgixCa6xjnB7YaB1pPB263';
            const symbol = isBonk ? 'BONK' : 'TOKEN';
            const decimals = isBonk ? 5 : (transfer.decimals || 9);
            const amount = transfer.tokenAmount / Math.pow(10, decimals);
            
            console.log(`     ${transfer.fromUserAccount === walletAddress ? 'Sent' : 'Received'} ${amount.toLocaleString()} ${symbol}`);
            console.log(`     From: ${transfer.fromUserAccount?.slice(0, 8)}...`);
            console.log(`     To: ${transfer.toUserAccount?.slice(0, 8)}...`);
          });
        }
        
        // Check for account data changes (sometimes indicates token transfers)
        if (tx.accountData && tx.accountData.length > 0) {
          console.log('   Account Data Changes:', tx.accountData.length);
        }
      });
    } else {
      console.log('❌ No transactions found or API error');
      console.log('Response:', JSON.stringify(data).substring(0, 500));
    }
    
  } catch (error) {
    console.error('❌ Error fetching transactions:', error);
  }
}

checkTransactions();