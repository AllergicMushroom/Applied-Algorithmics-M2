import os
import numpy as np
import matplotlib.pyplot as plt

path = "/home/sylvain/Documents/programmation/cpp/Applied-Algorithmics-M2/data/graphs/grid/"

Dict = dict()

for fileName in sorted(os.listdir(path)):
    file = open(path+fileName, "r").read()
    if "summary" in fileName:
        array = [section.split("\n") for section in file.split("\n\n")]
        
        for section_index in range(len(array)):
            if len(array[section_index]) == 3:
                if "Time used by " in array[section_index][1]:
                    array[section_index][1] = array[section_index][1][array[section_index][1].find(": ")+2:array[section_index][1].find(" ms")]
                    array[section_index][2] = array[section_index][2][array[section_index][2].find(": ")+2:]
                    
        D = dict()
        for i in array:
            if len(i) == 3:
                if "grid_" not in i[1]:
                    D[i[0]] = i
        Dict[fileName.split("_")[1]] = D

## verif sol size
# 
for k in Dict["MIP2"].keys():
    for algo in Dict:
        if k in Dict[algo].keys():
            if len(Dict[algo][k][2].split(", ")) != len(Dict["MIP2"][k][2].split(", ")):
                print("first: ", Dict[algo][k][2].split(", "))
                print("second", Dict["MIP2"][k][2].split(", "))
         

instances = ["grid_4x4.txt", "grid_5x5.txt", "grid_6x6.txt", "grid_7x7.txt", "grid_8x8.txt", "grid_9x9.txt", "grid_10x10.txt", "grid_11x11.txt", "grid_12x12.txt", "grid_13x13.txt", "grid_14x14.txt", "grid_15x15.txt", "grid_16x16.txt", "grid_17x17.txt", "grid_18x18.txt", "grid_19x19.txt", "grid_20x20.txt"]

matrice = []
for algo in Dict.keys():
    mip_arr=[]
    for inst in instances:
        if inst in Dict[algo].keys():
            mip_arr += [float(Dict["MIP2"][inst][1])/1000]
        # else:
        #      mip_arr += [0]
    matrice += [mip_arr]
    plt.plot(mip_arr, label = algo)
plt.legend()
plt.show()