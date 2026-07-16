#!/data/data/com.termux/files/usr/bin/bash
set -e
required=(
  ".github/workflows/build-apk.yml"
  "app/build.gradle"
  "app/src/main/AndroidManifest.xml"
  "app/src/main/java/com/blueicetopup/official/MainActivity.java"
  "build.gradle"
  "settings.gradle"
)
for f in "${required[@]}"; do
  if [ ! -e "$f" ]; then
    echo "Missing: $f"
    exit 1
  fi
done
echo "Project structure is correct."
