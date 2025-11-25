#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
  export $(cat .env | grep -v '^#' | xargs)
else
  echo "Error: .env file not found"
  exit 1
fi

# Check if KAKAO_NATIVE_APP_KEY is set
if [ -z "$KAKAO_NATIVE_APP_KEY" ]; then
  echo "Error: KAKAO_NATIVE_APP_KEY is not set in .env file"
  exit 1
fi

echo "Updating Android and iOS configuration files..."

# Update Android AndroidManifest.xml
ANDROID_MANIFEST="android/app/src/main/AndroidManifest.xml"
if [ -f "$ANDROID_MANIFEST" ]; then
  # Replace kakao URL scheme
  sed -i.bak "s/android:scheme=\"kakao[a-zA-Z0-9]*\"/android:scheme=\"kakao${KAKAO_NATIVE_APP_KEY}\"/" "$ANDROID_MANIFEST"
  echo "✓ Updated $ANDROID_MANIFEST"
else
  echo "⚠ Warning: $ANDROID_MANIFEST not found"
fi

# Update iOS Info.plist
IOS_PLIST="ios/Runner/Info.plist"
if [ -f "$IOS_PLIST" ]; then
  # Replace kakao URL scheme in Info.plist
  sed -i.bak "s/<string>kakao[a-zA-Z0-9]*<\/string>/<string>kakao${KAKAO_NATIVE_APP_KEY}<\/string>/" "$IOS_PLIST"
  echo "✓ Updated $IOS_PLIST"
else
  echo "⚠ Warning: $IOS_PLIST not found"
fi

echo "Done! Configuration files updated with environment variables."
