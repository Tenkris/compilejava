#!/bin/bash

# Define the source directory and the dummy directory
SRC_DIR="src"
DUMMY_DIR="dummy"

# Find all subdirectories under the source directory
find $SRC_DIR -type d | while read dir; do
  # Check if there are any .jar files in the directory
  if [ $(ls $dir/*.jar 2> /dev/null | wc -l) -eq 0 ]; then
    # If there are no .jar files, copy all files from the dummy directory to the current subdirectory
    cp -v $DUMMY_DIR/* $dir/
  fi
done