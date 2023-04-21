#! /bin/bash
echo "Renaming..."
for f in $1/*\ *; do mv "$f" "${f// /_}"; done

echo "Batch installing..."
for file in $1/*.apk; do adb install $file; done
echo "APKs installed"
