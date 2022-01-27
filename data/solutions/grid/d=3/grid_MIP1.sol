 
grid_10x10.txt
Time used by Floyd-Warshall: 29.086 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 20100 rows, 10100 columns and 39900 nonzeros
Model fingerprint: 0x6da27503
Variable types: 0 continuous, 10100 integer (10100 binary)
Coefficient statistics:
  Matrix range     [1e+00, 4e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 66.0000000
Presolve removed 19540 rows and 9540 columns
Presolve time: 0.01s
Presolved: 560 rows, 560 columns, 1380 nonzeros
Variable types: 0 continuous, 560 integer (560 binary)

Root relaxation: objective 2.239434e+01, 668 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   22.39434    0  560   66.00000   22.39434  66.1%     -    0s
H    0     0                      65.0000000   22.39434  65.5%     -    0s
H    0     0                      36.0000000   22.39434  37.8%     -    0s
H    0     0                      34.0000000   22.39434  34.1%     -    0s
H    0     0                      31.0000000   22.39434  27.8%     -    0s
H    0     0                      28.0000000   22.39434  20.0%     -    0s
     0     0   22.88399    0  538   28.00000   22.88399  18.3%     -    0s
     0     0   23.02099    0  527   28.00000   23.02099  17.8%     -    0s
     0     0   23.27608    0  534   28.00000   23.27608  16.9%     -    0s
     0     0   23.29032    0  537   28.00000   23.29032  16.8%     -    0s
H    0     0                      27.0000000   23.29032  13.7%     -    0s
     0     0   23.33952    0  532   27.00000   23.33952  13.6%     -    0s
     0     0   23.33952    0  531   27.00000   23.33952  13.6%     -    0s
     0     2   23.33952    0  528   27.00000   23.33952  13.6%     -    0s
H  105   120                      26.0000000   23.33952  10.2%  45.2    0s
H  112   120                      25.0000000   23.33952  6.64%  45.4    0s
*  180    45               8      24.0000000   23.43684  2.35%  32.1    0s

Cutting planes:
  Gomory: 1
  Zero half: 17

Explored 223 nodes (7323 simplex iterations) in 0.56 seconds (0.26 work units)
Thread count was 24 (of 8 available processors)

Solution count 10: 24 25 26 ... 66

Optimal solution found (tolerance 1.00e-04)
Best objective 2.400000000000e+01, best bound 2.400000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 24
x[2]: 1
x[6]: 1
x[8]: 1
x[10]: 1
x[14]: 1
x[22]: 1
x[27]: 1
x[29]: 1
x[30]: 1
x[35]: 1
x[43]: 1
x[48]: 1
x[51]: 1
x[56]: 1
x[64]: 1
x[69]: 1
x[70]: 1
x[72]: 1
x[77]: 1
x[85]: 1
x[89]: 1
x[91]: 1
x[93]: 1
x[97]: 1
c[2][1]: 1
c[2][2]: 1
c[2][3]: 1
c[6][5]: 1
c[6][6]: 1
c[6][16]: 1
c[8][7]: 1
c[8][8]: 1
c[8][9]: 1
c[8][18]: 1
c[10][0]: 1
c[10][10]: 1
c[10][11]: 1
c[14][4]: 1
c[14][13]: 1
c[14][14]: 1
c[14][15]: 1
c[14][24]: 1
c[22][12]: 1
c[22][21]: 1
c[22][22]: 1
c[22][23]: 1
c[22][32]: 1
c[27][17]: 1
c[27][26]: 1
c[27][27]: 1
c[27][37]: 1
c[29][19]: 1
c[29][28]: 1
c[29][29]: 1
c[29][39]: 1
c[30][20]: 1
c[30][30]: 1
c[30][31]: 1
c[30][40]: 1
c[35][25]: 1
c[35][34]: 1
c[35][35]: 1
c[35][36]: 1
c[35][45]: 1
c[43][33]: 1
c[43][42]: 1
c[43][43]: 1
c[43][44]: 1
c[43][53]: 1
c[48][38]: 1
c[48][47]: 1
c[48][48]: 1
c[48][49]: 1
c[48][58]: 1
c[51][41]: 1
c[51][50]: 1
c[51][51]: 1
c[51][52]: 1
c[51][61]: 1
c[56][46]: 1
c[56][55]: 1
c[56][56]: 1
c[56][57]: 1
c[56][66]: 1
c[64][54]: 1
c[64][63]: 1
c[64][64]: 1
c[64][65]: 1
c[64][74]: 1
c[69][59]: 1
c[69][68]: 1
c[69][69]: 1
c[70][60]: 1
c[70][70]: 1
c[70][80]: 1
c[72][62]: 1
c[72][71]: 1
c[72][72]: 1
c[72][73]: 1
c[72][82]: 1
c[77][67]: 1
c[77][76]: 1
c[77][77]: 1
c[77][78]: 1
c[85][75]: 1
c[85][84]: 1
c[85][85]: 1
c[85][86]: 1
c[85][95]: 1
c[89][79]: 1
c[89][88]: 1
c[89][89]: 1
c[89][99]: 1
c[91][81]: 1
c[91][90]: 1
c[91][91]: 1
c[93][83]: 1
c[93][92]: 1
c[93][93]: 1
c[93][94]: 1
c[97][87]: 1
c[97][96]: 1
c[97][97]: 1
c[97][98]: 1
Time used by MIP1: 666.715 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (24): 2, 6, 8, 10, 14, 22, 27, 29, 30, 35, 43, 48, 51, 56, 64, 69, 70, 72, 77, 85, 89, 91, 93, 97

grid_11x11.txt
Time used by Floyd-Warshall: 37.108 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 29403 rows, 14762 columns and 58443 nonzeros
Model fingerprint: 0xe24f3601
Variable types: 0 continuous, 14762 integer (14762 binary)
Coefficient statistics:
  Matrix range     [1e+00, 4e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 82.0000000
Presolve removed 28721 rows and 14080 columns
Presolve time: 0.01s
Presolved: 682 rows, 682 columns, 1683 nonzeros
Variable types: 0 continuous, 682 integer (682 binary)

Root relaxation: objective 2.681481e+01, 919 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   26.81481    0  616   82.00000   26.81481  67.3%     -    0s
H    0     0                      78.0000000   26.81481  65.6%     -    0s
H    0     0                      45.0000000   26.81481  40.4%     -    0s
H    0     0                      42.0000000   26.81481  36.2%     -    0s
H    0     0                      34.0000000   26.81481  21.1%     -    0s
     0     0   27.26430    0  629   34.00000   27.26430  19.8%     -    0s
H    0     0                      33.0000000   27.26430  17.4%     -    0s
     0     0   27.56063    0  654   33.00000   27.56063  16.5%     -    0s
H    0     0                      31.0000000   27.65853  10.8%     -    0s
H    0     0                      30.0000000   27.69085  7.70%     -    0s
     0     0   27.69085    0  677   30.00000   27.69085  7.70%     -    0s
     0     0   27.69085    0  677   30.00000   27.69085  7.70%     -    0s
     0     2   27.69085    0  677   30.00000   27.69085  7.70%     -    0s
H  123   103                      29.0000000   27.83419  4.02%  54.9    0s

Cutting planes:
  Gomory: 2
  Zero half: 16

Explored 236 nodes (8723 simplex iterations) in 0.64 seconds (0.35 work units)
Thread count was 24 (of 8 available processors)

Solution count 9: 29 30 31 ... 82

Optimal solution found (tolerance 1.00e-04)
Best objective 2.900000000000e+01, best bound 2.900000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 29
x[2]: 1
x[5]: 1
x[9]: 1
x[11]: 1
x[13]: 1
x[18]: 1
x[26]: 1
x[32]: 1
x[34]: 1
x[39]: 1
x[41]: 1
x[47]: 1
x[52]: 1
x[55]: 1
x[60]: 1
x[65]: 1
x[68]: 1
x[73]: 1
x[79]: 1
x[81]: 1
x[86]: 1
x[88]: 1
x[94]: 1
x[102]: 1
x[107]: 1
x[109]: 1
x[111]: 1
x[115]: 1
x[118]: 1
c[2][1]: 1
c[2][2]: 1
c[2][3]: 1
c[2][13]: 1
c[5][4]: 1
c[5][5]: 1
c[5][6]: 1
c[5][16]: 1
c[9][8]: 1
c[9][9]: 1
c[9][10]: 1
c[9][20]: 1
c[11][0]: 1
c[11][11]: 1
c[11][12]: 1
c[11][22]: 1
c[13][14]: 1
c[13][24]: 1
c[18][7]: 1
c[18][17]: 1
c[18][18]: 1
c[18][19]: 1
c[18][29]: 1
c[26][15]: 1
c[26][25]: 1
c[26][26]: 1
c[26][27]: 1
c[26][37]: 1
c[32][21]: 1
c[32][31]: 1
c[32][32]: 1
c[32][43]: 1
c[34][23]: 1
c[34][33]: 1
c[34][34]: 1
c[34][35]: 1
c[34][45]: 1
c[39][28]: 1
c[39][38]: 1
c[39][39]: 1
c[39][50]: 1
c[41][30]: 1
c[41][40]: 1
c[41][42]: 1
c[41][52]: 1
c[47][36]: 1
c[47][46]: 1
c[47][47]: 1
c[47][48]: 1
c[47][58]: 1
c[52][41]: 1
c[52][51]: 1
c[52][53]: 1
c[52][63]: 1
c[55][44]: 1
c[55][55]: 1
c[55][56]: 1
c[55][66]: 1
c[60][49]: 1
c[60][59]: 1
c[60][60]: 1
c[60][61]: 1
c[60][71]: 1
c[65][54]: 1
c[65][64]: 1
c[65][65]: 1
c[65][76]: 1
c[68][57]: 1
c[68][67]: 1
c[68][68]: 1
c[68][69]: 1
c[68][79]: 1
c[73][62]: 1
c[73][72]: 1
c[73][73]: 1
c[73][74]: 1
c[73][84]: 1
c[79][78]: 1
c[79][80]: 1
c[79][90]: 1
c[81][70]: 1
c[81][81]: 1
c[81][82]: 1
c[81][92]: 1
c[86][75]: 1
c[86][85]: 1
c[86][86]: 1
c[86][87]: 1
c[86][97]: 1
c[88][77]: 1
c[88][88]: 1
c[88][89]: 1
c[88][99]: 1
c[94][83]: 1
c[94][93]: 1
c[94][94]: 1
c[94][95]: 1
c[94][105]: 1
c[102][91]: 1
c[102][101]: 1
c[102][102]: 1
c[102][103]: 1
c[102][113]: 1
c[107][96]: 1
c[107][106]: 1
c[107][108]: 1
c[109][98]: 1
c[109][109]: 1
c[109][120]: 1
c[111][100]: 1
c[111][110]: 1
c[111][111]: 1
c[111][112]: 1
c[115][104]: 1
c[115][114]: 1
c[115][115]: 1
c[115][116]: 1
c[118][107]: 1
c[118][117]: 1
c[118][118]: 1
c[118][119]: 1
Time used by MIP1: 764.378 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (29): 2, 5, 9, 11, 13, 18, 26, 32, 34, 39, 41, 47, 52, 55, 60, 65, 68, 73, 79, 81, 86, 88, 94, 102, 107, 109, 111, 115, 118

grid_12x12.txt
Time used by Floyd-Warshall: 62.048 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 41616 rows, 20880 columns and 82800 nonzeros
Model fingerprint: 0x3a134a29
Variable types: 0 continuous, 20880 integer (20880 binary)
Coefficient statistics:
  Matrix range     [1e+00, 4e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 101.0000000
Presolve removed 40800 rows and 20064 columns
Presolve time: 0.02s
Presolved: 816 rows, 816 columns, 2016 nonzeros
Variable types: 0 continuous, 816 integer (816 binary)

Root relaxation: objective 3.157185e+01, 982 iterations, 0.01 seconds (0.02 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   31.57185    0  792  101.00000   31.57185  68.7%     -    0s
H    0     0                      96.0000000   31.57185  67.1%     -    0s
H    0     0                      62.0000000   31.57185  49.1%     -    0s
H    0     0                      60.0000000   31.57185  47.4%     -    0s
H    0     0                      56.0000000   31.57185  43.6%     -    0s
H    0     0                      38.0000000   31.57185  16.9%     -    0s
     0     0   32.21338    0  793   38.00000   32.21338  15.2%     -    0s
     0     0   32.46305    0  798   38.00000   32.46305  14.6%     -    0s
     0     0   32.46424    0  783   38.00000   32.46424  14.6%     -    0s
     0     0   32.55287    0  795   38.00000   32.55287  14.3%     -    0s
     0     0   32.55287    0  793   38.00000   32.55287  14.3%     -    0s
     0     2   32.55287    0  792   38.00000   32.55287  14.3%     -    0s
H  105   120                      37.0000000   32.70071  11.6%  62.2    0s
H  175   192                      36.0000000   32.70071  9.16%  56.3    2s
*  476   267              12      35.0000000   32.86935  6.09%  45.1    2s

Cutting planes:
  Gomory: 2
  Zero half: 7

Explored 1711 nodes (65614 simplex iterations) in 3.16 seconds (1.07 work units)
Thread count was 24 (of 8 available processors)

Solution count 9: 35 36 37 ... 101

Optimal solution found (tolerance 1.00e-04)
Best objective 3.500000000000e+01, best bound 3.500000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 35
x[3]: 1
x[6]: 1
x[8]: 1
x[10]: 1
x[12]: 1
x[13]: 1
x[18]: 1
x[28]: 1
x[33]: 1
x[35]: 1
x[38]: 1
x[43]: 1
x[48]: 1
x[53]: 1
x[58]: 1
x[63]: 1
x[68]: 1
x[73]: 1
x[78]: 1
x[83]: 1
x[88]: 1
x[93]: 1
x[96]: 1
x[98]: 1
x[103]: 1
x[105]: 1
x[110]: 1
x[113]: 1
x[119]: 1
x[122]: 1
x[128]: 1
x[132]: 1
x[136]: 1
x[138]: 1
x[142]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][15]: 1
c[6][5]: 1
c[6][6]: 1
c[6][7]: 1
c[8][8]: 1
c[8][20]: 1
c[10][9]: 1
c[10][10]: 1
c[10][11]: 1
c[10][22]: 1
c[12][0]: 1
c[12][13]: 1
c[12][24]: 1
c[13][1]: 1
c[13][12]: 1
c[13][14]: 1
c[13][25]: 1
c[18][17]: 1
c[18][18]: 1
c[18][19]: 1
c[18][30]: 1
c[28][16]: 1
c[28][27]: 1
c[28][28]: 1
c[28][29]: 1
c[28][40]: 1
c[33][21]: 1
c[33][32]: 1
c[33][33]: 1
c[33][45]: 1
c[35][23]: 1
c[35][34]: 1
c[35][35]: 1
c[35][47]: 1
c[38][26]: 1
c[38][37]: 1
c[38][38]: 1
c[38][39]: 1
c[38][50]: 1
c[43][31]: 1
c[43][42]: 1
c[43][43]: 1
c[43][44]: 1
c[43][55]: 1
c[48][36]: 1
c[48][48]: 1
c[48][49]: 1
c[48][60]: 1
c[53][41]: 1
c[53][52]: 1
c[53][53]: 1
c[53][54]: 1
c[53][65]: 1
c[58][46]: 1
c[58][57]: 1
c[58][58]: 1
c[58][59]: 1
c[58][70]: 1
c[63][51]: 1
c[63][62]: 1
c[63][63]: 1
c[63][64]: 1
c[63][75]: 1
c[68][56]: 1
c[68][67]: 1
c[68][68]: 1
c[68][69]: 1
c[68][80]: 1
c[73][61]: 1
c[73][72]: 1
c[73][73]: 1
c[73][74]: 1
c[73][85]: 1
c[78][66]: 1
c[78][77]: 1
c[78][78]: 1
c[78][79]: 1
c[78][90]: 1
c[83][71]: 1
c[83][82]: 1
c[83][83]: 1
c[83][95]: 1
c[88][76]: 1
c[88][87]: 1
c[88][88]: 1
c[88][89]: 1
c[88][100]: 1
c[93][81]: 1
c[93][92]: 1
c[93][94]: 1
c[96][84]: 1
c[96][96]: 1
c[96][108]: 1
c[98][86]: 1
c[98][97]: 1
c[98][98]: 1
c[98][99]: 1
c[103][91]: 1
c[103][102]: 1
c[103][103]: 1
c[103][115]: 1
c[105][93]: 1
c[105][104]: 1
c[105][105]: 1
c[105][106]: 1
c[105][117]: 1
c[110][109]: 1
c[110][111]: 1
c[113][101]: 1
c[113][112]: 1
c[113][113]: 1
c[113][114]: 1
c[113][125]: 1
c[119][107]: 1
c[119][118]: 1
c[119][119]: 1
c[119][131]: 1
c[122][110]: 1
c[122][121]: 1
c[122][122]: 1
c[122][123]: 1
c[122][134]: 1
c[128][116]: 1
c[128][127]: 1
c[128][128]: 1
c[128][129]: 1
c[128][140]: 1
c[132][120]: 1
c[132][132]: 1
c[132][133]: 1
c[136][124]: 1
c[136][135]: 1
c[136][136]: 1
c[136][137]: 1
c[138][126]: 1
c[138][138]: 1
c[138][139]: 1
c[142][130]: 1
c[142][141]: 1
c[142][142]: 1
c[142][143]: 1
Time used by MIP1: 3330.68 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (35): 3, 6, 8, 10, 12, 13, 18, 28, 33, 35, 38, 43, 48, 53, 58, 63, 68, 73, 78, 83, 88, 93, 96, 98, 103, 105, 110, 113, 119, 122, 128, 132, 136, 138, 142

grid_13x13.txt
Time used by Floyd-Warshall: 96.842 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 57291 rows, 28730 columns and 114075 nonzeros
Model fingerprint: 0xc0790c1d
Variable types: 0 continuous, 28730 integer (28730 binary)
Coefficient statistics:
  Matrix range     [1e+00, 5e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 111.0000000
Presolve removed 56329 rows and 27768 columns
Presolve time: 0.03s
Presolved: 962 rows, 962 columns, 2379 nonzeros
Variable types: 0 continuous, 962 integer (962 binary)

Root relaxation: objective 3.692909e+01, 1339 iterations, 0.03 seconds (0.03 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   36.92909    0  931  111.00000   36.92909  66.7%     -    0s
H    0     0                      60.0000000   36.92909  38.5%     -    0s
H    0     0                      47.0000000   36.92909  21.4%     -    0s
     0     0   37.47458    0  936   47.00000   37.47458  20.3%     -    0s
     0     0   37.68102    0  927   47.00000   37.68102  19.8%     -    0s
     0     0   37.68388    0  935   47.00000   37.68388  19.8%     -    0s
     0     0   37.80875    0  929   47.00000   37.80875  19.6%     -    0s
     0     0   37.80878    0  928   47.00000   37.80878  19.6%     -    0s
H    0     0                      43.0000000   37.87018  11.9%     -    0s
     0     0   37.88831    0  950   43.00000   37.88831  11.9%     -    0s
     0     0   37.88831    0  945   43.00000   37.88831  11.9%     -    0s
     0     2   37.88831    0  945   43.00000   37.88831  11.9%     -    0s
H  110   124                      42.0000000   37.95622  9.63%  81.0    1s
*  117   124               8      41.0000000   37.95622  7.42%  80.3    1s
  1623   447     cutoff   13        41.00000   38.23239  6.75%  52.1    6s
* 1804   471              17      40.0000000   38.23239  4.42%  52.2    6s

Cutting planes:
  Gomory: 2
  Zero half: 23

Explored 2545 nodes (115092 simplex iterations) in 7.41 seconds (1.98 work units)
Thread count was 24 (of 8 available processors)

Solution count 7: 40 41 42 ... 111

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+01, best bound 4.000000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 40
x[2]: 1
x[4]: 1
x[8]: 1
x[10]: 1
x[13]: 1
x[19]: 1
x[25]: 1
x[29]: 1
x[35]: 1
x[40]: 1
x[44]: 1
x[46]: 1
x[50]: 1
x[55]: 1
x[61]: 1
x[65]: 1
x[71]: 1
x[77]: 1
x[80]: 1
x[82]: 1
x[86]: 1
x[88]: 1
x[91]: 1
x[97]: 1
x[103]: 1
x[107]: 1
x[113]: 1
x[118]: 1
x[122]: 1
x[124]: 1
x[128]: 1
x[133]: 1
x[139]: 1
x[143]: 1
x[149]: 1
x[155]: 1
x[158]: 1
x[160]: 1
x[164]: 1
x[166]: 1
c[2][1]: 1
c[2][2]: 1
c[2][3]: 1
c[2][15]: 1
c[4][4]: 1
c[4][5]: 1
c[4][17]: 1
c[8][7]: 1
c[8][8]: 1
c[8][21]: 1
c[10][9]: 1
c[10][10]: 1
c[10][11]: 1
c[10][23]: 1
c[13][0]: 1
c[13][13]: 1
c[13][14]: 1
c[13][26]: 1
c[19][6]: 1
c[19][18]: 1
c[19][19]: 1
c[19][20]: 1
c[19][32]: 1
c[25][12]: 1
c[25][24]: 1
c[25][25]: 1
c[25][38]: 1
c[29][16]: 1
c[29][28]: 1
c[29][29]: 1
c[29][30]: 1
c[35][22]: 1
c[35][34]: 1
c[35][35]: 1
c[35][36]: 1
c[40][27]: 1
c[40][39]: 1
c[40][40]: 1
c[40][41]: 1
c[40][53]: 1
c[44][31]: 1
c[44][43]: 1
c[44][44]: 1
c[44][57]: 1
c[46][33]: 1
c[46][45]: 1
c[46][46]: 1
c[46][47]: 1
c[46][59]: 1
c[50][37]: 1
c[50][49]: 1
c[50][50]: 1
c[50][51]: 1
c[50][63]: 1
c[55][42]: 1
c[55][54]: 1
c[55][55]: 1
c[55][56]: 1
c[55][68]: 1
c[61][48]: 1
c[61][60]: 1
c[61][61]: 1
c[61][62]: 1
c[61][74]: 1
c[65][52]: 1
c[65][65]: 1
c[65][66]: 1
c[71][58]: 1
c[71][70]: 1
c[71][71]: 1
c[71][72]: 1
c[71][84]: 1
c[77][64]: 1
c[77][76]: 1
c[77][77]: 1
c[80][67]: 1
c[80][79]: 1
c[80][80]: 1
c[80][93]: 1
c[82][69]: 1
c[82][81]: 1
c[82][82]: 1
c[82][83]: 1
c[82][95]: 1
c[86][73]: 1
c[86][85]: 1
c[86][86]: 1
c[86][99]: 1
c[88][75]: 1
c[88][87]: 1
c[88][88]: 1
c[88][89]: 1
c[88][101]: 1
c[91][78]: 1
c[91][91]: 1
c[91][92]: 1
c[91][104]: 1
c[97][96]: 1
c[97][97]: 1
c[97][98]: 1
c[97][110]: 1
c[103][90]: 1
c[103][102]: 1
c[103][103]: 1
c[103][116]: 1
c[107][94]: 1
c[107][106]: 1
c[107][107]: 1
c[107][108]: 1
c[113][100]: 1
c[113][112]: 1
c[113][113]: 1
c[113][114]: 1
c[118][105]: 1
c[118][117]: 1
c[118][118]: 1
c[118][119]: 1
c[118][131]: 1
c[122][109]: 1
c[122][121]: 1
c[122][122]: 1
c[122][135]: 1
c[124][111]: 1
c[124][123]: 1
c[124][124]: 1
c[124][125]: 1
c[124][137]: 1
c[128][115]: 1
c[128][127]: 1
c[128][128]: 1
c[128][129]: 1
c[128][141]: 1
c[133][120]: 1
c[133][132]: 1
c[133][133]: 1
c[133][134]: 1
c[133][146]: 1
c[139][126]: 1
c[139][138]: 1
c[139][139]: 1
c[139][140]: 1
c[139][152]: 1
c[143][130]: 1
c[143][143]: 1
c[143][144]: 1
c[143][156]: 1
c[149][136]: 1
c[149][148]: 1
c[149][149]: 1
c[149][150]: 1
c[149][162]: 1
c[155][142]: 1
c[155][154]: 1
c[155][155]: 1
c[155][168]: 1
c[158][145]: 1
c[158][157]: 1
c[158][158]: 1
c[160][147]: 1
c[160][159]: 1
c[160][160]: 1
c[160][161]: 1
c[164][151]: 1
c[164][163]: 1
c[164][164]: 1
c[164][165]: 1
c[166][153]: 1
c[166][166]: 1
c[166][167]: 1
Time used by MIP1: 7987.24 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (40): 2, 4, 8, 10, 13, 19, 25, 29, 35, 40, 44, 46, 50, 55, 61, 65, 71, 77, 80, 82, 86, 88, 91, 97, 103, 107, 113, 118, 122, 124, 128, 133, 139, 143, 149, 155, 158, 160, 164, 166

grid_14x14.txt
Time used by Floyd-Warshall: 329.695 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 77028 rows, 38612 columns and 153468 nonzeros
Model fingerprint: 0x00b6f645
Variable types: 0 continuous, 38612 integer (38612 binary)
Coefficient statistics:
  Matrix range     [1e+00, 5e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 131.0000000
Presolve removed 75908 rows and 37492 columns
Presolve time: 0.09s
Presolved: 1120 rows, 1120 columns, 2772 nonzeros
Variable types: 0 continuous, 1120 integer (1120 binary)

Root relaxation: objective 4.240172e+01, 1478 iterations, 0.05 seconds (0.04 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   42.40172    0 1096  131.00000   42.40172  67.6%     -    0s
H    0     0                     130.0000000   42.40172  67.4%     -    0s
H    0     0                      68.0000000   42.40172  37.6%     -    0s
H    0     0                      55.0000000   42.40172  22.9%     -    0s
     0     0   42.95635    0 1108   55.00000   42.95635  21.9%     -    0s
H    0     0                      54.0000000   42.95635  20.5%     -    0s
     0     0   43.00603    0 1108   54.00000   43.00603  20.4%     -    0s
     0     0   43.32284    0 1096   54.00000   43.32284  19.8%     -    1s
     0     0   43.32284    0 1088   54.00000   43.32284  19.8%     -    1s
     0     0   43.40392    0 1092   54.00000   43.40392  19.6%     -    1s
     0     0   43.40392    0 1085   54.00000   43.40392  19.6%     -    1s
     0     2   43.40392    0 1085   54.00000   43.40392  19.6%     -    1s
H   33    56                      53.0000000   43.40392  18.1%   100    1s
H  103   128                      52.0000000   43.51760  16.3%  90.4    2s
H  107   128                      51.0000000   43.51760  14.7%  91.4    2s
H  114   128                      50.0000000   43.51760  13.0%  91.1    2s
H  179   206                      49.0000000   43.51760  11.2%  84.0    2s
*  345   351              19      48.0000000   43.56837  9.23%  70.7    2s
H  396   348                      47.0000000   43.56837  7.30%  67.2    4s
   719   456     cutoff   16        47.00000   43.56837  7.30%  61.3    5s
  3826  1184   45.84450   14  602   47.00000   44.36465  5.61%  59.8   12s
  6664  1447     cutoff   15        47.00000   44.58418  5.14%  58.1   15s
  6984  1454     cutoff   12        47.00000   44.59133  5.12%  57.9   20s
  8012  1665   44.94681    9 1085   47.00000   44.65132  5.00%  58.0   27s
  8657  1875   44.65132   27  827   47.00000   44.65132  5.00%  58.5   30s
 10403  2119   44.65132   23  852   47.00000   44.65132  5.00%  58.4   37s
 11417  2296   44.84701   31  828   47.00000   44.65132  5.00%  57.9   40s
 14260  2768   45.52668   27  682   47.00000   44.65132  5.00%  56.7   45s
 18472  3913   45.56154   34  780   47.00000   44.83513  4.61%  55.3   50s
 23057  5111   45.43822   31  800   47.00000   44.99329  4.27%  54.2   55s
 27767  5937     cutoff   25        47.00000   45.11505  4.01%  53.4   60s
 32257  6410   45.63329   34  734   47.00000   45.20728  3.81%  52.5   65s
 37910  6533     cutoff   33        47.00000   45.31043  3.59%  51.5   71s
 41886  6320     cutoff   35        47.00000   45.37410  3.46%  51.0   75s
 47991  5479   45.86427   32  695   47.00000   45.47053  3.25%  50.3   80s
 53289  3840     cutoff   32        47.00000   45.56798  3.05%  49.9   85s
 59315     0     cutoff   38        47.00000   45.76838  2.62%  49.3   90s

Cutting planes:
  Gomory: 1
  Zero half: 5

Explored 61142 nodes (2972823 simplex iterations) in 90.71 seconds (24.48 work units)
Thread count was 24 (of 8 available processors)

Solution count 10: 47 48 49 ... 68

Optimal solution found (tolerance 1.00e-04)
Best objective 4.700000000000e+01, best bound 4.700000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 47
x[1]: 1
x[4]: 1
x[8]: 1
x[12]: 1
x[15]: 1
x[20]: 1
x[24]: 1
x[26]: 1
x[31]: 1
x[36]: 1
x[42]: 1
x[47]: 1
x[52]: 1
x[53]: 1
x[55]: 1
x[58]: 1
x[63]: 1
x[71]: 1
x[74]: 1
x[79]: 1
x[82]: 1
x[85]: 1
x[90]: 1
x[95]: 1
x[101]: 1
x[106]: 1
x[111]: 1
x[112]: 1
x[117]: 1
x[122]: 1
x[128]: 1
x[133]: 1
x[138]: 1
x[144]: 1
x[149]: 1
x[154]: 1
x[155]: 1
x[160]: 1
x[165]: 1
x[167]: 1
x[171]: 1
x[175]: 1
x[176]: 1
x[183]: 1
x[187]: 1
x[192]: 1
x[194]: 1
c[1][0]: 1
c[1][1]: 1
c[1][2]: 1
c[1][15]: 1
c[4][3]: 1
c[4][4]: 1
c[4][5]: 1
c[4][18]: 1
c[8][7]: 1
c[8][8]: 1
c[8][9]: 1
c[12][11]: 1
c[12][12]: 1
c[12][13]: 1
c[15][14]: 1
c[15][16]: 1
c[15][29]: 1
c[20][6]: 1
c[20][19]: 1
c[20][20]: 1
c[20][21]: 1
c[20][34]: 1
c[24][10]: 1
c[24][23]: 1
c[24][24]: 1
c[24][25]: 1
c[26][26]: 1
c[26][27]: 1
c[26][40]: 1
c[31][17]: 1
c[31][30]: 1
c[31][31]: 1
c[31][32]: 1
c[31][45]: 1
c[36][22]: 1
c[36][35]: 1
c[36][36]: 1
c[36][37]: 1
c[36][50]: 1
c[42][28]: 1
c[42][42]: 1
c[42][43]: 1
c[42][56]: 1
c[47][33]: 1
c[47][46]: 1
c[47][47]: 1
c[47][48]: 1
c[47][61]: 1
c[52][38]: 1
c[52][51]: 1
c[52][66]: 1
c[53][39]: 1
c[53][52]: 1
c[53][53]: 1
c[53][54]: 1
c[53][67]: 1
c[55][41]: 1
c[55][55]: 1
c[55][69]: 1
c[58][44]: 1
c[58][58]: 1
c[58][59]: 1
c[63][49]: 1
c[63][62]: 1
c[63][63]: 1
c[63][64]: 1
c[63][77]: 1
c[71][57]: 1
c[71][70]: 1
c[71][71]: 1
c[71][72]: 1
c[71][85]: 1
c[74][60]: 1
c[74][73]: 1
c[74][74]: 1
c[74][75]: 1
c[74][88]: 1
c[79][65]: 1
c[79][78]: 1
c[79][79]: 1
c[79][80]: 1
c[79][93]: 1
c[82][68]: 1
c[82][82]: 1
c[82][83]: 1
c[85][84]: 1
c[85][86]: 1
c[85][99]: 1
c[90][76]: 1
c[90][89]: 1
c[90][90]: 1
c[90][91]: 1
c[90][104]: 1
c[95][81]: 1
c[95][94]: 1
c[95][95]: 1
c[95][96]: 1
c[95][109]: 1
c[101][87]: 1
c[101][100]: 1
c[101][101]: 1
c[101][102]: 1
c[101][115]: 1
c[106][92]: 1
c[106][105]: 1
c[106][106]: 1
c[106][107]: 1
c[106][120]: 1
c[111][97]: 1
c[111][110]: 1
c[111][111]: 1
c[111][125]: 1
c[112][98]: 1
c[112][112]: 1
c[112][113]: 1
c[112][126]: 1
c[117][103]: 1
c[117][116]: 1
c[117][117]: 1
c[117][118]: 1
c[117][131]: 1
c[122][108]: 1
c[122][121]: 1
c[122][122]: 1
c[122][123]: 1
c[122][136]: 1
c[128][114]: 1
c[128][127]: 1
c[128][128]: 1
c[128][129]: 1
c[128][142]: 1
c[133][119]: 1
c[133][132]: 1
c[133][133]: 1
c[133][134]: 1
c[133][147]: 1
c[138][124]: 1
c[138][137]: 1
c[138][138]: 1
c[138][139]: 1
c[138][152]: 1
c[144][130]: 1
c[144][143]: 1
c[144][144]: 1
c[144][145]: 1
c[144][158]: 1
c[149][135]: 1
c[149][148]: 1
c[149][149]: 1
c[149][150]: 1
c[149][163]: 1
c[154][140]: 1
c[154][154]: 1
c[154][168]: 1
c[155][141]: 1
c[155][155]: 1
c[155][156]: 1
c[160][146]: 1
c[160][159]: 1
c[160][160]: 1
c[165][151]: 1
c[165][164]: 1
c[165][165]: 1
c[165][179]: 1
c[167][153]: 1
c[167][166]: 1
c[167][167]: 1
c[167][181]: 1
c[171][157]: 1
c[171][170]: 1
c[171][171]: 1
c[171][172]: 1
c[171][185]: 1
c[175][161]: 1
c[175][174]: 1
c[175][176]: 1
c[175][189]: 1
c[176][162]: 1
c[176][175]: 1
c[176][177]: 1
c[176][190]: 1
c[183][169]: 1
c[183][182]: 1
c[183][183]: 1
c[183][184]: 1
c[187][173]: 1
c[187][186]: 1
c[187][187]: 1
c[187][188]: 1
c[192][178]: 1
c[192][191]: 1
c[192][192]: 1
c[194][180]: 1
c[194][193]: 1
c[194][194]: 1
c[194][195]: 1
Time used by MIP1: 91256 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (47): 1, 4, 8, 12, 15, 20, 24, 26, 31, 36, 42, 47, 52, 53, 55, 58, 63, 71, 74, 79, 82, 85, 90, 95, 101, 106, 111, 112, 117, 122, 128, 133, 138, 144, 149, 154, 155, 160, 165, 167, 171, 175, 176, 183, 187, 192, 194

grid_15x15.txt
Time used by Floyd-Warshall: 264.651 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 101475 rows, 50850 columns and 202275 nonzeros
Model fingerprint: 0xf80a2cd4
Variable types: 0 continuous, 50850 integer (50850 binary)
Coefficient statistics:
  Matrix range     [1e+00, 6e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 162.0000000
Presolve removed 100185 rows and 49560 columns
Presolve time: 0.07s
Presolved: 1290 rows, 1290 columns, 3195 nonzeros
Variable types: 0 continuous, 1290 integer (1290 binary)

Root relaxation: objective 4.852611e+01, 1773 iterations, 0.05 seconds (0.06 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   48.52611    0 1290  162.00000   48.52611  70.0%     -    0s
H    0     0                     154.0000000   48.52611  68.5%     -    0s
H    0     0                      81.0000000   48.52611  40.1%     -    0s
H    0     0                      66.0000000   48.52611  26.5%     -    0s
     0     0   49.22802    0 1256   66.00000   49.22802  25.4%     -    0s
     0     0   49.25242    0 1267   66.00000   49.25242  25.4%     -    0s
     0     0   49.25242    0 1263   66.00000   49.25242  25.4%     -    0s
     0     0   49.25242    0 1269   66.00000   49.25242  25.4%     -    0s
     0     0   49.25242    0 1275   66.00000   49.25242  25.4%     -    0s
H    0     0                      60.0000000   49.25242  17.9%     -    0s
     0     0   49.40826    0 1261   60.00000   49.40826  17.7%     -    0s
     0     0   49.40826    0 1250   60.00000   49.40826  17.7%     -    0s
     0     2   49.40826    0 1250   60.00000   49.40826  17.7%     -    1s
H  104   128                      59.0000000   49.67824  15.8%   123    1s
H  109   128                      58.0000000   49.67824  14.3%   122    1s
H  116   128                      57.0000000   49.67824  12.8%   120    1s
H  172   194                      56.0000000   49.67824  11.3%   110    2s
H  179   194                      55.0000000   49.67824  9.68%   109    2s
*  545   439              18      54.0000000   49.69060  7.98%  77.1    3s
   991   670   51.76666   15  915   54.00000   49.80350  7.77%  70.6    7s
  2636  1306   52.96737   19  713   54.00000   50.14160  7.15%  63.0   10s
  3051  1384   52.67877   17  837   54.00000   50.14160  7.15%  62.4   17s
  4546  2043   52.91572   20  800   54.00000   50.47765  6.52%  61.2   20s
  5010  2132   51.32386   13 1250   54.00000   50.50283  6.48%  60.9   25s
  5454  2452   50.87868   24 1005   54.00000   50.50283  6.48%  62.5   30s
  6375  2681     cutoff   38        54.00000   50.50283  6.48%  63.1   36s
  7239  2970   50.69390   19  994   54.00000   50.50283  6.48%  62.7   40s
  9960  3859 infeasible   25        54.00000   50.68821  6.13%  61.1   45s
 12648  4952   52.70060   38  805   54.00000   50.86032  5.81%  59.3   50s
 14630  6073     cutoff   32        54.00000   50.94900  5.65%  58.7   55s
 17678  7435   51.35946   24  889   54.00000   51.03244  5.50%  57.8   60s
 20720  8958   51.98957   30  859   54.00000   51.11037  5.35%  57.2   65s
 23709 10510   52.74819   30  711   54.00000   51.16318  5.25%  56.8   71s
 26430 11936   51.56727   21  934   54.00000   51.20741  5.17%  56.3   75s
*27664  5524              48      53.0000000   51.22536  3.35%  56.1   77s
 29181  4970   51.76111   24  894   53.00000   51.25811  3.29%  56.1   80s
 32238  4698   51.98786   24  877   53.00000   51.34826  3.12%  56.2   85s
 35760  4112   51.91480   23  870   53.00000   51.45366  2.92%  56.1   91s
 38371  3305     cutoff   34        53.00000   51.54960  2.74%  56.1   95s
 43041    33     cutoff   26        53.00000   51.82492  2.22%  55.3  100s

Explored 44518 nodes (2410543 simplex iterations) in 100.90 seconds (30.23 work units)
Thread count was 24 (of 8 available processors)

Solution count 10: 53 54 55 ... 81

Optimal solution found (tolerance 1.00e-04)
Best objective 5.300000000000e+01, best bound 5.300000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 53
x[2]: 1
x[5]: 1
x[9]: 1
x[13]: 1
x[15]: 1
x[20]: 1
x[22]: 1
x[26]: 1
x[33]: 1
x[39]: 1
x[44]: 1
x[46]: 1
x[51]: 1
x[57]: 1
x[64]: 1
x[68]: 1
x[70]: 1
x[72]: 1
x[75]: 1
x[77]: 1
x[81]: 1
x[89]: 1
x[94]: 1
x[99]: 1
x[101]: 1
x[106]: 1
x[112]: 1
x[118]: 1
x[123]: 1
x[125]: 1
x[130]: 1
x[135]: 1
x[143]: 1
x[147]: 1
x[149]: 1
x[152]: 1
x[154]: 1
x[156]: 1
x[160]: 1
x[167]: 1
x[173]: 1
x[178]: 1
x[180]: 1
x[185]: 1
x[190]: 1
x[191]: 1
x[198]: 1
x[202]: 1
x[209]: 1
x[211]: 1
x[215]: 1
x[219]: 1
x[222]: 1
c[2][1]: 1
c[2][2]: 1
c[2][3]: 1
c[2][17]: 1
c[5][4]: 1
c[5][5]: 1
c[5][6]: 1
c[9][8]: 1
c[9][9]: 1
c[9][10]: 1
c[13][12]: 1
c[13][13]: 1
c[13][14]: 1
c[13][28]: 1
c[15][0]: 1
c[15][15]: 1
c[15][16]: 1
c[15][30]: 1
c[20][19]: 1
c[20][20]: 1
c[20][21]: 1
c[20][35]: 1
c[22][7]: 1
c[22][22]: 1
c[22][23]: 1
c[22][37]: 1
c[26][11]: 1
c[26][25]: 1
c[26][26]: 1
c[26][27]: 1
c[26][41]: 1
c[33][18]: 1
c[33][32]: 1
c[33][33]: 1
c[33][34]: 1
c[33][48]: 1
c[39][24]: 1
c[39][38]: 1
c[39][39]: 1
c[39][40]: 1
c[39][54]: 1
c[44][29]: 1
c[44][43]: 1
c[44][44]: 1
c[44][59]: 1
c[46][31]: 1
c[46][45]: 1
c[46][46]: 1
c[46][47]: 1
c[46][61]: 1
c[51][36]: 1
c[51][50]: 1
c[51][51]: 1
c[51][52]: 1
c[57][42]: 1
c[57][56]: 1
c[57][58]: 1
c[64][49]: 1
c[64][63]: 1
c[64][64]: 1
c[64][65]: 1
c[68][53]: 1
c[68][67]: 1
c[68][68]: 1
c[68][83]: 1
c[70][55]: 1
c[70][69]: 1
c[70][70]: 1
c[70][85]: 1
c[72][57]: 1
c[72][71]: 1
c[72][72]: 1
c[72][73]: 1
c[72][87]: 1
c[75][60]: 1
c[75][75]: 1
c[75][90]: 1
c[77][62]: 1
c[77][76]: 1
c[77][77]: 1
c[77][78]: 1
c[77][92]: 1
c[81][66]: 1
c[81][80]: 1
c[81][81]: 1
c[81][82]: 1
c[81][96]: 1
c[89][74]: 1
c[89][88]: 1
c[89][89]: 1
c[89][104]: 1
c[94][79]: 1
c[94][93]: 1
c[94][94]: 1
c[94][95]: 1
c[94][109]: 1
c[99][84]: 1
c[99][98]: 1
c[99][99]: 1
c[99][100]: 1
c[99][114]: 1
c[101][86]: 1
c[101][101]: 1
c[101][102]: 1
c[101][116]: 1
c[106][91]: 1
c[106][105]: 1
c[106][106]: 1
c[106][107]: 1
c[106][121]: 1
c[112][97]: 1
c[112][111]: 1
c[112][112]: 1
c[112][113]: 1
c[112][127]: 1
c[118][103]: 1
c[118][117]: 1
c[118][118]: 1
c[118][119]: 1
c[118][133]: 1
c[123][108]: 1
c[123][122]: 1
c[123][123]: 1
c[123][138]: 1
c[125][110]: 1
c[125][124]: 1
c[125][125]: 1
c[125][126]: 1
c[125][140]: 1
c[130][115]: 1
c[130][129]: 1
c[130][130]: 1
c[130][131]: 1
c[135][120]: 1
c[135][135]: 1
c[135][136]: 1
c[135][150]: 1
c[143][128]: 1
c[143][142]: 1
c[143][143]: 1
c[143][144]: 1
c[147][132]: 1
c[147][146]: 1
c[147][147]: 1
c[147][162]: 1
c[149][134]: 1
c[149][148]: 1
c[149][149]: 1
c[149][164]: 1
c[152][137]: 1
c[152][151]: 1
c[152][152]: 1
c[152][153]: 1
c[152][167]: 1
c[154][139]: 1
c[154][154]: 1
c[154][155]: 1
c[154][169]: 1
c[156][141]: 1
c[156][156]: 1
c[156][157]: 1
c[156][171]: 1
c[160][145]: 1
c[160][159]: 1
c[160][160]: 1
c[160][161]: 1
c[167][166]: 1
c[167][168]: 1
c[167][182]: 1
c[173][158]: 1
c[173][172]: 1
c[173][173]: 1
c[173][174]: 1
c[173][188]: 1
c[178][163]: 1
c[178][177]: 1
c[178][178]: 1
c[178][179]: 1
c[178][193]: 1
c[180][165]: 1
c[180][180]: 1
c[180][181]: 1
c[180][195]: 1
c[185][170]: 1
c[185][184]: 1
c[185][185]: 1
c[185][186]: 1
c[190][175]: 1
c[190][189]: 1
c[190][191]: 1
c[190][205]: 1
c[191][176]: 1
c[191][190]: 1
c[191][192]: 1
c[191][206]: 1
c[198][183]: 1
c[198][197]: 1
c[198][198]: 1
c[198][199]: 1
c[198][213]: 1
c[202][187]: 1
c[202][201]: 1
c[202][202]: 1
c[202][203]: 1
c[202][217]: 1
c[209][194]: 1
c[209][208]: 1
c[209][209]: 1
c[209][224]: 1
c[211][196]: 1
c[211][210]: 1
c[211][211]: 1
c[211][212]: 1
c[215][200]: 1
c[215][214]: 1
c[215][215]: 1
c[215][216]: 1
c[219][204]: 1
c[219][218]: 1
c[219][219]: 1
c[219][220]: 1
c[222][207]: 1
c[222][221]: 1
c[222][222]: 1
c[222][223]: 1
Time used by MIP1: 101411 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (53): 2, 5, 9, 13, 15, 20, 22, 26, 33, 39, 44, 46, 51, 57, 64, 68, 70, 72, 75, 77, 81, 89, 94, 99, 101, 106, 112, 118, 123, 125, 130, 135, 143, 147, 149, 152, 154, 156, 160, 167, 173, 178, 180, 185, 190, 191, 198, 202, 209, 211, 215, 219, 222

grid_16x16.txt
Time used by Floyd-Warshall: 350.037 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 131328 rows, 65792 columns and 261888 nonzeros
Model fingerprint: 0x810a3a30
Variable types: 0 continuous, 65792 integer (65792 binary)
Coefficient statistics:
  Matrix range     [1e+00, 6e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 173.0000000
Presolve removed 129856 rows and 64320 columns
Presolve time: 0.08s
Presolved: 1472 rows, 1472 columns, 3648 nonzeros
Variable types: 0 continuous, 1472 integer (1472 binary)

Root relaxation: objective 5.481292e+01, 2162 iterations, 0.07 seconds (0.10 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   54.81292    0 1444  173.00000   54.81292  68.3%     -    0s
H    0     0                     169.0000000   54.81292  67.6%     -    0s
H    0     0                      82.0000000   54.81292  33.2%     -    0s
H    0     0                      75.0000000   54.81292  26.9%     -    0s
     0     0   55.42238    0 1441   75.00000   55.42238  26.1%     -    0s
H    0     0                      70.0000000   55.42238  20.8%     -    0s
     0     0   55.67160    0 1433   70.00000   55.67160  20.5%     -    0s
     0     0   55.71744    0 1422   70.00000   55.71744  20.4%     -    0s
H    0     0                      69.0000000   55.80223  19.1%     -    1s
     0     0   55.80223    0 1452   69.00000   55.80223  19.1%     -    1s
     0     0   55.80223    0 1451   69.00000   55.80223  19.1%     -    1s
H    0     0                      68.0000000   55.80223  17.9%     -    1s
     0     2   55.80223    0 1450   68.00000   55.80223  17.9%     -    1s
H   45    56                      67.0000000   55.94297  16.5%   146    2s
H  103   128                      66.0000000   56.06063  15.1%   131    2s
H  105   128                      65.0000000   56.06063  13.8%   131    2s
H  115   128                      64.0000000   56.06063  12.4%   131    2s
H  174   188                      63.0000000   56.06063  11.0%   124    3s
*  508   523              28      62.0000000   56.15453  9.43%   102    3s
   698   578   58.79560   14  878   62.00000   56.15453  9.43%  91.7    9s
H  718   578                      61.0000000   56.15453  7.94%  91.6    9s
   726   583   59.03914   15  829   61.00000   56.15453  7.94%  91.9   10s
  3259  1610   59.98515   22  817   61.00000   56.29811  7.71%  84.5   15s
  3741  1799   58.92771   14  946   61.00000   56.54636  7.30%  84.7   21s
  5023  2369   58.57146   18 1451   61.00000   56.94031  6.66%  84.5   28s
  5034  2385   56.94031   14 1286   61.00000   56.94031  6.66%  84.9   30s
  5582  2717   57.58891   26 1013   61.00000   56.94031  6.66%  84.3   35s
  6030  2855   59.26042   35  408   61.00000   56.94031  6.66%  82.9   40s
  7897  3557   57.72517   23 1142   61.00000   56.94031  6.66%  79.0   45s
  9859  4178   58.78197   32 1028   61.00000   56.94031  6.66%  75.4   50s
 11944  5048   57.80251   25 1093   61.00000   56.97277  6.60%  73.7   55s
 13702  5891   58.23824   25 1053   61.00000   57.17981  6.26%  72.0   61s
 15004  6974   58.66222   31 1019   61.00000   57.25774  6.13%  71.0   65s
*15160  4816              46      60.0000000   57.26699  4.56%  70.8   65s
 17390  5694   58.45887   27 1101   60.00000   57.37087  4.38%  69.7   70s
 19566  6592   58.74329   35  987   60.00000   57.44736  4.25%  69.2   75s
 21499  7354     cutoff   38        60.00000   57.50292  4.16%  68.5   80s
 24340  8432   58.55908   26 1045   60.00000   57.58147  4.03%  68.1   86s
 26177  8975   58.77258   30 1005   60.00000   57.61435  3.98%  67.5   90s
 28741  9635 infeasible   26        60.00000   57.66992  3.88%  66.9   96s
 30797 10320   58.96583   33 1000   60.00000   57.68768  3.85%  66.3  100s
 32931 11072   58.72484   39 1068   60.00000   57.72690  3.79%  65.9  105s
 35275 11788   58.74086   30  976   60.00000   57.76075  3.73%  65.5  110s
 37841 12422   58.75380   28 1024   60.00000   57.78963  3.68%  65.1  115s
grid_17x17.txt
Time used by Floyd-Warshall: 529.337 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 167331 rows, 83810 columns and 333795 nonzeros
Model fingerprint: 0xbc5adcc7
Variable types: 0 continuous, 83810 integer (83810 binary)
Coefficient statistics:
  Matrix range     [1e+00, 6e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 197.0000000
Presolve removed 165665 rows and 82144 columns
Presolve time: 0.11s
Presolved: 1666 rows, 1666 columns, 4131 nonzeros
Variable types: 0 continuous, 1666 integer (1666 binary)

Root relaxation: objective 6.171479e+01, 2422 iterations, 0.08 seconds (0.11 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   61.71479    0 1624  197.00000   61.71479  68.7%     -    0s
H    0     0                     190.0000000   61.71479  67.5%     -    0s
H    0     0                     101.0000000   61.71479  38.9%     -    0s
H    0     0                     100.0000000   61.71479  38.3%     -    0s
H    0     0                      77.0000000   61.71479  19.9%     -    0s
     0     0   62.08946    0 1627   77.00000   62.08946  19.4%     -    0s
     0     0   62.09313    0 1634   77.00000   62.09313  19.4%     -    0s
     0     0   62.43430    0 1627   77.00000   62.43430  18.9%     -    0s
     0     0   62.59006    0 1622   77.00000   62.59006  18.7%     -    1s
     0     0   62.59006    0 1620   77.00000   62.59006  18.7%     -    1s
     0     2   62.59006    0 1619   77.00000   62.59006  18.7%     -    1s
H  103   128                      73.0000000   62.75744  14.0%   132    2s
H  120   128                      72.0000000   62.75744  12.8%   132    2s
H  167   183                      70.0000000   62.75744  10.3%   125    3s
   282   304   68.00199   12  931   70.00000   62.75744  10.3%   117   11s
H  283   304                      69.0000000   62.75744  9.05%   117   11s
H  298   304                      68.0000000   62.75744  7.71%   117   11s
   384   370   63.14046    6 1484   68.00000   62.75754  7.71%   111   17s
   930   675   66.86336   22  860   68.00000   62.75754  7.71%   103   20s
  2992  1611   65.37220   15 1112   68.00000   63.11149  7.19%  97.8   25s
  3817  1954   63.66503   11 1620   68.00000   63.32866  6.87%  97.7   32s
  3984  2090   63.79265   20 1442   68.00000   63.32866  6.87%  98.5   36s
  4707  2450   65.96762   32 1094   68.00000   63.32866  6.87%  96.6   40s
  4856  2506   65.59141   35 1066   68.00000   63.32866  6.87%  96.3   45s
  5226  2673   66.40361   42  915   68.00000   63.32866  6.87%  95.4   57s
  6352  3123   66.82165   51  996   68.00000   63.32866  6.87%  92.6   60s
  8297  3814   64.06556   23 1237   68.00000   63.50330  6.61%  88.4   65s
 10347  4711   64.16982   25 1311   68.00000   63.76592  6.23%  85.9   70s
 11950  5749   65.34722   28 1208   68.00000   63.86314  6.08%  85.7   75s
 13172  6324   64.53019   31 1275   68.00000   63.91337  6.01%  84.3   80s
 15029  7727   64.42486   25 1236   68.00000   63.99028  5.90%  83.0   85s
 17043  8990   65.86105   35 1141   68.00000   64.03549  5.83%  82.4   91s
 18916 10320     cutoff   55        68.00000   64.06948  5.78%  82.5   96s
 20258 11261   65.31580   33 1139   68.00000   64.11008  5.72%  81.8  100s
 22517 12796   66.49348   41  986   68.00000   64.17176  5.63%  81.1  105s
 24184 13727   66.77736   43 1107   68.00000   64.19780  5.59%  80.5  110s
 26356 15140   65.27751   27 1270   68.00000   64.24424  5.52%  79.7  115s
grid_18x18.txt
Time used by Floyd-Warshall: 714.621 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 210276 rows, 105300 columns and 419580 nonzeros
Model fingerprint: 0xcaed8a9e
Variable types: 0 continuous, 105300 integer (105300 binary)
Coefficient statistics:
  Matrix range     [1e+00, 7e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 210.0000000
Presolve removed 208404 rows and 103428 columns
Presolve time: 0.15s
Presolved: 1872 rows, 1872 columns, 4644 nonzeros
Variable types: 0 continuous, 1872 integer (1872 binary)

Root relaxation: objective 6.908677e+01, 3026 iterations, 0.15 seconds (0.21 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   69.08677    0 1745  210.00000   69.08677  67.1%     -    0s
H    0     0                     118.0000000   69.08677  41.5%     -    0s
H    0     0                     116.0000000   69.08677  40.4%     -    0s
H    0     0                      84.0000000   69.08677  17.8%     -    0s
     0     0   69.48116    0 1851   84.00000   69.48116  17.3%     -    0s
     0     0   69.76197    0 1833   84.00000   69.76197  17.0%     -    1s
     0     0   69.76326    0 1833   84.00000   69.76326  16.9%     -    1s
     0     0   69.86796    0 1832   84.00000   69.86796  16.8%     -    1s
     0     0   69.86796    0 1831   84.00000   69.86796  16.8%     -    1s
     0     2   69.86796    0 1829   84.00000   69.86796  16.8%     -    1s
H   32    54                      83.0000000   69.89262  15.8%   194    2s
H  103   126                      82.0000000   70.05427  14.6%   148    3s
H  104   126                      81.0000000   70.05427  13.5%   148    3s
H  153   175                      80.0000000   70.05427  12.4%   143    3s
H  175   175                      79.0000000   70.05427  11.3%   139    3s
H  176   199                      78.0000000   70.05427  10.2%   139    4s
H  184   199                      77.0000000   70.05427  9.02%   138    4s
   226   249   71.92329   13 1346   77.00000   70.05427  9.02%   136   11s
H  232   249                      76.0000000   70.05427  7.82%   135   11s
  1081   840   73.25961   17 1302   76.00000   70.05972  7.82%   103   15s
  2099  1355   70.48629    7 1625   76.00000   70.24489  7.57%  94.2   27s
  2605  1662   71.85989   16 1831   76.00000   70.24489  7.57%  94.2   34s
  2607  1663   73.69970   21 1745   76.00000   70.24489  7.57%  94.1   35s
  2769  1796   71.31399   20 1531   76.00000   70.24489  7.57%  97.9   41s
  3339  2128   72.93257   31 1192   76.00000   70.24489  7.57%  98.1   45s
  3638  2211   73.85908   36 1156   76.00000   70.24489  7.57%  97.3   50s
  3954  2380   74.62445   43  935   76.00000   70.24489  7.57%  96.8   55s
  4681  2698   72.90719   39 1317   76.00000   70.24489  7.57%  95.4   74s
  4706  2786   72.92100   40 1287   76.00000   70.24489  7.57%  95.5   75s
  6047  3373   71.63981   22 1508   76.00000   70.41599  7.35%  93.4   80s
  7155  3959   72.66476   36 1289   76.00000   70.53398  7.19%  92.8   85s
  8432  4886   73.69917   45 1215   76.00000   70.67396  7.01%  91.9   90s
 10074  6076   74.24248   52 1167   76.00000   70.90417  6.71%  89.8   95s
 11320  7131   72.28533   26 1433   76.00000   71.01877  6.55%  90.5  100s
 12653  8232   71.96335   29 1387   76.00000   71.06488  6.49%  89.4  105s
 13154  8586   73.96015   49 1211   76.00000   71.07854  6.48%  89.1  111s
 14183  9368   72.34705   31 1440   76.00000   71.16798  6.36%  88.4  115s
grid_19x19.txt
Time used by Floyd-Warshall: 965.977 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 261003 rows, 130682 columns and 520923 nonzeros
Model fingerprint: 0x54525733
Variable types: 0 continuous, 130682 integer (130682 binary)
Coefficient statistics:
  Matrix range     [1e+00, 7e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 248.0000000
Presolve removed 258913 rows and 128592 columns
Presolve time: 0.18s
Presolved: 2090 rows, 2090 columns, 5187 nonzeros
Variable types: 0 continuous, 2090 integer (2090 binary)

Root relaxation: objective 7.653022e+01, 3170 iterations, 0.15 seconds (0.21 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   76.53022    0 2066  248.00000   76.53022  69.1%     -    0s
H    0     0                     247.0000000   76.53022  69.0%     -    0s
H    0     0                     114.0000000   76.53022  32.9%     -    0s
H    0     0                      96.0000000   76.53022  20.3%     -    0s
     0     0   77.01766    0 2058   96.00000   77.01766  19.8%     -    0s
     0     0   77.02075    0 2030   96.00000   77.02075  19.8%     -    0s
     0     0   77.25488    0 2029   96.00000   77.25488  19.5%     -    1s
     0     0   77.25646    0 2046   96.00000   77.25646  19.5%     -    1s
H    0     0                      95.0000000   77.25646  18.7%     -    1s
     0     0   77.34809    0 2061   95.00000   77.34809  18.6%     -    1s
     0     0   77.34809    0 2056   95.00000   77.34809  18.6%     -    1s
     0     2   77.34809    0 2056   95.00000   77.34809  18.6%     -    1s
H    3     8                      94.0000000   77.34809  17.7%   240    2s
H   31    56                      93.0000000   77.43937  16.7%   181    3s
H   38    56                      92.0000000   77.44080  15.8%   186    3s
H  104   128                      91.0000000   77.54717  14.8%   154    3s
H  176   201                      90.0000000   77.54717  13.8%   144    9s
H  183   201                      88.0000000   77.54717  11.9%   144    9s
   200   228   85.14095   11 1125   88.00000   77.54717  11.9%   142   13s
H  205   228                      87.0000000   77.54717  10.9%   141   13s
   560   560   81.94556   20 1296   87.00000   77.54717  10.9%   121   15s
*  850   803              30      84.0000000   77.54717  7.68%   112   16s
  1750  1290   82.93438   32 1214   84.00000   77.74904  7.44%   108   25s
  2888  1685   80.14492   14 1400   84.00000   77.88065  7.28%   114   30s
  3019  1686   82.44881   23 2056   84.00000   77.88065  7.28%   115   35s
  3180  1811   79.66951   22 1627   84.00000   77.88065  7.28%   116   42s
  3455  1991   82.28599   35 1399   84.00000   77.88065  7.28%   115   45s
  4315  2400   80.90487   45 1546   84.00000   77.88065  7.28%   114   50s
  4877  2655   78.78066   23 1754   84.00000   77.88065  7.28%   115   56s
  5609  3089     cutoff   48        84.00000   77.88065  7.28%   116   60s
  6721  3553   79.95267   26 1592   84.00000   78.01186  7.13%   115   65s
  6893  3516   81.50890   31 1461   84.00000   78.01186  7.13%   115   89s
  6921  3666   81.00044   29 1467   84.00000   78.01186  7.13%   115   90s
  7996  4144   79.81667   36 1621   84.00000   78.01714  7.12%   114   95s
  9360  5190   81.33458   46 1472   84.00000   78.08304  7.04%   111  100s
 10638  6214   81.92151   53 1346   84.00000   78.29251  6.79%   110  106s
 11747  7054   82.03666   52 1346   84.00000   78.53598  6.50%   108  111s
 13024  7933   79.12107   21 1765   84.00000   78.66064  6.36%   107  116s
grid_20x20.txt
Time used by Floyd-Warshall: 1351.25 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 320400 rows, 160400 columns and 639600 nonzeros
Model fingerprint: 0x724b2d11
Variable types: 0 continuous, 160400 integer (160400 binary)
Coefficient statistics:
  Matrix range     [1e+00, 8e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 274.0000000
Presolve removed 318080 rows and 158080 columns
Presolve time: 0.21s
Presolved: 2320 rows, 2320 columns, 5760 nonzeros
Variable types: 0 continuous, 2320 integer (2320 binary)

Root relaxation: objective 8.466570e+01, 3713 iterations, 0.22 seconds (0.31 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   84.66570    0 2320  274.00000   84.66570  69.1%     -    0s
H    0     0                     263.0000000   84.66570  67.8%     -    0s
H    0     0                     144.0000000   84.66570  41.2%     -    0s
H    0     0                     121.0000000   84.66570  30.0%     -    0s
     0     0   85.04465    0 2281  121.00000   85.04465  29.7%     -    0s
H    0     0                     120.0000000   85.05085  29.1%     -    1s
     0     0   85.05085    0 2283  120.00000   85.05085  29.1%     -    1s
H    0     0                     119.0000000   85.39696  28.2%     -    1s
     0     0   85.39696    0 2276  119.00000   85.39696  28.2%     -    1s
     0     0   85.40547    0 2277  119.00000   85.40547  28.2%     -    1s
H    0     0                     107.0000000   85.49329  20.1%     -    1s
     0     0   85.49329    0 2277  107.00000   85.49329  20.1%     -    1s
     0     0   85.49329    0 2275  107.00000   85.49329  20.1%     -    1s
     0     2   85.49329    0 2275  107.00000   85.49329  20.1%     -    2s
H   33    56                     106.0000000   85.49329  19.3%   216    3s
H  103   128                     104.0000000   85.49329  17.8%   161    3s
H  105   128                     103.0000000   85.49329  17.0%   162    3s
H  111   128                     102.0000000   85.49329  16.2%   159    3s
H  175   200                     101.0000000   85.49329  15.4%   159    4s
H  175   200                     100.0000000   85.49329  14.5%   159    4s
H  177   200                      97.0000000   85.49329  11.9%   158    4s
   247   272   95.74237   11 1439   97.00000   85.49329  11.9%   156    5s
H  255   272                      95.0000000   85.49329  10.0%   155    5s
H  524   529                      94.0000000   85.49329  9.05%   147    9s
H  529   529                      93.0000000   85.49329  8.07%   147    9s
   548   536   89.99158   22 1502   93.00000   85.49329  8.07%   149   19s
   588   571   90.19922   23 1442   93.00000   85.49329  8.07%   145   20s
  1556  1215   85.84635    6 2107   93.00000   85.69645  7.85%   146   30s
  2511  1789   91.25840   31 2275   93.00000   85.71503  7.83%   144   41s
  2535  1822   87.14400   16 1997   93.00000   85.71503  7.83%   145   45s
  2774  1989   88.50064   22 1773   93.00000   85.71503  7.83%   144   52s
  3113  2230   89.58818   28 1686   93.00000   85.78942  7.75%   142   55s
  3545  2369   90.16278   35 1616   93.00000   85.78942  7.75%   139   61s
  4012  2686   91.37550   46 1501   93.00000   85.78942  7.75%   138   65s
  4517  2870   86.99728   27 1960   93.00000   85.79095  7.75%   136   85s
  4567  2979   87.40658   29 1875   93.00000   85.79095  7.75%   136   90s
  5361  3465   91.77913   66 1416   93.00000   85.79237  7.75%   136   95s
  6217  3916   89.28637   47 1709   93.00000   85.79237  7.75%   133  100s
  7093  4329   86.81895   23 1982   93.00000   85.85437  7.68%   130  105s
  7991  4809   87.66015   32 1819   93.00000   85.85437  7.68%   128  110s
  9066  5736   88.98199   42 1731   93.00000   85.85437  7.68%   127  116s
grid_4x4.txt
Time used by Floyd-Warshall: 0.191 ms
Instance graph:
Adjacency list:
0 -> 1, 4
1 -> 0, 2, 5
2 -> 1, 3, 6
3 -> 2, 7
4 -> 0, 5, 8
5 -> 1, 4, 6, 9
6 -> 2, 5, 7, 10
7 -> 3, 6, 11
8 -> 4, 9, 12
9 -> 5, 8, 10, 13
10 -> 6, 9, 11, 14
11 -> 7, 10, 15
12 -> 8, 13
13 -> 9, 12, 14
14 -> 10, 13, 15
15 -> 11, 14
Shortest paths's distances:
0 2 4 6 2 4 6 8 4 6 8 10 6 8 10 12 
2 0 2 4 4 2 4 6 6 4 6 8 8 6 8 10 
4 2 0 2 6 4 2 4 8 6 4 6 10 8 6 8 
6 4 2 0 8 6 4 2 10 8 6 4 12 10 8 6 
2 4 6 8 0 2 4 6 2 4 6 8 4 6 8 10 
4 2 4 6 2 0 2 4 4 2 4 6 6 4 6 8 
6 4 2 4 4 2 0 2 6 4 2 4 8 6 4 6 
8 6 4 2 6 4 2 0 8 6 4 2 10 8 6 4 
4 6 8 10 2 4 6 8 0 2 4 6 2 4 6 8 
6 4 6 8 4 2 4 6 2 0 2 4 4 2 4 6 
8 6 4 6 6 4 2 4 4 2 0 2 6 4 2 4 
10 8 6 4 8 6 4 2 6 4 2 0 8 6 4 2 
6 8 10 12 4 6 8 10 2 4 6 8 0 2 4 6 
8 6 8 10 6 4 6 8 4 2 4 6 2 0 2 4 
10 8 6 8 8 6 4 6 6 4 2 4 4 2 0 2 
12 10 8 6 10 8 6 4 8 6 4 2 6 4 2 0 

Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 528 rows, 272 columns and 1008 nonzeros
Model fingerprint: 0x1430d5e7
Variable types: 0 continuous, 272 integer (272 binary)
Coefficient statistics:
  Matrix range     [1e+00, 1e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 12.0000000
Presolve removed 448 rows and 192 columns
Presolve time: 0.00s
Presolved: 80 rows, 80 columns, 192 nonzeros
Variable types: 0 continuous, 80 integer (80 binary)

Root relaxation: objective 4.000000e+00, 65 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

*    0     0               0       4.0000000    4.00000  0.00%     -    0s

Explored 1 nodes (65 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 24 (of 8 available processors)

Solution count 2: 4 12 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+00, best bound 4.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 4
x[2]: 1
x[4]: 1
x[11]: 1
x[13]: 1
c[2][1]: 1
c[2][2]: 1
c[2][3]: 1
c[2][6]: 1
c[4][0]: 1
c[4][4]: 1
c[4][5]: 1
c[4][8]: 1
c[11][7]: 1
c[11][10]: 1
c[11][11]: 1
c[11][15]: 1
c[13][9]: 1
c[13][12]: 1
c[13][13]: 1
c[13][14]: 1
Time used by MIP1: 30.048 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (4): 2, 4, 11, 13

grid_5x5.txt
Time used by Floyd-Warshall: 0.72 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 1275 rows, 650 columns and 2475 nonzeros
Model fingerprint: 0x8e27ce71
Variable types: 0 continuous, 650 integer (650 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 15.0000000
Presolve removed 1145 rows and 520 columns
Presolve time: 0.00s
Presolved: 130 rows, 130 columns, 315 nonzeros
Variable types: 0 continuous, 130 integer (130 binary)

Root relaxation: objective 6.272727e+00, 138 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    6.27273    0  118   15.00000    6.27273  58.2%     -    0s
H    0     0                      11.0000000    6.27273  43.0%     -    0s
H    0     0                       9.0000000    6.27273  30.3%     -    0s
H    0     0                       8.0000000    6.27273  21.6%     -    0s
H    0     0                       7.0000000    7.00000  0.00%     -    0s
     0     0    7.00000    0  112    7.00000    7.00000  0.00%     -    0s

Cutting planes:
  Gomory: 1
  Zero half: 3

Explored 1 nodes (150 simplex iterations) in 0.02 seconds (0.00 work units)
Thread count was 24 (of 8 available processors)

Solution count 5: 7 8 9 ... 15

Optimal solution found (tolerance 1.00e-04)
Best objective 7.000000000000e+00, best bound 7.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 7
x[0]: 1
x[3]: 1
x[11]: 1
x[12]: 1
x[14]: 1
x[20]: 1
x[23]: 1
c[0][0]: 1
c[0][1]: 1
c[0][5]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][8]: 1
c[11][6]: 1
c[11][10]: 1
c[11][16]: 1
c[12][7]: 1
c[12][11]: 1
c[12][12]: 1
c[12][13]: 1
c[12][17]: 1
c[14][9]: 1
c[14][14]: 1
c[14][19]: 1
c[20][15]: 1
c[20][20]: 1
c[20][21]: 1
c[23][18]: 1
c[23][22]: 1
c[23][23]: 1
c[23][24]: 1
Time used by MIP1: 35.71 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (7): 0, 3, 11, 12, 14, 20, 23

grid_6x6.txt
Time used by Floyd-Warshall: 1.904 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 2628 rows, 1332 columns and 5148 nonzeros
Model fingerprint: 0xea1252dc
Variable types: 0 continuous, 1332 integer (1332 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 23.0000000
Presolve removed 2436 rows and 1140 columns
Presolve time: 0.00s
Presolved: 192 rows, 192 columns, 468 nonzeros
Variable types: 0 continuous, 192 integer (192 binary)

Root relaxation: objective 8.750000e+00, 212 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    8.75000    0  144   23.00000    8.75000  62.0%     -    0s
H    0     0                      17.0000000    8.75000  48.5%     -    0s
H    0     0                      16.0000000    8.75000  45.3%     -    0s
H    0     0                      13.0000000    8.75000  32.7%     -    0s
H    0     0                      11.0000000    8.75000  20.5%     -    0s
H    0     0                      10.0000000    9.00000  10.0%     -    0s
     0     0   10.00000    0  149   10.00000   10.00000  0.00%     -    0s

Cutting planes:
  Gomory: 2
  Zero half: 6

Explored 1 nodes (259 simplex iterations) in 0.02 seconds (0.01 work units)
Thread count was 24 (of 8 available processors)

Solution count 6: 10 11 13 ... 23

Optimal solution found (tolerance 1.00e-04)
Best objective 1.000000000000e+01, best bound 1.000000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 10
x[2]: 1
x[5]: 1
x[6]: 1
x[15]: 1
x[16]: 1
x[19]: 1
x[20]: 1
x[29]: 1
x[30]: 1
x[33]: 1
c[2][1]: 1
c[2][2]: 1
c[2][3]: 1
c[2][8]: 1
c[5][4]: 1
c[5][5]: 1
c[5][11]: 1
c[6][0]: 1
c[6][6]: 1
c[6][7]: 1
c[6][12]: 1
c[15][9]: 1
c[16][10]: 1
c[16][15]: 1
c[16][16]: 1
c[16][17]: 1
c[16][22]: 1
c[19][13]: 1
c[19][18]: 1
c[19][25]: 1
c[20][14]: 1
c[20][19]: 1
c[20][20]: 1
c[20][21]: 1
c[20][26]: 1
c[29][23]: 1
c[29][28]: 1
c[29][29]: 1
c[29][35]: 1
c[30][24]: 1
c[30][30]: 1
c[30][31]: 1
c[33][27]: 1
c[33][32]: 1
c[33][33]: 1
c[33][34]: 1
Time used by MIP1: 38.911 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (10): 2, 5, 6, 15, 16, 19, 20, 29, 30, 33

grid_7x7.txt
Time used by Floyd-Warshall: 3.051 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 4851 rows, 2450 columns and 9555 nonzeros
Model fingerprint: 0xbf577453
Variable types: 0 continuous, 2450 integer (2450 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 37.0000000
Presolve removed 4585 rows and 2184 columns
Presolve time: 0.00s
Presolved: 266 rows, 266 columns, 651 nonzeros
Variable types: 0 continuous, 266 integer (266 binary)

Root relaxation: objective 1.150000e+01, 298 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   11.50000    0  259   37.00000   11.50000  68.9%     -    0s
H    0     0                      29.0000000   11.50000  60.3%     -    0s
H    0     0                      20.0000000   11.50000  42.5%     -    0s
H    0     0                      19.0000000   11.50000  39.5%     -    0s
H    0     0                      14.0000000   11.50000  17.9%     -    0s
H    0     0                      12.0000000   11.91775  0.69%     -    0s
     0     0   12.00000    0  230   12.00000   12.00000  0.00%     -    0s

Cutting planes:
  Zero half: 5

Explored 1 nodes (350 simplex iterations) in 0.04 seconds (0.02 work units)
Thread count was 24 (of 8 available processors)

Solution count 6: 12 14 19 ... 37

Optimal solution found (tolerance 1.00e-04)
Best objective 1.200000000000e+01, best bound 1.200000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 12
x[2]: 1
x[4]: 1
x[7]: 1
x[13]: 1
x[17]: 1
x[22]: 1
x[26]: 1
x[31]: 1
x[35]: 1
x[41]: 1
x[44]: 1
x[46]: 1
c[2][1]: 1
c[2][2]: 1
c[2][9]: 1
c[4][3]: 1
c[4][4]: 1
c[4][5]: 1
c[4][11]: 1
c[7][0]: 1
c[7][7]: 1
c[7][8]: 1
c[7][14]: 1
c[13][6]: 1
c[13][12]: 1
c[13][13]: 1
c[13][20]: 1
c[17][10]: 1
c[17][16]: 1
c[17][17]: 1
c[17][18]: 1
c[22][15]: 1
c[22][21]: 1
c[22][22]: 1
c[22][23]: 1
c[22][29]: 1
c[26][19]: 1
c[26][25]: 1
c[26][26]: 1
c[26][27]: 1
c[26][33]: 1
c[31][24]: 1
c[31][30]: 1
c[31][31]: 1
c[31][32]: 1
c[31][38]: 1
c[35][28]: 1
c[35][35]: 1
c[35][36]: 1
c[35][42]: 1
c[41][34]: 1
c[41][40]: 1
c[41][41]: 1
c[41][48]: 1
c[44][37]: 1
c[44][43]: 1
c[44][44]: 1
c[46][39]: 1
c[46][45]: 1
c[46][46]: 1
c[46][47]: 1
Time used by MIP1: 69.65 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (12): 2, 4, 7, 13, 17, 22, 26, 31, 35, 41, 44, 46

grid_8x8.txt
Time used by Floyd-Warshall: 6.275 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 8256 rows, 4160 columns and 16320 nonzeros
Model fingerprint: 0xd5e24db8
Variable types: 0 continuous, 4160 integer (4160 binary)
Coefficient statistics:
  Matrix range     [1e+00, 3e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 41.0000000
Presolve removed 7904 rows and 3808 columns
Presolve time: 0.01s
Presolved: 352 rows, 352 columns, 864 nonzeros
Variable types: 0 continuous, 352 integer (352 binary)

Root relaxation: objective 1.481481e+01, 400 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   14.81481    0  352   41.00000   14.81481  63.9%     -    0s
H    0     0                      40.0000000   14.81481  63.0%     -    0s
H    0     0                      22.0000000   14.81481  32.7%     -    0s
H    0     0                      19.0000000   14.81481  22.0%     -    0s
H    0     0                      18.0000000   15.23698  15.4%     -    0s
H    0     0                      17.0000000   15.23698  10.4%     -    0s
     0     0   15.35135    0  321   17.00000   15.35135  9.70%     -    0s
     0     0   15.37500    0  321   17.00000   15.37500  9.56%     -    0s
H    0     0                      16.0000000   15.53846  2.88%     -    0s
     0     0   16.00000    0  331   16.00000   16.00000  0.00%     -    0s

Cutting planes:
  Gomory: 1
  Zero half: 14

Explored 1 nodes (461 simplex iterations) in 0.10 seconds (0.05 work units)
Thread count was 24 (of 8 available processors)

Solution count 7: 16 17 18 ... 41

Optimal solution found (tolerance 1.00e-04)
Best objective 1.600000000000e+01, best bound 1.600000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 16
x[1]: 1
x[3]: 1
x[6]: 1
x[13]: 1
x[16]: 1
x[18]: 1
x[23]: 1
x[28]: 1
x[33]: 1
x[38]: 1
x[43]: 1
x[44]: 1
x[48]: 1
x[55]: 1
x[58]: 1
x[61]: 1
c[1][0]: 1
c[1][1]: 1
c[1][9]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][11]: 1
c[6][6]: 1
c[6][7]: 1
c[13][5]: 1
c[13][12]: 1
c[13][13]: 1
c[13][14]: 1
c[13][21]: 1
c[16][8]: 1
c[16][16]: 1
c[16][17]: 1
c[16][24]: 1
c[18][10]: 1
c[18][18]: 1
c[18][19]: 1
c[18][26]: 1
c[23][15]: 1
c[23][22]: 1
c[23][23]: 1
c[23][31]: 1
c[28][20]: 1
c[28][27]: 1
c[28][28]: 1
c[28][29]: 1
c[33][25]: 1
c[33][32]: 1
c[33][33]: 1
c[33][34]: 1
c[33][41]: 1
c[38][30]: 1
c[38][37]: 1
c[38][38]: 1
c[38][39]: 1
c[38][46]: 1
c[43][35]: 1
c[43][42]: 1
c[43][51]: 1
c[44][36]: 1
c[44][43]: 1
c[44][44]: 1
c[44][45]: 1
c[44][52]: 1
c[48][40]: 1
c[48][48]: 1
c[48][49]: 1
c[48][56]: 1
c[55][47]: 1
c[55][54]: 1
c[55][55]: 1
c[55][63]: 1
c[58][50]: 1
c[58][57]: 1
c[58][58]: 1
c[58][59]: 1
c[61][53]: 1
c[61][60]: 1
c[61][61]: 1
c[61][62]: 1
Time used by MIP1: 136.234 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (16): 1, 3, 6, 13, 16, 18, 23, 28, 33, 38, 43, 44, 48, 55, 58, 61

grid_9x9.txt
Time used by Floyd-Warshall: 12.088 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... done.
Creating the objective function... done.
Creating the constraints... done.
Configuring solver... Set parameter TimeLimit to value 600
Set parameter Threads to value 24
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 24 threads

Warning: Thread count (24) is larger than processor count (8)
         Reduce the value of the Threads parameter to improve performance

Optimize a model with 13203 rows, 6642 columns and 26163 nonzeros
Model fingerprint: 0xc8a428a2
Variable types: 0 continuous, 6642 integer (6642 binary)
Coefficient statistics:
  Matrix range     [1e+00, 3e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 3e+00]
Found heuristic solution: objective 50.0000000
Presolve removed 12753 rows and 6192 columns
Presolve time: 0.01s
Presolved: 450 rows, 450 columns, 1107 nonzeros
Variable types: 0 continuous, 450 integer (450 binary)

Root relaxation: objective 1.824590e+01, 561 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   18.24590    0  426   50.00000   18.24590  63.5%     -    0s
H    0     0                      46.0000000   18.24590  60.3%     -    0s
H    0     0                      27.0000000   18.24590  32.4%     -    0s
H    0     0                      26.0000000   18.24590  29.8%     -    0s
H    0     0                      24.0000000   18.24590  24.0%     -    0s
     0     0   18.81411    0  426   24.00000   18.81411  21.6%     -    0s
     0     0   18.81411    0  395   24.00000   18.81411  21.6%     -    0s
H    0     0                      23.0000000   18.81411  18.2%     -    0s
     0     0   19.03138    0  391   23.00000   19.03138  17.3%     -    0s
     0     0   19.03564    0  405   23.00000   19.03564  17.2%     -    0s
     0     0   19.07888    0  386   23.00000   19.07888  17.0%     -    0s
     0     0   19.07888    0  398   23.00000   19.07888  17.0%     -    0s
H    0     0                      22.0000000   19.07888  13.3%     -    0s
     0     0   19.07888    0  406   22.00000   19.07888  13.3%     -    0s
     0     0   19.08110    0  401   22.00000   19.08110  13.3%     -    0s
     0     0   19.09716    0  406   22.00000   19.09716  13.2%     -    0s
     0     0   19.09716    0  404   22.00000   19.09716  13.2%     -    0s
H    0     0                      21.0000000   19.17536  8.69%     -    0s
     0     0   19.20492    0  413   21.00000   19.20492  8.55%     -    0s
     0     0   19.20492    0  407   21.00000   19.20492  8.55%     -    0s
     0     2   19.20492    0  405   21.00000   19.20492  8.55%     -    0s
*   69    37               6      20.0000000   19.38335  3.08%  39.2    0s

Cutting planes:
  Gomory: 6
  Zero half: 10

Explored 73 nodes (3699 simplex iterations) in 0.38 seconds (0.15 work units)
Thread count was 24 (of 8 available processors)

Solution count 9: 20 21 22 ... 50

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+01, best bound 2.000000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 20
x[3]: 1
x[6]: 1
x[9]: 1
x[10]: 1
x[17]: 1
x[22]: 1
x[23]: 1
x[29]: 1
x[34]: 1
x[36]: 1
x[41]: 1
x[48]: 1
x[53]: 1
x[55]: 1
x[60]: 1
x[63]: 1
x[67]: 1
x[71]: 1
x[74]: 1
x[78]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][12]: 1
c[6][5]: 1
c[6][6]: 1
c[6][7]: 1
c[6][15]: 1
c[9][0]: 1
c[9][18]: 1
c[10][1]: 1
c[10][9]: 1
c[10][10]: 1
c[10][11]: 1
c[10][19]: 1
c[17][8]: 1
c[17][16]: 1
c[17][17]: 1
c[17][26]: 1
c[22][13]: 1
c[22][21]: 1
c[22][23]: 1
c[22][31]: 1
c[23][14]: 1
c[23][22]: 1
c[23][24]: 1
c[29][20]: 1
c[29][28]: 1
c[29][29]: 1
c[29][30]: 1
c[29][38]: 1
c[34][25]: 1
c[34][33]: 1
c[34][34]: 1
c[34][35]: 1
c[34][43]: 1
c[36][27]: 1
c[36][36]: 1
c[36][37]: 1
c[36][45]: 1
c[41][32]: 1
c[41][40]: 1
c[41][41]: 1
c[41][42]: 1
c[41][50]: 1
c[48][39]: 1
c[48][47]: 1
c[48][48]: 1
c[48][49]: 1
c[48][57]: 1
c[53][44]: 1
c[53][52]: 1
c[53][53]: 1
c[53][62]: 1
c[55][46]: 1
c[55][54]: 1
c[55][55]: 1
c[55][56]: 1
c[55][64]: 1
c[60][51]: 1
c[60][59]: 1
c[60][60]: 1
c[60][61]: 1
c[63][63]: 1
c[63][72]: 1
c[67][58]: 1
c[67][66]: 1
c[67][67]: 1
c[67][68]: 1
c[67][76]: 1
c[71][70]: 1
c[71][71]: 1
c[71][80]: 1
c[74][65]: 1
c[74][73]: 1
c[74][74]: 1
c[74][75]: 1
c[78][69]: 1
c[78][77]: 1
c[78][78]: 1
c[78][79]: 1
Time used by MIP1: 449.282 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (20): 3, 6, 9, 10, 17, 22, 23, 29, 34, 36, 41, 48, 53, 55, 60, 63, 67, 71, 74, 78

