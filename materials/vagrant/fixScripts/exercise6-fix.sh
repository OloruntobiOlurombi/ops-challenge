#!/bin/bash
#add fix to exercise6-fix here

# Check the number of arguments
if [ $# -lt 3 ]; then
  echo "Usage: $0 <file1> <file2> ... <destination_folder>"
  exit 1
fi

# Get the last argument as the destination folder
destination="${!#}"

# Check if the destination folder exists on the other server
# Replace "server2" with the actual hostname or IP of the other server
ssh vagrant@server2 "if [ ! -d '$destination' ]; then mkdir -p '$destination'; fi"

# Loop through all arguments except the last one (files to copy)
total_bytes=0
for ((i = 1; i <= $# - 1; i++)); do
  file="${!i}"
  if [ -f "$file" ]; then
    # Copy the file to the destination folder on the other server
    bytes_copied=$(scp "$file" vagrant@server2:"$destination" | awk '{print $5}')
    total_bytes=$((total_bytes + bytes_copied))
    echo "Copied $file to $destination on server2 ($bytes_copied bytes)"
  else
    echo "Error: $file does not exist or is not a regular file."
  fi
done

# Print the total number of bytes copied
echo $total_bytes

