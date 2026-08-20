# Telecast Android APK

A Capacitor Android wrapper around the Telecast live-TV webpage.

## Build APK on GitHub

1. Upload this project to a GitHub repository.
2. Open **Actions**.
3. Select **Build Telecast APK**.
4. Run the workflow.
5. When it finishes, open the workflow run and download the **Telecast-debug-apk** artifact.
6. Extract the artifact and install the APK on Android.

The app uses the existing Telecast webpage in `www/index.html`.

## Important
The live channel list is loaded by the webpage from the configured IPTV M3U source, so the Android app needs internet access.

## GitHub Actions fix

The workflow intentionally does not use `cache: npm`, because this project does not require a committed lock file for the build. GitHub Actions will run `npm install` directly.
