#!/bin/sh
# Build, sign and install on the USB-connected iPhone (Xcode 27 can't Run on iOS 16).
# Signing values live in local.env (gitignored), see local.env.example.
set -e
cd "$(dirname "$0")"
. ./local.env
./check.sh
xcodebuild -project PromoFilter.xcodeproj -scheme PromoFilter -configuration Debug \
  -destination 'generic/platform=iOS' -derivedDataPath build \
  -allowProvisioningUpdates -quiet \
  DEVELOPMENT_TEAM="$DEVELOPMENT_TEAM" BUNDLE_PREFIX="$BUNDLE_PREFIX" build
ideviceinstaller install build/Build/Products/Debug-iphoneos/PromoFilter.app
