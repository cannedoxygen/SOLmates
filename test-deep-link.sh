#!/bin/bash

echo "🔗 Testing deep links..."

# Test deep link URLs
DEEP_LINK_BASE="solmates://"

echo "Testing deep links:"
echo "1. Main app: ${DEEP_LINK_BASE}"
echo "2. Profile: ${DEEP_LINK_BASE}profile"
echo "3. Chat: ${DEEP_LINK_BASE}chat/123"
echo "4. Matches: ${DEEP_LINK_BASE}matches"

# Test with adb for Android (if available)
if command -v adb &> /dev/null; then
    echo ""
    echo "📱 Testing on Android device..."
    adb shell am start -W -a android.intent.action.VIEW -d "${DEEP_LINK_BASE}" com.solmates.app
else
    echo "📱 adb not found - install Android SDK to test on device"
fi

# Test with xcrun for iOS Simulator (if available)
if command -v xcrun &> /dev/null; then
    echo ""
    echo "📱 Testing on iOS Simulator..."
    xcrun simctl openurl booted "${DEEP_LINK_BASE}"
else
    echo "📱 xcrun not found - install Xcode to test on iOS"
fi

echo "✅ Deep link test complete!"