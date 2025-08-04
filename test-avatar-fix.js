// Test the avatar URL transformation to verify our fix works
const { getHighResTwitterImage } = require('./lib/utils/imageUtils.ts');

// Test URLs
const normalUrl = 'https://pbs.twimg.com/profile_images/1587503498765869056/bFiocz3b_normal.jpg';
const old400Url = 'https://pbs.twimg.com/profile_images/1587503498765869056/bFiocz3b_400x400.jpg';

console.log('🧪 Testing avatar URL transformation...\n');

console.log('✅ Correct URL (normal):');
console.log('  Input:', normalUrl);
console.log('  Output:', getHighResTwitterImage(normalUrl));

console.log('\n❌ Broken URL (400x400):');
console.log('  Input:', old400Url);
console.log('  Output:', getHighResTwitterImage(old400Url));

console.log('\n🎯 Both should produce the same high-res 400x400 URL');