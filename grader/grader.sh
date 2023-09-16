#!/bin/bash

cd grader

# Check if the TO_GRADE environment variable is set
if [ -z "$TO_GRADE" ]; then
  echo "TO_GRADE environment variable is not set."
  exit 1
fi

script_name=${TO_GRADE}.sh

# Check if the script with the specified name exists
if [ ! -f "$script_name" ]; then
  echo "Script '$script_name' does not exist."
  exit 1
fi

# Make the script executable (if it's not already)
chmod +x "$script_name"

# Run the script
./"$script_name"