#!/usr/bin/bash
set -euo pipefail

# Check if filename is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Check if file exists
if [ ! -f "$1" ]; then
    echo "File $1 not found."
    exit 1
fi

# Count and print lines containing 'hello'
count=$(grep -ic 'hello' "$1")
echo "There are $count lines containing 'hello'. Here they are:"

# Print lines containing "hello" and variations
grep -i 'hello' "$1" | while read -r line
do
   # Perform some processing on $line
   processed_line=$(echo "$line" | tr '[:lower:]' '[:upper:]') # Convert to uppercase as an example
   echo "Processed line: $processed_line"
done