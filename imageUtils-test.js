/**
 * Utility functions for handling images in the app
 */

/**
 * Get high-resolution Twitter profile image
 * Twitter provides different image sizes by modifying the URL suffix:
 * - _normal = 48x48 (low resolution, blurry)
 * - _bigger = 73x73
 * - _200x200 = 200x200
 * - _400x400 = 400x400
 * - Remove suffix = original full resolution
 * 
 * @param url - The Twitter profile image URL
 * @param size - The desired size ('200x200', '400x400', or 'original')
 * @returns The high-resolution image URL or undefined if invalid
 */
function getHighResTwitterImage(url? | null, size = "400x400") | undefined {
  if (!url || typeof url !== 'string') {
    return undefined;
  }
  
  // Check if it's a Twitter profile image URL
  if (!url.includes('pbs.twimg.com') && !url.includes('twitter.com')) {
    return url; // Return as-is if not a Twitter image
  }
  
  // Remove any existing size modifiers
  let highResUrl = url
    .replace(/_normal\.(jpg|jpeg|png|webp)$/i, '.$1')
    .replace(/_bigger\.(jpg|jpeg|png|webp)$/i, '.$1')
    .replace(/_mini\.(jpg|jpeg|png|webp)$/i, '.$1')
    .replace(/_200x200\.(jpg|jpeg|png|webp)$/i, '.$1')
    .replace(/_400x400\.(jpg|jpeg|png|webp)$/i, '.$1');
  
  // Add the desired size modifier (unless original is requested)
  if (size !== 'original') {
    highResUrl = highResUrl.replace(/\.(jpg|jpeg|png|webp)$/i, `_${size}.$1`);
  }
  
  return highResUrl;
}

/**
 * Get the best available avatar URL for a user
 * Prioritizes Twitter avatar (in high resolution) over other sources
 * 
 * @param twitterAvatarUrl - The Twitter avatar URL
 * @param avatarUrl - The regular avatar URL
 * @param fallbackUrl - Optional fallback URL
 * @returns The best available avatar URL
 */
function getBestAvatarUrl(
  twitterAvatarUrl? | null,
  avatarUrl? | null,
  fallbackUrl? | null
) | undefined {
  // First try Twitter avatar in high resolution
  const highResTwitter = getHighResTwitterImage(twitterAvatarUrl);
  if (highResTwitter) {
    return highResTwitter;
  }
  
  // Then try regular avatar URL
  if (avatarUrl) {
    return avatarUrl;
  }
  
  // Finally use fallback
  return fallbackUrl || undefined;
}
module.exports = { getHighResTwitterImage, getBestAvatarUrl };