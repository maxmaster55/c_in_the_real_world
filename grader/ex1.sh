
ex_path=../exercises/$TO_GRADE
cd $ex_path
pwd
gcc ./*.c -lm -o app

output=$(./app)
expected_output="distance=8.25"
if [[ "$output" == "$expected_output" ]]; then
  echo "Test passed: Output matches expected value."
  exit 0
else
  echo "Test failed: Output does not match expected value."
  exit 1
fi


