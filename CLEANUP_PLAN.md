# Solmates Codebase Cleanup Plan

## Phase 1: Safe Immediate Removal (Recommended)

### Development Script Files (Root Directory)
These are one-time utility scripts that can be safely removed:

```bash
# Remove development/debug scripts
rm admin-fix.js
rm debug-supabase.js
rm fix-bio.js
rm fix-database.js
rm fix-rls-temp.js
rm reset-swipes.js
rm check-avatars.js
rm update-mock-avatars.js
rm test-connectivity.js

# Remove mock data scripts
rm insert_mock_data.js
rm insert-mock-profiles.js
rm create-solana-mobile-profile.js
rm create-mutual-matches.js

# Remove temporary migration helpers
rm apply-migration.js
rm apply_encryption_migration.sql

# Remove test shell scripts
rm test-deep-link.sh
rm test-supabase.sh

# Remove SQL mock data files
rm create_mock_profile_solanamobile.sql
```

### Empty Component Directories
Remove directories that only contain README files:

```bash
# Remove empty component structure directories
rm -rf app/\(modals\)/
rm -rf components/chat/
rm -rf components/forms/
rm -rf components/ui/
```

**Impact**: ~20 files removed, ~1-2MB saved, zero functional impact

## Phase 2: Code Consolidation (Requires Review)

### Duplicate Chat Implementation
**Issue**: Two chat screens serve the same purpose
- `/app/chat/[chatId].tsx` (712 lines) - Feature-complete with tips/encryption
- `/app/chat/[id].tsx` (444 lines) - Simpler implementation

**Recommendation**: Keep `[chatId].tsx`, remove `[id].tsx` after verifying no routes use it

### Development Components
**Review needed**:
- `components/PrivyEmulatorWorkaround.tsx` - Check if still needed for development
- `components/DeepLinkDebugger.tsx` - Only used in app/index.tsx, may be debug-only

## Phase 3: Service Layer Optimization

### Matching Services
- `lib/services/matchingService.ts` - Basic matching logic
- `lib/services/advancedMatchingService.ts` - Advanced algorithms

**Action**: Review for overlapping functionality and consolidate if possible

## Files to Keep (Important)

### Production Scripts
- `scripts/` directory - Contains proper migration and utility scripts
- `polyfills.js` - Required for React Native compatibility
- All migration files in `supabase/migrations/` - Database versioning

### Development Files (Keep)
- `troubleshoot.md` - Useful documentation
- All files in `mobile-wallet-adapter/` - Third-party integration
- Build files (`package.json`, `tsconfig.json`, etc.)

## Cleanup Commands

Run these commands from the project root:

```bash
# Phase 1: Remove development scripts
rm admin-fix.js debug-supabase.js fix-bio.js fix-database.js fix-rls-temp.js
rm reset-swipes.js check-avatars.js update-mock-avatars.js test-connectivity.js
rm insert_mock_data.js insert-mock-profiles.js create-solana-mobile-profile.js
rm create-mutual-matches.js apply-migration.js apply_encryption_migration.sql
rm test-deep-link.sh test-supabase.sh create_mock_profile_solanamobile.sql

# Phase 1: Remove empty directories
rm -rf app/\(modals\)/ components/chat/ components/forms/ components/ui/

echo "Phase 1 cleanup complete!"
```

## Post-Cleanup Verification

After cleanup:
1. Run `npm start` to ensure app still builds
2. Test core functionality (login, matching, chat, project rooms)
3. Verify no missing imports or broken references
4. Check git status to review all changes before committing

**Estimated Impact**: 
- Files removed: ~25
- Size reduction: ~1.5MB
- Risk level: Very Low (development files only)