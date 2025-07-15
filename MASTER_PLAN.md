# Solmates - Master Development Plan

## 🎯 Current Status
- ✅ Privy authentication working (Twitter OAuth + Embedded Solana wallets)
- ✅ Crypto polyfill issues resolved
- ✅ Supabase connected and ready
- ✅ Basic UI components and navigation working
- ✅ Mock data system in place

## 🚀 Next Three Major Steps

### **STEP 1: Profile System Integration** 
*Connect user profiles between Privy and Supabase*

**Goal:** Users can fill out their profile (bio, skills, looking_for) and see their real data on profile cards

**Key Tasks:**
1. **Database Schema**
   - Create/update users table with Privy user ID as foreign key
   - Add fields: bio, skills, looking_for, twitter_data, wallet_address
   
2. **Profile Sync Service**
   - Build service to create Supabase user when Privy user logs in
   - Sync Twitter data (username, avatar) from Privy to Supabase
   - Handle wallet address linking
   
3. **Onboarding Integration**
   - Connect onboarding form to save to Supabase
   - Save bio, skills, looking_for to user profile
   - Handle profile updates and validation
   
4. **Profile Display**
   - Update profile card to show real Supabase data + Twitter avatar
   - Show actual bio and skills instead of placeholder text
   - Add edit profile functionality

**Success Criteria:**
- ✅ User completes onboarding → data saved to Supabase
- ✅ Profile card shows user's actual bio and skills
- ✅ Twitter avatar + username from Privy, other data from Supabase

---

### **STEP 2: Real User Discovery**
*Replace mock users with actual users from database*

**Goal:** Discover screen shows real users who have completed their profiles

**Key Tasks:**
1. **Discovery API**
   - Create service to fetch users from Supabase (excluding current user)
   - Filter users who have completed profiles (bio + skills filled)
   - Add pagination and basic filtering
   
2. **User Profile Conversion**
   - Convert Supabase user records to UserProfile format
   - Combine Twitter data with profile data
   - Handle missing/incomplete profiles gracefully
   
3. **Smart Matching Logic**
   - Implement basic matching algorithm based on skills/looking_for
   - Score users by compatibility
   - Sort discovery results by match score
   
4. **Discovery Screen Updates**
   - Replace mock data with real users
   - Add loading states and error handling
   - Fallback to mock data if no real users exist

**Success Criteria:**
- ✅ Discover screen shows real users from database
- ✅ Users see each other's actual profiles and skills
- ✅ Basic matching algorithm suggests compatible users
- ✅ Graceful handling when no users exist

---

### **STEP 3: Matches & Chat System**
*Enable users to swipe, match, and chat with each other*

**Goal:** Complete social interaction flow - swipe → match → chat

**Key Tasks:**
1. **Swipes & Matches Database**
   - Create swipes table (user_id, target_user_id, action, timestamp)
   - Create matches table for mutual likes
   - Add match detection logic
   
2. **Swipe Recording**
   - Save swipes to database when user swipes left/right
   - Check for mutual matches when user swipes right
   - Trigger match creation and notification
   
3. **Matches Screen**
   - Load real matches from database
   - Display matched users with their profiles
   - Add navigation to chat/project rooms
   
4. **Basic Chat System**
   - Create chat_rooms and messages tables
   - Implement real-time messaging with Supabase
   - Add chat interface for matches
   
5. **Notifications**
   - Add match notifications ("It's a Match!")
   - Add new message indicators
   - Handle notification permissions

**Success Criteria:**
- ✅ Users can swipe and matches are detected/stored
- ✅ Matches screen shows real matched users
- ✅ Users can chat with their matches
- ✅ Real-time messaging works
- ✅ Match notifications appear

---

## 🎯 Success Metrics

**After Step 1:** Users have persistent profiles that others can see
**After Step 2:** Users discover and swipe on real people  
**After Step 3:** Users can match and communicate → Full MVP working!

## 🔧 Technical Architecture

```
Privy (Auth + Wallets) ←→ Supabase (Data + Chat) ←→ React Native UI
                              ↓
                    [Users, Profiles, Matches, Messages]
```

## 📋 Current Todo List Status

**Profile System:** 5 tasks planned
**Discovery System:** 4 tasks planned  
**Matching System:** 5 tasks planned

**Total:** 14 tasks to complete MVP functionality

---

## 🚦 Next Immediate Action

**Start with Profile System (Step 1)**
- Begin with database schema updates
- Then build the Privy-Supabase bridge
- This unlocks everything else!