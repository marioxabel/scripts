#! /bin/bash
echo "Renaming..."
for f in *\ *; do mv "$f" "${f// /_}"; done

echo "Batch installing..."
for file in *.apk; do adb install $file; done
echo "APKs installed"
