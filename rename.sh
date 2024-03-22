#!/bin/bash

# Define the directory to search in
DIR="."

# Find all files with 'TypingDeadList' in their filename
find $DIR -type f -name "*TypingDeadList*" | while read file; do
  # Get the directory of the file
  dir=$(dirname "$file")

  # Rename the file to 'TypingDeadList.java'
  mv "$file" "$dir/TypingDeadList.java"
done