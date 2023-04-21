#! /bin/bash
echo "Renaming..."
for f in *\ *; do mv "$f" "${f// /_}"; done

echo "Batch installing on user $1..."
for file in *.apk; do adb install --user $1 ./$file; done
echo "APKs installed on user $1"