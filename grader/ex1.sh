
cd ../exercises/$TO_GRADE

gcc *.c -o app

OUTPUT=${./app}
expected_output="distance = 8.25"

if [ "$output" = "$expected_output" ]; then
  echo "Test passed: Output matches expected value."
  exist 0
else
  echo "Test failed: Output does not match expected value."
  exist 1
fi


