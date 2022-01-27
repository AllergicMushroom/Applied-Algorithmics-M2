import subprocess
import os
from sys import prefix

algos = ["BF", "BB", "DP", "PA"]
# algos = ["MIP1", "MIP2"]
sub_category = "grid"

for algo in algos:
    print("\n", algo)
    prefix = "../data/graphs/"+sub_category+"/"
    save_name = prefix+sub_category+"_"+algo+".sol"
    subprocess.run("echo \" \" > "+save_name, shell=True) # Clear previous logs.

    # Print the results of the algorithms in a log file.
    for instance_name in sorted(os.listdir(prefix)):
        if ".txt" in instance_name:
            # timeout -k 2m 10s
            print(instance_name)
            command = "echo "+instance_name+">> "+save_name+"&& timeout -k 10s 2m  ./../build/AppliedAlgorithmics "+prefix+instance_name+" "+algo+" >> "+ save_name
            subprocess.run(command, shell=True)

    # Generate a summary of the logs.
    f = open(save_name, "r")
    summary = ""
    for line in f:
        for name in os.listdir(prefix):
            if name in line:
                summary += line
        if "Time used" in line and "Floyd-Warshall" not in line:
            summary += line
        if "Computed solution" in line:
            summary += line +"\n"

    # print(summary)

    command = "echo \""+summary+"\" > "+prefix+sub_category+"_"+algo+"_summary.sol"
    subprocess.run(command, shell=True)
