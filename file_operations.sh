#!/bin/bash

# Define the file to check
file="test/test.sh"

# Check if the file exists
if [ -e "$file" ]; then
  echo "The file '$file' exists."
else
  echo "The file '$file' does not exist."
  exit 1
fi

# Check if it is a regular file
if [ -f "$file" ]; then
  echo "'$file' is a regular file."
else
  echo "'$file' is not a regular file."
fi

# Check if it is a directory
if [ -d "$file" ]; then
  echo "'$file' is a directory."
else
  echo "'$file' is not a directory."
fi

# Check if the file is readable
if [ -r "$file" ]; then
  echo "'$file' is readable."
else
  echo "'$file' is not readable."
fi

# Check if the file is writable
if [ -w "$file" ]; then
  echo "'$file' is writable."
else
  echo "'$file' is not writable."
fi

# Check if the file is executable
if [ -x "$file" ]; then
  echo "'$file' is executable."
else
  echo "'$file' is not executable."
fi

# Check if the file is empty
if [ -s "$file" ]; then
  echo "'$file' is not empty."
else
  echo "'$file' is empty."
fi
