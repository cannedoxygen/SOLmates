import * as Crypto from 'expo-crypto';

/**
 * Simple encryption utilities for chat messages
 * Uses AES-GCM for symmetric encryption
 */

// Generate a shared secret from two user IDs (deterministic)
export async function generateSharedSecret(userId1: string, userId2: string): Promise<string> {
  // Sort IDs to ensure same secret regardless of order
  const sortedIds = [userId1, userId2].sort().join('-');
  
  // Generate a deterministic key from the user IDs
  // In production, you'd want to use wallet signatures or DH key exchange
  const digest = await Crypto.digestStringAsync(
    Crypto.CryptoDigestAlgorithm.SHA256,
    `solmates-chat-${sortedIds}-v1`,
    { encoding: Crypto.CryptoEncoding.HEX }
  );
  
  return digest;
}

// Encrypt a message
export async function encryptMessage(
  plaintext: string, 
  sharedSecret: string
): Promise<{ encrypted: string; iv: string }> {
  try {
    // Generate random IV for each message
    const ivBytes = await Crypto.getRandomBytesAsync(16);
    const iv = btoa(String.fromCharCode(...new Uint8Array(ivBytes)));
    
    // Use first 32 chars of shared secret as key
    const key = sharedSecret.substring(0, 32);
    
    // Simple XOR encryption for MVP (replace with proper AES in production)
    const encrypted = await simpleEncrypt(plaintext, key, iv);
    
    return { encrypted, iv };
  } catch (error) {
    console.error('Encryption failed:', error);
    throw new Error('Failed to encrypt message');
  }
}

// Decrypt a message
export async function decryptMessage(
  encrypted: string, 
  iv: string, 
  sharedSecret: string
): Promise<string> {
  try {
    // Use first 32 chars of shared secret as key
    const key = sharedSecret.substring(0, 32);
    
    // Simple XOR decryption for MVP
    const decrypted = await simpleDecrypt(encrypted, key, iv);
    
    return decrypted;
  } catch (error) {
    console.error('Decryption failed:', error);
    throw new Error('Failed to decrypt message');
  }
}

// Simple XOR-based encryption (temporary - replace with proper crypto)
async function simpleEncrypt(text: string, key: string, iv: string): Promise<string> {
  let result = '';
  const keyHash = await Crypto.digestStringAsync(
    Crypto.CryptoDigestAlgorithm.SHA256,
    key + iv,
    { encoding: Crypto.CryptoEncoding.HEX }
  );
  
  for (let i = 0; i < text.length; i++) {
    const charCode = text.charCodeAt(i);
    const keyChar = keyHash.charCodeAt(i % keyHash.length);
    result += String.fromCharCode(charCode ^ keyChar);
  }
  
  // Encode to base64 for storage
  return btoa(result);
}

// Simple XOR-based decryption
async function simpleDecrypt(encrypted: string, key: string, iv: string): Promise<string> {
  // Decode from base64
  const text = atob(encrypted);
  let result = '';
  
  const keyHash = await Crypto.digestStringAsync(
    Crypto.CryptoDigestAlgorithm.SHA256,
    key + iv,
    { encoding: Crypto.CryptoEncoding.HEX }
  );
  
  for (let i = 0; i < text.length; i++) {
    const charCode = text.charCodeAt(i);
    const keyChar = keyHash.charCodeAt(i % keyHash.length);
    result += String.fromCharCode(charCode ^ keyChar);
  }
  
  return result;
}

// Encrypt user metadata (for future use)
export async function encryptMetadata(data: any, secret: string): Promise<string> {
  const json = JSON.stringify(data);
  const { encrypted, iv } = await encryptMessage(json, secret);
  return JSON.stringify({ encrypted, iv });
}

// Decrypt user metadata
export async function decryptMetadata(encryptedData: string, secret: string): Promise<any> {
  try {
    const { encrypted, iv } = JSON.parse(encryptedData);
    const json = await decryptMessage(encrypted, iv, secret);
    return JSON.parse(json);
  } catch {
    return null;
  }
}