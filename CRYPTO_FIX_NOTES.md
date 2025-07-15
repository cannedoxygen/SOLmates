# Crypto Polyfill Fix for Privy + Expo Router

## Problem Description

When using Privy SDK with Expo Router in React Native, you may encounter this error:
```
ERROR ReferenceError: Property 'crypto' doesn't exist, js engine: hermes
```

## Root Cause

The issue occurs during Expo Router's route discovery process:

1. **Expo Router scans all route files** during app startup (before main app code runs)
2. **Route files import Privy SDK** (`import { usePrivy } from '@privy-io/expo'`)
3. **Privy SDK immediately requires crypto functions** when imported
4. **Crypto polyfills haven't loaded yet** because they're typically imported in individual components
5. **Result: Crypto errors for every route file that imports Privy**

## The Solution

Create a **global entry point** that loads crypto polyfills before Expo Router starts:

### 1. Create `index.js` in project root:

```javascript
// Global polyfills that must load before ANYTHING else
import 'react-native-get-random-values';
import { Buffer } from 'buffer';

// Set up crypto immediately
global.crypto = global.crypto || {};
global.crypto.getRandomValues = global.crypto.getRandomValues || function(array) {
  for (let i = 0; i < array.length; i++) {
    array[i] = Math.floor(Math.random() * 256);
  }
  return array;
};
global.crypto.randomUUID = global.crypto.randomUUID || function() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
};
global.crypto.subtle = global.crypto.subtle || undefined;

// Set up other globals
global.Buffer = global.Buffer || Buffer;
global.process = global.process || {
  env: {},
  nextTick: (fn) => setTimeout(fn, 0),
  version: 'v16.0.0',
  platform: 'react-native',
};
global.process.env = global.process.env || {};

// Now load the actual app
import 'expo-router/entry';
```

### 2. Update `package.json`:

```json
{
  "main": "index.js"
}
```

(Change from `"expo-router/entry"` to `"index.js"`)

## How This Fixes It

**Load Order:**
1. **Polyfills load first** (in global scope)
2. **Expo Router starts** and scans route files
3. **Route files import Privy** 
4. **Crypto is already available** ✅

## Dependencies Required

Make sure you have these installed:
```bash
npm install react-native-get-random-values buffer
```

## When to Use This Fix

Use this approach when you encounter crypto errors with:
- Privy SDK + Expo Router
- Any Web3 SDK that needs crypto during import
- Supabase + crypto functions
- Any library requiring crypto polyfills during route discovery

## Alternative Approaches (That Don't Work)

❌ **Importing polyfills in individual route files** - Too late, Expo Router already scanned
❌ **Metro config polyfill injection** - Can break bundle in some cases  
❌ **Conditional imports** - Expo Router still tries to analyze imports statically

✅ **Global entry point** - Guarantees polyfills load before any route scanning