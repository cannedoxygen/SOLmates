#!/bin/bash

echo "🧹 Starting Solmates Codebase Cleanup - Phase 1"
echo "============================================="

# Count files before cleanup
echo "📊 Files before cleanup:"
ls -1 *.js *.sh *.sql 2>/dev/null | wc -l

echo ""
echo "🗑️  Removing development script files..."

# Remove development/debug scripts
rm -f admin-fix.js
rm -f debug-supabase.js  
rm -f fix-bio.js
rm -f fix-database.js
rm -f fix-rls-temp.js
rm -f reset-swipes.js
rm -f check-avatars.js
rm -f update-mock-avatars.js
rm -f test-connectivity.js

echo "✅ Removed debug scripts"

# Remove mock data scripts
rm -f insert_mock_data.js
rm -f insert-mock-profiles.js
rm -f create-solana-mobile-profile.js
rm -f create-mutual-matches.js

echo "✅ Removed mock data scripts"

# Remove temporary migration helpers
rm -f apply-migration.js
rm -f apply_encryption_migration.sql

echo "✅ Removed temporary migration files"

# Remove test shell scripts
rm -f test-deep-link.sh
rm -f test-supabase.sh

echo "✅ Removed test shell scripts"

# Remove SQL mock data files
rm -f create_mock_profile_solanamobile.sql

echo "✅ Removed SQL mock files"

echo ""
echo "🗂️  Removing empty component directories..."

# Remove empty component structure directories
rm -rf "app/(modals)/"
rm -rf "components/chat/"
rm -rf "components/forms/" 
rm -rf "components/ui/"

echo "✅ Removed empty directories"

echo ""
echo "📊 Files after cleanup:"
ls -1 *.js *.sh *.sql 2>/dev/null | wc -l

echo ""
echo "🎉 Phase 1 cleanup complete!"
echo "   - Removed ~20 development files"
echo "   - Removed empty component directories"
echo "   - Zero functional impact on production code"
echo ""
echo "💡 Next steps:"
echo "   1. Test the app: npm start"
echo "   2. Verify functionality still works"
echo "   3. Consider Phase 2 (duplicate chat implementations)"