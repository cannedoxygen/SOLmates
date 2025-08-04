# Analysis of Mutual Right Swipe Match Creation Issue in Solmates

## Issues Identified

### 1. **Inconsistent User ID Ordering in Match Creation**

The main issue is that there are **two different approaches** to creating matches in the codebase:

#### In `discover.tsx` (lines 252-261):
```typescript
const { data: match } = await supabase
  .from('matches')
  .insert([{
    user1_id: currentUserProfile.id,  // Always current user first
    user2_id: swipedUser.id,          // Always swiped user second
    user1_liked: true,
    user2_liked: true,
    matched_at: new Date().toISOString(),
  }])
  .select();
```

#### In `matchingService.ts` (lines 163-169):
```typescript
const { data: matchData, error: matchError } = await supabase
  .from('matches')
  .insert([{
    user1_id: swiperId < swipedId ? swiperId : swipedId,  // Consistent ordering by ID
    user2_id: swiperId < swipedId ? swipedId : swiperId,
    user1_liked: true,
    user2_liked: true,
    matched_at: new Date().toISOString(),
    created_at: new Date().toISOString(),
  }])
  .select('*');
```

### 2. **The Problem**

The `matches` table has a **UNIQUE constraint on (user1_id, user2_id)** (line 55 of initial schema). This means:

- If User A (id: `aaa`) swipes right on User B (id: `bbb`)
- And User B swipes right back on User A
- In discover.tsx:
  - When A swipes: match is created with `user1_id: aaa, user2_id: bbb`
  - When B swipes: it tries to create match with `user1_id: bbb, user2_id: aaa`
  - This creates **two different unique pairs**, violating the intended behavior

The MatchingService correctly handles this by always ordering the IDs consistently (smaller ID first), but discover.tsx doesn't use the MatchingService.

### 3. **Additional Issues**

1. **Reciprocal Swipe Query** (lines 242-248 in discover.tsx):
   - The query correctly looks for reciprocal swipes
   - But the match creation doesn't account for the unique constraint

2. **No Error Handling for Duplicate Matches**:
   - If a match already exists (from the other user's swipe), the insert will fail silently
   - No check is made to see if a match already exists before trying to create one

3. **Inconsistent Service Usage**:
   - discover.tsx directly interacts with Supabase instead of using MatchingService
   - This leads to duplicated logic and inconsistent behavior

## Recommended Fixes

### Option 1: Use MatchingService (Recommended)
Replace the direct Supabase calls in discover.tsx with MatchingService.recordSwipe()

### Option 2: Fix the Direct Implementation
1. Check for existing matches before creating
2. Use consistent ID ordering
3. Handle the case where a match already exists

### Option 3: Update Database Schema
Add a database trigger or function to handle match creation with automatic ID ordering