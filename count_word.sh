#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

file_path="$1"

# Read the file, convert to lowercase, replace non-alphanumeric characters with newlines,
# sort the words, count occurrences, sort by count, and display the top 5
cat "$file_path" | \
tr '[:upper:]' '[:lower:]' | \
tr -c '[:alnum:]' '\n' | \
sort | \
uniq -c | \
sort -nr | \
head -n 5
