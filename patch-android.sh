#!/usr/bin/env bash
set -e
MANIFEST="android/app/src/main/AndroidManifest.xml"
if [ -f "$MANIFEST" ] && ! grep -q 'android.permission.INTERNET' "$MANIFEST"; then
  sed -i '/<manifest /a\    <uses-permission android:name="android.permission.INTERNET" />' "$MANIFEST"
fi
