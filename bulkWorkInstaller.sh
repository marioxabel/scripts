#!/bin/bash

# Number of lines to select from the end of the output
n="$1"

# Run the adb command and store the output in a variable
output=$(adb shell pm list users | tail -n "$n")

# Use grep and awk to extract the first number in each line
numbers=$(echo "$output" | grep -o "[0-9]*:[0-9]*:[0-9]*" | awk -F: '{print $1}')

# Debugging: print the extracted numbers
printf "\nUsers to install on:\n$numbers\n\n"

# Loop through the numbers and call bulkInstall.sh with each number as a parameter
i=1
for num in $numbers
do
  echo "Bulk installing on user $num (iteration $i)"
  userInstall.sh "$num"
  ((i++))
done

