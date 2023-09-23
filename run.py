import subprocess

ex = open("to_grade.txt", "r+").readline()

compile_command = f"gcc exercises/{ex}/*.c -o exercises/{ex}/app.exe "
run_command = f"exercises/{ex}/app.exe"

subprocess.call(compile_command)
subprocess.call(run_command)
