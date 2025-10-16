#!/bin/bash

FILE="testfile.txt"

# Check if file exists
if [ ! -f "$FILE" ]; then
  echo "Creating $FILE..."
  echo "This_is_a_test_line" > "$FILE"
fi

echo "Choose an option:"
echo "1. Add spaces"
echo "2. Remove spaces"

read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
  echo "Adding spaces..."
  sed -i 's/_/ /g' "$FILE"
  cat "$FILE"
elif [ "$choice" == "2" ]; then
  echo "Removing spaces..."
  sed -i 's/ /_/g' "$FILE"
  cat "$FILE"
else
  echo "Invalid choice!"
fi
