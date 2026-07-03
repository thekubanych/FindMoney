#!/bin/bash
# Anti-Finance Flutter — Clean setup & run script
# Run: bash setup.sh

set -e
echo "🚀 Anti-Finance Flutter Setup"
echo "================================"

# 1. Flutter pub get
echo ""
echo "📦 Step 1: flutter pub get..."
flutter pub get

# 2. Code generation (REQUIRED — freezed, riverpod, retrofit)
echo ""
echo "🔧 Step 2: Running build_runner (code generation)..."
dart run build_runner build --delete-conflicting-outputs

# 3. iOS pods
echo ""
echo "🍎 Step 3: Installing iOS pods..."
cd ios
pod install --repo-update
cd ..

# 4. Clean build cache
echo ""
echo "🧹 Step 4: flutter clean..."
flutter clean
flutter pub get

echo ""
echo "✅ Setup complete!"
echo ""
echo "To run on iPhone:"
echo "  flutter run"
echo ""
echo "To run on specific device:"
echo "  flutter devices"
echo "  flutter run -d <device-id>"
echo ""
echo "⚠️  BEFORE RUNNING — make sure you have:"
echo "  1. GoogleService-Info.plist in ios/Runner/"
echo "     (get it from Firebase Console → Project Settings → iOS app)"
echo "  2. Apple Developer account configured in Xcode"
echo "  3. Bundle ID matches your Apple Developer account"
