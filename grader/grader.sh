#!/bin/bash

# Check if the TO_GRADE environment variable is set
if [ -z "$TO_GRADE" ]; then
  echo "TO_GRADE environment variable is not set."
  exit 1
fi

# Check if the script with the specified name exists
if [ ! -f "$TO_GRADE" ]; then
  echo "Script '$TO_GRADE' does not exist."
  exit 1
fi

# Make the script executable (if it's not already)
chmod +x "$TO_GRADE.sh"

# Run the script
./"$TO_GRADE.sh"