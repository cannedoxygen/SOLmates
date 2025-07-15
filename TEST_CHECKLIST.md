# Solmates App Test Checklist 🚀

## 🔐 Authentication & Profile
- [ ] Login with Twitter/X
- [ ] Verify profile data populated from Twitter
- [ ] Update profile (bio, skills, looking for)
- [ ] Verify profile saves correctly

## 💬 Complete Chat Flow Test

### 1. Match Creation
- [ ] Navigate to Discover tab
- [ ] Swipe right on a user to create match
- [ ] Verify match appears in Matches tab
- [ ] Check match shows correct user info

### 2. Chat Initialization
- [ ] Click message button on match
- [ ] Verify chat room opens
- [ ] Check participant name displays correctly (not "Unknown")
- [ ] Verify avatar shows properly

### 3. Message Sending
- [ ] Type a message
- [ ] Press send button
- [ ] Verify message appears in chat
- [ ] Check message shows on correct side (sent vs received)
- [ ] Verify timestamp is correct

### 4. Encryption Verification
- [ ] Send a message
- [ ] Check Supabase dashboard - messages table
- [ ] Verify `encrypted_content` column has encrypted data
- [ ] Verify `encryption_iv` column has IV data
- [ ] Confirm `content` column still has plain text (fallback)

### 5. Real-time Messaging
- [ ] Keep chat open
- [ ] Have another user send message (or use mock)
- [ ] Verify message appears without refresh
- [ ] Check read receipts update

### 6. Tip Functionality
- [ ] Click diamond (tip) button in chat
- [ ] Verify TipModal appears as bottom sheet
- [ ] Check all tip options are visible
- [ ] Select a tip amount
- [ ] Verify can scroll to see all content
- [ ] Send tip (should show success)
- [ ] Verify tip appears in chat history

## 🚀 Project Room Test

### 1. Project Creation
- [ ] Click rocket button on a match
- [ ] Fill in project details
- [ ] Select tech stack
- [ ] Create project
- [ ] Verify redirects to project room

### 2. Task Management
- [ ] Click + button to add task
- [ ] Create a task with priority
- [ ] Mark task as complete
- [ ] Verify status updates
- [ ] Check activity feed shows updates

### 3. Collaboration Features
- [ ] Verify both match users are members
- [ ] Check member roles (owner vs collaborator)
- [ ] Test real-time updates (if implemented)

## 🐛 Known Issues to Verify Fixed

- [x] Chat showing "Unknown" user - **FIXED**
- [x] Messages not sending - **FIXED**
- [x] TipModal not appearing - **FIXED**
- [x] TipModal cut off/not scrollable - **FIXED**
- [x] Supabase .single() returning arrays - **FIXED**
- [x] VirtualizedList warning - **FIXED**

## 📱 Edge Cases

- [ ] Empty states (no matches, no messages)
- [ ] Network errors (offline behavior)
- [ ] Long messages (text wrapping)
- [ ] Multiple tips in succession
- [ ] Creating chat with same user twice
- [ ] Switching between multiple chats quickly

## 🎨 UI/UX Verification

- [ ] Dark theme consistency
- [ ] Animations smooth (swipe cards, modals)
- [ ] Loading states present
- [ ] Error messages user-friendly
- [ ] Safe area insets respected
- [ ] Keyboard behavior correct

## 📊 Performance

- [ ] Chat loads quickly with many messages
- [ ] Swipe cards responsive
- [ ] No memory leaks on navigation
- [ ] Images load efficiently

## 🔄 Next Steps After Testing

1. Document any new issues found
2. Prioritize fixes based on severity
3. Add automated tests for critical flows
4. Consider user feedback implementation