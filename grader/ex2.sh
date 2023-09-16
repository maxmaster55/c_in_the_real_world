#!/bin/bash

# Get the number of books from the command line argument
num_books=$1

# Specify the path to the C source code directory
ex_path=../exercises/$TO_GRADE

# Change to the exercises directory
cd $ex_path

# Compile the C program
gcc ./*.c -lm -o app

# Check if the compilation was successful
if [ $? -ne 0 ]; then
  echo "Compilation failed."
  exit 1
fi

# Run the compiled program with 20 as the argument and capture its output
output=$(./app 20)

# Define the expected patterns for the print statements
expected_patterns=("total books=20" "total books borrowed=10" "total pages=19000")

# Check if the output matches the expected patterns
match_count=0
for pattern in "${expected_patterns[@]}"; do
  if [[ "$output" =~ $pattern ]]; then
    match_count=$((match_count + 1))
  fi
done

# Check if all expected patterns were matched
if [ $match_count -eq ${#expected_patterns[@]} ]; then
  echo "All tests passed: Output matches expected patterns."
  exit 0
else
  echo "Some tests failed: Output does not match expected patterns."
  exit 1
fi
