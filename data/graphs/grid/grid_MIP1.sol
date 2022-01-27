 
grid_10x10.txt
Time used by Floyd-Warshall: 25.861 ms
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
Model fingerprint: 0x6d25c82e
Variable types: 0 continuous, 10100 integer (10100 binary)
Coefficient statistics:
  Matrix range     [1e+00, 4e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 60.0000000
Presolve removed 18040 rows and 8040 columns
Presolve time: 0.03s
Presolved: 2060 rows, 2060 columns, 5880 nonzeros
Variable types: 0 continuous, 2060 integer (2060 binary)

Root relaxation: objective 6.066667e+00, 2841 iterations, 0.08 seconds (0.10 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    6.06667    0  833   60.00000    6.06667  89.9%     -    0s
H    0     0                      59.0000000    6.06667  89.7%     -    0s
H    0     0                      15.0000000    6.06667  59.6%     -    0s
H    0     0                      11.0000000    6.06667  44.8%     -    0s
H    0     0                      10.0000000    6.06667  39.3%     -    0s
H    0     0                       8.0000000    6.06667  24.2%     -    0s
     0     0    6.07692    0  830    8.00000    6.07692  24.0%     -    0s
     0     0    6.11255    0  816    8.00000    6.11255  23.6%     -    0s
     0     0    6.13333    0  816    8.00000    6.13333  23.3%     -    0s
     0     0    6.13333    0  820    8.00000    6.13333  23.3%     -    0s
H    0     0                       7.0000000    6.13333  12.4%     -    0s

Cutting planes:
  Zero half: 15

Explored 1 nodes (7381 simplex iterations) in 1.00 seconds (0.62 work units)
Thread count was 24 (of 8 available processors)

Solution count 7: 7 8 10 ... 60

Optimal solution found (tolerance 1.00e-04)
Best objective 7.000000000000e+00, best bound 7.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 7
x[4]: 1
x[29]: 1
x[30]: 1
x[45]: 1
x[57]: 1
x[82]: 1
x[87]: 1
c[4][1]: 1
c[4][2]: 1
c[4][3]: 1
c[4][4]: 1
c[4][5]: 1
c[4][6]: 1
c[4][7]: 1
c[4][12]: 1
c[4][13]: 1
c[4][14]: 1
c[4][15]: 1
c[4][16]: 1
c[4][23]: 1
c[4][24]: 1
c[4][25]: 1
c[29][8]: 1
c[29][9]: 1
c[29][17]: 1
c[29][18]: 1
c[29][19]: 1
c[29][26]: 1
c[29][27]: 1
c[29][28]: 1
c[29][29]: 1
c[29][38]: 1
c[29][39]: 1
c[29][59]: 1
c[30][0]: 1
c[30][10]: 1
c[30][11]: 1
c[30][20]: 1
c[30][21]: 1
c[30][22]: 1
c[30][30]: 1
c[30][31]: 1
c[30][32]: 1
c[30][40]: 1
c[30][41]: 1
c[30][42]: 1
c[30][50]: 1
c[30][51]: 1
c[30][60]: 1
c[45][33]: 1
c[45][34]: 1
c[45][35]: 1
c[45][36]: 1
c[45][37]: 1
c[45][43]: 1
c[45][44]: 1
c[45][45]: 1
c[45][46]: 1
c[45][47]: 1
c[45][48]: 1
c[45][53]: 1
c[45][55]: 1
c[45][57]: 1
c[45][64]: 1
c[45][65]: 1
c[45][66]: 1
c[45][75]: 1
c[57][49]: 1
c[57][54]: 1
c[57][56]: 1
c[57][58]: 1
c[57][68]: 1
c[57][69]: 1
c[57][76]: 1
c[82][52]: 1
c[82][61]: 1
c[82][62]: 1
c[82][63]: 1
c[82][70]: 1
c[82][71]: 1
c[82][72]: 1
c[82][73]: 1
c[82][74]: 1
c[82][80]: 1
c[82][81]: 1
c[82][82]: 1
c[82][83]: 1
c[82][84]: 1
c[82][85]: 1
c[82][90]: 1
c[82][91]: 1
c[82][92]: 1
c[82][93]: 1
c[82][94]: 1
c[87][67]: 1
c[87][77]: 1
c[87][78]: 1
c[87][79]: 1
c[87][86]: 1
c[87][87]: 1
c[87][88]: 1
c[87][89]: 1
c[87][95]: 1
c[87][96]: 1
c[87][97]: 1
c[87][98]: 1
c[87][99]: 1
Time used by MIP1: 1159.75 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (7): 4, 29, 30, 45, 57, 82, 87

grid_11x11.txt
Time used by Floyd-Warshall: 62.75 ms
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
Model fingerprint: 0x11e714d2
Variable types: 0 continuous, 14762 integer (14762 binary)
Coefficient statistics:
  Matrix range     [1e+00, 4e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 79.0000000
Presolve removed 26853 rows and 12212 columns
Presolve time: 0.03s
Presolved: 2550 rows, 2550 columns, 7287 nonzeros
Variable types: 0 continuous, 2550 integer (2550 binary)

Root relaxation: objective 6.777778e+00, 2796 iterations, 0.06 seconds (0.06 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    6.77778    0  858   79.00000    6.77778  91.4%     -    0s
H    0     0                      69.0000000    6.77778  90.2%     -    0s
H    0     0                      17.0000000    6.77778  60.1%     -    0s
H    0     0                      12.0000000    6.77778  43.5%     -    0s
H    0     0                       9.0000000    6.77778  24.7%     -    0s
     0     0    7.00000    0  969    9.00000    7.00000  22.2%     -    0s
     0     0    7.00000    0  985    9.00000    7.00000  22.2%     -    0s
H    0     0                       7.0000000    7.00000  0.00%     -    0s

Cutting planes:
  Gomory: 3
  Zero half: 4

Explored 1 nodes (6024 simplex iterations) in 0.93 seconds (0.50 work units)
Thread count was 24 (of 8 available processors)

Solution count 6: 7 9 12 ... 79

Optimal solution found (tolerance 1.00e-04)
Best objective 7.000000000000e+00, best bound 7.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 7
x[3]: 1
x[19]: 1
x[44]: 1
x[60]: 1
x[76]: 1
x[101]: 1
x[117]: 1
c[3][0]: 1
c[3][1]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][5]: 1
c[3][12]: 1
c[3][13]: 1
c[3][14]: 1
c[3][15]: 1
c[3][16]: 1
c[3][24]: 1
c[3][25]: 1
c[3][26]: 1
c[3][36]: 1
c[19][6]: 1
c[19][7]: 1
c[19][8]: 1
c[19][9]: 1
c[19][10]: 1
c[19][17]: 1
c[19][18]: 1
c[19][19]: 1
c[19][20]: 1
c[19][21]: 1
c[19][28]: 1
c[19][29]: 1
c[19][30]: 1
c[19][31]: 1
c[19][32]: 1
c[19][40]: 1
c[19][41]: 1
c[19][42]: 1
c[19][52]: 1
c[44][11]: 1
c[44][22]: 1
c[44][23]: 1
c[44][33]: 1
c[44][34]: 1
c[44][35]: 1
c[44][44]: 1
c[44][45]: 1
c[44][46]: 1
c[44][47]: 1
c[44][55]: 1
c[44][56]: 1
c[44][57]: 1
c[44][66]: 1
c[44][67]: 1
c[44][77]: 1
c[60][27]: 1
c[60][37]: 1
c[60][38]: 1
c[60][39]: 1
c[60][48]: 1
c[60][49]: 1
c[60][50]: 1
c[60][51]: 1
c[60][58]: 1
c[60][59]: 1
c[60][60]: 1
c[60][61]: 1
c[60][62]: 1
c[60][63]: 1
c[60][69]: 1
c[60][70]: 1
c[60][71]: 1
c[60][72]: 1
c[60][81]: 1
c[60][82]: 1
c[60][83]: 1
c[60][93]: 1
c[76][43]: 1
c[76][53]: 1
c[76][54]: 1
c[76][64]: 1
c[76][65]: 1
c[76][73]: 1
c[76][74]: 1
c[76][75]: 1
c[76][76]: 1
c[76][85]: 1
c[76][86]: 1
c[76][87]: 1
c[76][97]: 1
c[76][98]: 1
c[76][109]: 1
c[101][68]: 1
c[101][78]: 1
c[101][79]: 1
c[101][80]: 1
c[101][88]: 1
c[101][89]: 1
c[101][90]: 1
c[101][91]: 1
c[101][92]: 1
c[101][99]: 1
c[101][100]: 1
c[101][101]: 1
c[101][102]: 1
c[101][103]: 1
c[101][104]: 1
c[101][110]: 1
c[101][111]: 1
c[101][112]: 1
c[101][113]: 1
c[117][84]: 1
c[117][94]: 1
c[117][95]: 1
c[117][96]: 1
c[117][105]: 1
c[117][106]: 1
c[117][107]: 1
c[117][108]: 1
c[117][114]: 1
c[117][115]: 1
c[117][116]: 1
c[117][117]: 1
c[117][118]: 1
c[117][119]: 1
c[117][120]: 1
Time used by MIP1: 1079.85 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (7): 3, 19, 44, 60, 76, 101, 117

grid_12x12.txt
Time used by Floyd-Warshall: 67.567 ms
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
Model fingerprint: 0x44874c1a
Variable types: 0 continuous, 20880 integer (20880 binary)
Coefficient statistics:
  Matrix range     [1e+00, 4e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 94.0000000
Presolve removed 38524 rows and 17788 columns
Presolve time: 0.04s
Presolved: 3092 rows, 3092 columns, 8844 nonzeros
Variable types: 0 continuous, 3092 integer (3092 binary)

Root relaxation: objective 8.202247e+00, 4745 iterations, 0.21 seconds (0.34 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    8.20225    0 1367   94.00000    8.20225  91.3%     -    0s
H    0     0                      91.0000000    8.20225  91.0%     -    0s
H    0     0                      16.0000000    8.20225  48.7%     -    0s
H    0     0                      14.0000000    8.20225  41.4%     -    0s
H    0     0                      13.0000000    8.27088  36.4%     -    0s
     0     0    8.27088    0 1388   13.00000    8.27088  36.4%     -    0s
H    0     0                      12.0000000    8.27088  31.1%     -    1s
     0     0    8.27546    0 1387   12.00000    8.27546  31.0%     -    1s
     0     0    8.30985    0 1379   12.00000    8.30985  30.8%     -    1s
H    0     0                      11.0000000    8.30985  24.5%     -    1s
     0     0    8.31358    0 1383   11.00000    8.31358  24.4%     -    1s
     0     0    8.32334    0 1447   11.00000    8.32334  24.3%     -    2s
     0     0    8.37037    0 1487   11.00000    8.37037  23.9%     -    2s
H    0     0                      10.0000000    8.50000  15.0%     -    3s
H    0     0                       9.0000000    8.50000  5.56%     -    3s

Cutting planes:
  Gomory: 11
  Zero half: 28

Explored 1 nodes (11191 simplex iterations) in 3.04 seconds (2.30 work units)
Thread count was 24 (of 8 available processors)

Solution count 9: 9 10 11 ... 94

Optimal solution found (tolerance 1.00e-04)
Best objective 9.000000000000e+00, best bound 9.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 9
x[3]: 1
x[21]: 1
x[48]: 1
x[53]: 1
x[71]: 1
x[78]: 1
x[110]: 1
x[129]: 1
x[135]: 1
c[3][0]: 1
c[3][1]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][5]: 1
c[3][6]: 1
c[3][13]: 1
c[3][14]: 1
c[3][15]: 1
c[3][16]: 1
c[3][17]: 1
c[3][26]: 1
c[3][27]: 1
c[3][28]: 1
c[21][7]: 1
c[21][8]: 1
c[21][9]: 1
c[21][10]: 1
c[21][11]: 1
c[21][18]: 1
c[21][19]: 1
c[21][20]: 1
c[21][21]: 1
c[21][22]: 1
c[21][23]: 1
c[21][31]: 1
c[21][32]: 1
c[21][33]: 1
c[21][34]: 1
c[21][44]: 1
c[21][45]: 1
c[21][57]: 1
c[48][12]: 1
c[48][24]: 1
c[48][25]: 1
c[48][36]: 1
c[48][37]: 1
c[48][38]: 1
c[48][48]: 1
c[48][49]: 1
c[48][51]: 1
c[48][60]: 1
c[48][61]: 1
c[48][62]: 1
c[48][72]: 1
c[48][73]: 1
c[48][84]: 1
c[53][29]: 1
c[53][30]: 1
c[53][39]: 1
c[53][40]: 1
c[53][41]: 1
c[53][43]: 1
c[53][50]: 1
c[53][52]: 1
c[53][53]: 1
c[53][54]: 1
c[53][56]: 1
c[53][63]: 1
c[53][64]: 1
c[53][65]: 1
c[53][66]: 1
c[53][67]: 1
c[71][35]: 1
c[71][46]: 1
c[71][47]: 1
c[71][58]: 1
c[71][59]: 1
c[71][69]: 1
c[71][70]: 1
c[71][71]: 1
c[71][82]: 1
c[71][83]: 1
c[71][94]: 1
c[71][95]: 1
c[71][107]: 1
c[78][42]: 1
c[78][55]: 1
c[78][68]: 1
c[78][75]: 1
c[78][76]: 1
c[78][77]: 1
c[78][78]: 1
c[78][79]: 1
c[78][80]: 1
c[78][81]: 1
c[78][88]: 1
c[78][89]: 1
c[78][90]: 1
c[78][91]: 1
c[78][92]: 1
c[78][101]: 1
c[78][102]: 1
c[78][103]: 1
c[78][114]: 1
c[110][74]: 1
c[110][85]: 1
c[110][86]: 1
c[110][87]: 1
c[110][96]: 1
c[110][97]: 1
c[110][98]: 1
c[110][100]: 1
c[110][108]: 1
c[110][109]: 1
c[110][110]: 1
c[110][111]: 1
c[110][113]: 1
c[110][120]: 1
c[110][124]: 1
c[110][133]: 1
c[110][134]: 1
c[110][135]: 1
c[129][93]: 1
c[129][104]: 1
c[129][105]: 1
c[129][106]: 1
c[129][115]: 1
c[129][116]: 1
c[129][117]: 1
c[129][118]: 1
c[129][119]: 1
c[129][126]: 1
c[129][127]: 1
c[129][128]: 1
c[129][129]: 1
c[129][130]: 1
c[129][131]: 1
c[129][139]: 1
c[129][140]: 1
c[129][141]: 1
c[129][142]: 1
c[129][143]: 1
c[135][99]: 1
c[135][112]: 1
c[135][121]: 1
c[135][122]: 1
c[135][123]: 1
c[135][125]: 1
c[135][132]: 1
c[135][136]: 1
c[135][137]: 1
c[135][138]: 1
Time used by MIP1: 3239.01 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (9): 3, 21, 48, 53, 71, 78, 110, 129, 135

grid_13x13.txt
Time used by Floyd-Warshall: 107.832 ms
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
Model fingerprint: 0x60a83e75
Variable types: 0 continuous, 28730 integer (28730 binary)
Coefficient statistics:
  Matrix range     [1e+00, 5e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 107.0000000
Presolve removed 53605 rows and 25044 columns
Presolve time: 0.05s
Presolved: 3686 rows, 3686 columns, 10551 nonzeros
Variable types: 0 continuous, 3686 integer (3686 binary)

Root relaxation: objective 9.344077e+00, 4940 iterations, 0.19 seconds (0.25 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    9.34408    0 1856  107.00000    9.34408  91.3%     -    0s
H    0     0                     101.0000000    9.34408  90.7%     -    0s
H    0     0                      21.0000000    9.34408  55.5%     -    0s
H    0     0                      18.0000000    9.34408  48.1%     -    0s
H    0     0                      14.0000000    9.37638  33.0%     -    1s
H    0     0                      12.0000000    9.37702  21.9%     -    1s
     0     0    9.37702    0 1847   12.00000    9.37702  21.9%     -    1s
H    0     0                      11.0000000    9.43118  14.3%     -    1s
     0     0    9.44319    0 1930   11.00000    9.44319  14.2%     -    2s
     0     0    9.44319    0 1913   11.00000    9.44319  14.2%     -    2s
     0     0    9.47840    0 2007   11.00000    9.47840  13.8%     -    2s
     0     0    9.48569    0 2029   11.00000    9.48569  13.8%     -    3s
H    0     0                      10.0000000    9.51301  4.87%     -    3s

Cutting planes:
  Zero half: 17

Explored 1 nodes (7734 simplex iterations) in 3.37 seconds (2.47 work units)
Thread count was 24 (of 8 available processors)

Solution count 8: 10 11 12 ... 107

Optimal solution found (tolerance 1.00e-04)
Best objective 1.000000000000e+01, best bound 1.000000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 10
x[12]: 1
x[14]: 1
x[19]: 1
x[55]: 1
x[61]: 1
x[104]: 1
x[110]: 1
x[116]: 1
x[159]: 1
x[165]: 1
c[12][9]: 1
c[12][10]: 1
c[12][11]: 1
c[12][12]: 1
c[12][23]: 1
c[12][24]: 1
c[12][25]: 1
c[12][37]: 1
c[12][38]: 1
c[12][51]: 1
c[14][0]: 1
c[14][1]: 1
c[14][2]: 1
c[14][3]: 1
c[14][13]: 1
c[14][14]: 1
c[14][15]: 1
c[14][16]: 1
c[14][17]: 1
c[14][26]: 1
c[14][27]: 1
c[14][28]: 1
c[14][29]: 1
c[14][39]: 1
c[19][4]: 1
c[19][5]: 1
c[19][6]: 1
c[19][7]: 1
c[19][8]: 1
c[19][18]: 1
c[19][19]: 1
c[19][20]: 1
c[19][21]: 1
c[19][22]: 1
c[19][30]: 1
c[19][31]: 1
c[19][32]: 1
c[19][33]: 1
c[19][34]: 1
c[19][44]: 1
c[19][45]: 1
c[55][40]: 1
c[55][41]: 1
c[55][42]: 1
c[55][43]: 1
c[55][52]: 1
c[55][53]: 1
c[55][54]: 1
c[55][55]: 1
c[55][56]: 1
c[55][57]: 1
c[55][58]: 1
c[55][66]: 1
c[55][67]: 1
c[55][68]: 1
c[55][69]: 1
c[55][70]: 1
c[55][80]: 1
c[55][81]: 1
c[55][82]: 1
c[55][94]: 1
c[61][35]: 1
c[61][36]: 1
c[61][46]: 1
c[61][47]: 1
c[61][48]: 1
c[61][49]: 1
c[61][50]: 1
c[61][59]: 1
c[61][60]: 1
c[61][61]: 1
c[61][62]: 1
c[61][63]: 1
c[61][64]: 1
c[61][72]: 1
c[61][73]: 1
c[61][74]: 1
c[61][75]: 1
c[61][76]: 1
c[61][86]: 1
c[61][87]: 1
c[61][88]: 1
c[61][100]: 1
c[104][65]: 1
c[104][78]: 1
c[104][79]: 1
c[104][91]: 1
c[104][92]: 1
c[104][93]: 1
c[104][104]: 1
c[104][105]: 1
c[104][106]: 1
c[104][107]: 1
c[104][117]: 1
c[104][118]: 1
c[104][119]: 1
c[104][130]: 1
c[104][131]: 1
c[104][143]: 1
c[110][71]: 1
c[110][83]: 1
c[110][84]: 1
c[110][85]: 1
c[110][95]: 1
c[110][96]: 1
c[110][97]: 1
c[110][98]: 1
c[110][99]: 1
c[110][108]: 1
c[110][109]: 1
c[110][110]: 1
c[110][111]: 1
c[110][112]: 1
c[110][113]: 1
c[110][121]: 1
c[110][122]: 1
c[110][123]: 1
c[110][124]: 1
c[110][125]: 1
c[110][135]: 1
c[110][136]: 1
c[110][137]: 1
c[110][149]: 1
c[116][77]: 1
c[116][89]: 1
c[116][90]: 1
c[116][101]: 1
c[116][102]: 1
c[116][103]: 1
c[116][114]: 1
c[116][115]: 1
c[116][116]: 1
c[116][127]: 1
c[116][128]: 1
c[116][129]: 1
c[116][141]: 1
c[116][142]: 1
c[116][155]: 1
c[159][120]: 1
c[159][132]: 1
c[159][133]: 1
c[159][134]: 1
c[159][144]: 1
c[159][145]: 1
c[159][146]: 1
c[159][147]: 1
c[159][148]: 1
c[159][156]: 1
c[159][157]: 1
c[159][158]: 1
c[159][159]: 1
c[159][160]: 1
c[159][161]: 1
c[159][162]: 1
c[165][126]: 1
c[165][138]: 1
c[165][139]: 1
c[165][140]: 1
c[165][150]: 1
c[165][151]: 1
c[165][152]: 1
c[165][153]: 1
c[165][154]: 1
c[165][163]: 1
c[165][164]: 1
c[165][165]: 1
c[165][166]: 1
c[165][167]: 1
c[165][168]: 1
Time used by MIP1: 3624.11 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (10): 12, 14, 19, 55, 61, 104, 110, 116, 159, 165

grid_14x14.txt
Time used by Floyd-Warshall: 144.815 ms
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
Model fingerprint: 0x1e82a7eb
Variable types: 0 continuous, 38612 integer (38612 binary)
Coefficient statistics:
  Matrix range     [1e+00, 5e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 122.0000000
Presolve removed 72696 rows and 34280 columns
Presolve time: 0.07s
Presolved: 4332 rows, 4332 columns, 12408 nonzeros
Variable types: 0 continuous, 4332 integer (4332 binary)

Root relaxation: objective 1.059898e+01, 6353 iterations, 0.27 seconds (0.45 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   10.59898    0 2165  122.00000   10.59898  91.3%     -    0s
H    0     0                     121.0000000   10.59898  91.2%     -    0s
H    0     0                      24.0000000   10.59898  55.8%     -    0s
H    0     0                      22.0000000   10.59898  51.8%     -    1s
     0     0   10.60409    0 2308   22.00000   10.60409  51.8%     -    1s
H    0     0                      20.0000000   10.60409  47.0%     -    2s
H    0     0                      19.0000000   10.60409  44.2%     -    2s
     0     0   10.60589    0 2354   19.00000   10.60589  44.2%     -    2s
H    0     0                      15.0000000   10.60902  29.3%     -    3s
     0     0   10.60916    0 2111   15.00000   10.60916  29.3%     -    3s
H    0     0                      14.0000000   10.63767  24.0%     -    4s
     0     0   10.63873    0 2246   14.00000   10.63873  24.0%     -    4s
     0     0   10.71167    0 2140   14.00000   10.71167  23.5%     -    4s
     0     0   10.80303    0 2152   14.00000   10.80303  22.8%     -    5s
     0     0   10.80303    0 2123   14.00000   10.80303  22.8%     -    5s
H    0     0                      13.0000000   11.00000  15.4%     -    6s
     0     0   11.00000    0 2108   13.00000   11.00000  15.4%     -    6s
     0     0   11.00000    0 1951   13.00000   11.00000  15.4%     -    6s
     0     2   11.00000    0 1951   13.00000   11.00000  15.4%     -   11s
     7    16   11.75000    3  784   13.00000   11.04779  15.0%  2158   15s
*   15    30               4      12.0000000   11.07045  7.75%  1368   15s

Cutting planes:
  Gomory: 5

Explored 31 nodes (54008 simplex iterations) in 15.89 seconds (10.37 work units)
Thread count was 24 (of 8 available processors)

Solution count 10: 12 13 14 ... 122

Optimal solution found (tolerance 1.00e-04)
Best objective 1.200000000000e+01, best bound 1.200000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 12
x[7]: 1
x[15]: 1
x[26]: 1
x[61]: 1
x[79]: 1
x[84]: 1
x[111]: 1
x[116]: 1
x[134]: 1
x[169]: 1
x[180]: 1
x[188]: 1
c[7][4]: 1
c[7][5]: 1
c[7][6]: 1
c[7][7]: 1
c[7][8]: 1
c[7][9]: 1
c[7][19]: 1
c[7][20]: 1
c[7][21]: 1
c[7][22]: 1
c[7][34]: 1
c[7][35]: 1
c[7][36]: 1
c[7][49]: 1
c[15][0]: 1
c[15][1]: 1
c[15][2]: 1
c[15][3]: 1
c[15][14]: 1
c[15][15]: 1
c[15][16]: 1
c[15][17]: 1
c[15][18]: 1
c[15][28]: 1
c[15][29]: 1
c[15][30]: 1
c[15][31]: 1
c[15][42]: 1
c[15][43]: 1
c[15][44]: 1
c[15][57]: 1
c[26][10]: 1
c[26][11]: 1
c[26][12]: 1
c[26][13]: 1
c[26][23]: 1
c[26][24]: 1
c[26][25]: 1
c[26][26]: 1
c[26][27]: 1
c[26][38]: 1
c[26][39]: 1
c[26][40]: 1
c[26][41]: 1
c[26][53]: 1
c[26][54]: 1
c[26][55]: 1
c[26][68]: 1
c[61][32]: 1
c[61][33]: 1
c[61][45]: 1
c[61][46]: 1
c[61][47]: 1
c[61][48]: 1
c[61][58]: 1
c[61][59]: 1
c[61][60]: 1
c[61][61]: 1
c[61][62]: 1
c[61][63]: 1
c[61][64]: 1
c[61][73]: 1
c[61][75]: 1
c[61][76]: 1
c[61][77]: 1
c[61][90]: 1
c[61][103]: 1
c[79][37]: 1
c[79][50]: 1
c[79][51]: 1
c[79][52]: 1
c[79][65]: 1
c[79][66]: 1
c[79][67]: 1
c[79][78]: 1
c[79][79]: 1
c[79][80]: 1
c[79][81]: 1
c[79][82]: 1
c[79][91]: 1
c[79][92]: 1
c[79][93]: 1
c[79][94]: 1
c[79][107]: 1
c[79][108]: 1
c[79][121]: 1
c[84][56]: 1
c[84][70]: 1
c[84][71]: 1
c[84][72]: 1
c[84][84]: 1
c[84][85]: 1
c[84][86]: 1
c[84][98]: 1
c[84][99]: 1
c[84][112]: 1
c[84][126]: 1
c[111][69]: 1
c[111][83]: 1
c[111][95]: 1
c[111][96]: 1
c[111][97]: 1
c[111][109]: 1
c[111][110]: 1
c[111][111]: 1
c[111][123]: 1
c[111][124]: 1
c[111][125]: 1
c[111][139]: 1
c[116][74]: 1
c[116][87]: 1
c[116][88]: 1
c[116][89]: 1
c[116][100]: 1
c[116][101]: 1
c[116][102]: 1
c[116][104]: 1
c[116][113]: 1
c[116][114]: 1
c[116][115]: 1
c[116][116]: 1
c[116][117]: 1
c[116][118]: 1
c[116][128]: 1
c[116][129]: 1
c[116][130]: 1
c[116][132]: 1
c[116][143]: 1
c[116][144]: 1
c[116][145]: 1
c[116][158]: 1
c[134][105]: 1
c[134][106]: 1
c[134][119]: 1
c[134][120]: 1
c[134][122]: 1
c[134][131]: 1
c[134][133]: 1
c[134][134]: 1
c[134][135]: 1
c[134][136]: 1
c[134][137]: 1
c[134][146]: 1
c[134][147]: 1
c[134][148]: 1
c[134][149]: 1
c[134][150]: 1
c[134][162]: 1
c[134][163]: 1
c[169][127]: 1
c[169][140]: 1
c[169][141]: 1
c[169][142]: 1
c[169][154]: 1
c[169][155]: 1
c[169][156]: 1
c[169][157]: 1
c[169][168]: 1
c[169][169]: 1
c[169][170]: 1
c[169][171]: 1
c[169][182]: 1
c[169][183]: 1
c[169][184]: 1
c[169][185]: 1
c[180][138]: 1
c[180][151]: 1
c[180][152]: 1
c[180][153]: 1
c[180][164]: 1
c[180][165]: 1
c[180][166]: 1
c[180][167]: 1
c[180][177]: 1
c[180][178]: 1
c[180][179]: 1
c[180][180]: 1
c[180][181]: 1
c[180][192]: 1
c[180][193]: 1
c[180][194]: 1
c[180][195]: 1
c[188][159]: 1
c[188][160]: 1
c[188][161]: 1
c[188][172]: 1
c[188][173]: 1
c[188][174]: 1
c[188][175]: 1
c[188][176]: 1
c[188][186]: 1
c[188][187]: 1
c[188][188]: 1
c[188][189]: 1
c[188][190]: 1
c[188][191]: 1
Time used by MIP1: 16237.1 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (12): 7, 15, 26, 61, 79, 84, 111, 116, 134, 169, 180, 188

grid_15x15.txt
Time used by Floyd-Warshall: 233.005 ms
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
Model fingerprint: 0xc6d4d504
Variable types: 0 continuous, 50850 integer (50850 binary)
Coefficient statistics:
  Matrix range     [1e+00, 6e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 143.0000000
Presolve removed 96445 rows and 45820 columns
Presolve time: 0.11s
Presolved: 5030 rows, 5030 columns, 14415 nonzeros
Variable types: 0 continuous, 5030 integer (5030 binary)

Root relaxation: objective 1.182759e+01, 7343 iterations, 0.28 seconds (0.43 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   11.82759    0 2636  143.00000   11.82759  91.7%     -    0s
H    0     0                     142.0000000   11.82759  91.7%     -    0s
H    0     0                      18.0000000   11.82759  34.3%     -    0s
H    0     0                      17.0000000   11.82759  30.4%     -    1s
H    0     0                      12.0000000   11.82759  1.44%     -    1s

Cutting planes:
  Zero half: 9

Explored 1 nodes (11027 simplex iterations) in 1.64 seconds (1.32 work units)
Thread count was 24 (of 8 available processors)

Solution count 5: 12 17 18 ... 143

Optimal solution found (tolerance 1.00e-04)
Best objective 1.200000000000e+01, best bound 1.200000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 12
x[3]: 1
x[11]: 1
x[52]: 1
x[60]: 1
x[74]: 1
x[109]: 1
x[115]: 1
x[150]: 1
x[164]: 1
x[172]: 1
x[213]: 1
x[221]: 1
c[3][0]: 1
c[3][1]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][5]: 1
c[3][6]: 1
c[3][16]: 1
c[3][17]: 1
c[3][18]: 1
c[3][19]: 1
c[3][20]: 1
c[3][32]: 1
c[3][33]: 1
c[3][34]: 1
c[3][48]: 1
c[11][8]: 1
c[11][9]: 1
c[11][10]: 1
c[11][11]: 1
c[11][12]: 1
c[11][13]: 1
c[11][14]: 1
c[11][24]: 1
c[11][25]: 1
c[11][26]: 1
c[11][27]: 1
c[11][28]: 1
c[11][40]: 1
c[11][41]: 1
c[11][42]: 1
c[11][56]: 1
c[52][7]: 1
c[52][21]: 1
c[52][22]: 1
c[52][23]: 1
c[52][35]: 1
c[52][36]: 1
c[52][37]: 1
c[52][38]: 1
c[52][39]: 1
c[52][49]: 1
c[52][50]: 1
c[52][51]: 1
c[52][52]: 1
c[52][53]: 1
c[52][54]: 1
c[52][55]: 1
c[52][65]: 1
c[52][66]: 1
c[52][67]: 1
c[52][68]: 1
c[52][69]: 1
c[52][81]: 1
c[52][82]: 1
c[52][83]: 1
c[52][97]: 1
c[60][15]: 1
c[60][30]: 1
c[60][31]: 1
c[60][45]: 1
c[60][46]: 1
c[60][47]: 1
c[60][60]: 1
c[60][61]: 1
c[60][62]: 1
c[60][63]: 1
c[60][75]: 1
c[60][76]: 1
c[60][77]: 1
c[60][90]: 1
c[60][91]: 1
c[60][105]: 1
c[74][29]: 1
c[74][43]: 1
c[74][44]: 1
c[74][57]: 1
c[74][58]: 1
c[74][59]: 1
c[74][71]: 1
c[74][72]: 1
c[74][73]: 1
c[74][74]: 1
c[74][87]: 1
c[74][88]: 1
c[74][89]: 1
c[74][103]: 1
c[74][104]: 1
c[74][119]: 1
c[109][64]: 1
c[109][78]: 1
c[109][79]: 1
c[109][80]: 1
c[109][92]: 1
c[109][93]: 1
c[109][94]: 1
c[109][95]: 1
c[109][96]: 1
c[109][106]: 1
c[109][107]: 1
c[109][108]: 1
c[109][109]: 1
c[109][110]: 1
c[109][111]: 1
c[109][122]: 1
c[109][123]: 1
c[109][124]: 1
c[109][125]: 1
c[109][126]: 1
c[109][138]: 1
c[109][139]: 1
c[109][140]: 1
c[109][154]: 1
c[115][70]: 1
c[115][84]: 1
c[115][85]: 1
c[115][86]: 1
c[115][98]: 1
c[115][99]: 1
c[115][100]: 1
c[115][101]: 1
c[115][102]: 1
c[115][112]: 1
c[115][113]: 1
c[115][114]: 1
c[115][115]: 1
c[115][116]: 1
c[115][117]: 1
c[115][118]: 1
c[115][128]: 1
c[115][129]: 1
c[115][130]: 1
c[115][131]: 1
c[115][132]: 1
c[115][144]: 1
c[115][145]: 1
c[115][146]: 1
c[115][160]: 1
c[150][120]: 1
c[150][121]: 1
c[150][135]: 1
c[150][136]: 1
c[150][137]: 1
c[150][150]: 1
c[150][151]: 1
c[150][152]: 1
c[150][153]: 1
c[150][165]: 1
c[150][166]: 1
c[150][167]: 1
c[150][180]: 1
c[150][181]: 1
c[150][195]: 1
c[164][133]: 1
c[164][134]: 1
c[164][147]: 1
c[164][148]: 1
c[164][149]: 1
c[164][161]: 1
c[164][162]: 1
c[164][163]: 1
c[164][164]: 1
c[164][177]: 1
c[164][178]: 1
c[164][179]: 1
c[164][193]: 1
c[164][194]: 1
c[164][209]: 1
c[172][127]: 1
c[172][141]: 1
c[172][142]: 1
c[172][143]: 1
c[172][155]: 1
c[172][156]: 1
c[172][157]: 1
c[172][158]: 1
c[172][159]: 1
c[172][169]: 1
c[172][170]: 1
c[172][171]: 1
c[172][172]: 1
c[172][173]: 1
c[172][174]: 1
c[172][175]: 1
c[172][185]: 1
c[172][186]: 1
c[172][187]: 1
c[172][188]: 1
c[172][189]: 1
c[172][201]: 1
c[172][202]: 1
c[172][203]: 1
c[172][217]: 1
c[213][168]: 1
c[213][182]: 1
c[213][183]: 1
c[213][184]: 1
c[213][196]: 1
c[213][197]: 1
c[213][198]: 1
c[213][199]: 1
c[213][200]: 1
c[213][210]: 1
c[213][211]: 1
c[213][212]: 1
c[213][213]: 1
c[213][214]: 1
c[213][215]: 1
c[213][216]: 1
c[221][176]: 1
c[221][190]: 1
c[221][191]: 1
c[221][192]: 1
c[221][204]: 1
c[221][205]: 1
c[221][206]: 1
c[221][207]: 1
c[221][208]: 1
c[221][218]: 1
c[221][219]: 1
c[221][220]: 1
c[221][221]: 1
c[221][222]: 1
c[221][223]: 1
c[221][224]: 1
Time used by MIP1: 2074.45 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (12): 3, 11, 52, 60, 74, 109, 115, 150, 164, 172, 213, 221

grid_16x16.txt
Time used by Floyd-Warshall: 307.526 ms
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
Model fingerprint: 0x2df0f208
Variable types: 0 continuous, 65792 integer (65792 binary)
Coefficient statistics:
  Matrix range     [1e+00, 6e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 160.0000000
Presolve removed 125548 rows and 60012 columns
Presolve time: 0.11s
Presolved: 5780 rows, 5780 columns, 16572 nonzeros
Variable types: 0 continuous, 5780 integer (5780 binary)

Root relaxation: objective 1.346845e+01, 11460 iterations, 0.89 seconds (1.12 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   13.46845    0 3347  160.00000   13.46845  91.6%     -    1s
H    0     0                     159.0000000   13.46845  91.5%     -    1s
H    0     0                      22.0000000   13.46845  38.8%     -    1s
     0     0   13.46845    0 3355   22.00000   13.46845  38.8%     -    2s
     0     0   13.47671    0 3356   22.00000   13.47671  38.7%     -    3s
     0     0   13.49498    0 3375   22.00000   13.49498  38.7%     -    5s
     0     0   13.54544    0 3338   22.00000   13.54544  38.4%     -    6s
H    0     0                      21.0000000   13.54544  35.5%     -    8s
     0     0   13.54782    0 3342   21.00000   13.54782  35.5%     -    8s
     0     0   13.58190    0 3417   21.00000   13.58190  35.3%     -    9s
     0     0   13.58190    0 3403   21.00000   13.58190  35.3%     -    9s
H    0     0                      18.0000000   13.58190  24.5%     -   11s
     0     2   13.58190    0 3403   18.00000   13.58190  24.5%     -   21s
     3     8   13.63223    2 3550   18.00000   13.58190  24.5%  3149   25s
    55    80   13.92481    6 2424   18.00000   13.87759  22.9%  1180   30s
   127   153   16.00000    8  434   18.00000   13.87759  22.9%   928   36s
*  136   153               9      15.0000000   13.87759  7.48%   908   36s

Cutting planes:
  Zero half: 1

Explored 305 nodes (166501 simplex iterations) in 37.01 seconds (20.77 work units)
Thread count was 24 (of 8 available processors)

Solution count 6: 15 18 21 ... 160

Optimal solution found (tolerance 1.00e-04)
Best objective 1.500000000000e+01, best bound 1.500000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 15
x[1]: 1
x[22]: 1
x[30]: 1
x[42]: 1
x[66]: 1
x[94]: 1
x[103]: 1
x[140]: 1
x[144]: 1
x[147]: 1
x[184]: 1
x[207]: 1
x[225]: 1
x[229]: 1
x[251]: 1
c[1][0]: 1
c[1][1]: 1
c[1][2]: 1
c[1][3]: 1
c[1][4]: 1
c[1][16]: 1
c[1][17]: 1
c[1][19]: 1
c[1][32]: 1
c[1][34]: 1
c[1][49]: 1
c[22][5]: 1
c[22][6]: 1
c[22][7]: 1
c[22][8]: 1
c[22][20]: 1
c[22][21]: 1
c[22][22]: 1
c[22][23]: 1
c[22][25]: 1
c[22][36]: 1
c[22][37]: 1
c[22][38]: 1
c[22][40]: 1
c[22][53]: 1
c[22][54]: 1
c[30][12]: 1
c[30][13]: 1
c[30][14]: 1
c[30][15]: 1
c[30][29]: 1
c[30][30]: 1
c[30][31]: 1
c[30][45]: 1
c[30][46]: 1
c[30][47]: 1
c[30][61]: 1
c[30][62]: 1
c[30][78]: 1
c[42][9]: 1
c[42][10]: 1
c[42][11]: 1
c[42][24]: 1
c[42][26]: 1
c[42][27]: 1
c[42][28]: 1
c[42][39]: 1
c[42][41]: 1
c[42][42]: 1
c[42][43]: 1
c[42][44]: 1
c[42][56]: 1
c[42][57]: 1
c[42][58]: 1
c[42][59]: 1
c[42][60]: 1
c[42][73]: 1
c[42][74]: 1
c[42][75]: 1
c[42][90]: 1
c[66][18]: 1
c[66][33]: 1
c[66][35]: 1
c[66][48]: 1
c[66][50]: 1
c[66][51]: 1
c[66][52]: 1
c[66][64]: 1
c[66][65]: 1
c[66][66]: 1
c[66][67]: 1
c[66][68]: 1
c[66][69]: 1
c[66][80]: 1
c[66][81]: 1
c[66][82]: 1
c[66][83]: 1
c[66][84]: 1
c[66][97]: 1
c[66][98]: 1
c[94][63]: 1
c[94][76]: 1
c[94][77]: 1
c[94][79]: 1
c[94][91]: 1
c[94][92]: 1
c[94][93]: 1
c[94][94]: 1
c[94][95]: 1
c[94][109]: 1
c[94][110]: 1
c[94][111]: 1
c[94][125]: 1
c[94][127]: 1
c[94][142]: 1
c[103][55]: 1
c[103][70]: 1
c[103][71]: 1
c[103][72]: 1
c[103][85]: 1
c[103][86]: 1
c[103][87]: 1
c[103][88]: 1
c[103][89]: 1
c[103][100]: 1
c[103][101]: 1
c[103][102]: 1
c[103][103]: 1
c[103][104]: 1
c[103][105]: 1
c[103][106]: 1
c[103][117]: 1
c[103][118]: 1
c[103][119]: 1
c[103][120]: 1
c[103][121]: 1
c[103][134]: 1
c[103][135]: 1
c[103][136]: 1
c[103][151]: 1
c[140][107]: 1
c[140][108]: 1
c[140][122]: 1
c[140][123]: 1
c[140][124]: 1
c[140][126]: 1
c[140][137]: 1
c[140][138]: 1
c[140][139]: 1
c[140][140]: 1
c[140][141]: 1
c[140][143]: 1
c[140][154]: 1
c[140][155]: 1
c[140][156]: 1
c[140][157]: 1
c[140][158]: 1
c[140][171]: 1
c[140][172]: 1
c[140][173]: 1
c[140][188]: 1
c[144][96]: 1
c[144][112]: 1
c[144][113]: 1
c[144][128]: 1
c[144][129]: 1
c[144][144]: 1
c[144][145]: 1
c[144][160]: 1
c[144][161]: 1
c[144][162]: 1
c[144][176]: 1
c[144][177]: 1
c[144][192]: 1
c[147][99]: 1
c[147][114]: 1
c[147][115]: 1
c[147][116]: 1
c[147][130]: 1
c[147][131]: 1
c[147][132]: 1
c[147][133]: 1
c[147][146]: 1
c[147][147]: 1
c[147][148]: 1
c[147][149]: 1
c[147][150]: 1
c[147][163]: 1
c[147][164]: 1
c[147][165]: 1
c[147][178]: 1
c[147][179]: 1
c[147][180]: 1
c[147][195]: 1
c[184][152]: 1
c[184][153]: 1
c[184][166]: 1
c[184][167]: 1
c[184][168]: 1
c[184][169]: 1
c[184][170]: 1
c[184][181]: 1
c[184][182]: 1
c[184][183]: 1
c[184][184]: 1
c[184][185]: 1
c[184][186]: 1
c[184][187]: 1
c[184][199]: 1
c[184][200]: 1
c[184][201]: 1
c[184][202]: 1
c[184][216]: 1
c[184][217]: 1
c[184][232]: 1
c[207][159]: 1
c[207][174]: 1
c[207][175]: 1
c[207][189]: 1
c[207][190]: 1
c[207][191]: 1
c[207][204]: 1
c[207][205]: 1
c[207][206]: 1
c[207][207]: 1
c[207][221]: 1
c[207][222]: 1
c[207][223]: 1
c[207][238]: 1
c[207][239]: 1
c[207][255]: 1
c[225][193]: 1
c[225][194]: 1
c[225][208]: 1
c[225][209]: 1
c[225][210]: 1
c[225][211]: 1
c[225][224]: 1
c[225][225]: 1
c[225][226]: 1
c[225][227]: 1
c[225][240]: 1
c[225][241]: 1
c[225][242]: 1
c[225][243]: 1
c[229][196]: 1
c[229][197]: 1
c[229][198]: 1
c[229][212]: 1
c[229][213]: 1
c[229][214]: 1
c[229][215]: 1
c[229][228]: 1
c[229][229]: 1
c[229][230]: 1
c[229][231]: 1
c[229][244]: 1
c[229][245]: 1
c[229][246]: 1
c[229][247]: 1
c[251][203]: 1
c[251][218]: 1
c[251][219]: 1
c[251][220]: 1
c[251][233]: 1
c[251][234]: 1
c[251][235]: 1
c[251][236]: 1
c[251][237]: 1
c[251][248]: 1
c[251][249]: 1
c[251][250]: 1
c[251][251]: 1
c[251][252]: 1
c[251][253]: 1
c[251][254]: 1
Time used by MIP1: 37663.6 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (15): 1, 22, 30, 42, 66, 94, 103, 140, 144, 147, 184, 207, 225, 229, 251

grid_17x17.txt
Time used by Floyd-Warshall: 511.774 ms
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
Model fingerprint: 0x6ceb6c06
Variable types: 0 continuous, 83810 integer (83810 binary)
Coefficient statistics:
  Matrix range     [1e+00, 6e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 181.0000000
Presolve removed 160749 rows and 77228 columns
Presolve time: 0.18s
Presolved: 6582 rows, 6582 columns, 18879 nonzeros
Variable types: 0 continuous, 6582 integer (6582 binary)

Root relaxation: objective 1.490159e+01, 13151 iterations, 0.96 seconds (1.35 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   14.90159    0 4407  181.00000   14.90159  91.8%     -    1s
H    0     0                     180.0000000   14.90159  91.7%     -    1s
H    0     0                      23.0000000   14.90159  35.2%     -    1s
     0     0   14.90752    0 4512   23.00000   14.90752  35.2%     -    3s
     0     0   14.92220    0 4188   23.00000   14.92220  35.1%     -    6s
     0     0   14.92220    0 4210   23.00000   14.92220  35.1%     -    6s
     0     0   14.93627    0 4299   23.00000   14.93627  35.1%     -    7s
     0     0   14.94090    0 4340   23.00000   14.94090  35.0%     -    9s
     0     0   14.95833    0 4412   23.00000   14.95833  35.0%     -   11s
     0     0   14.95833    0 4312   23.00000   14.95833  35.0%     -   11s
H    0     0                      22.0000000   14.95833  32.0%     -   12s
H    0     0                      19.0000000   14.95833  21.3%     -   12s
     0     2   14.95833    0 4312   19.00000   14.95833  21.3%     -   18s
     1     4   14.95833    1 4356   19.00000   14.95833  21.3%  4629   20s
     7    16   15.30119    3 2908   19.00000   15.03118  20.9%  2723   25s
    31    56   17.00000    5 1531   19.00000   15.30774  19.4%  1966   31s
H   33    56                      18.0000000   15.30774  15.0%  1921   31s
H   43    56                      17.0000000   15.30926  9.95%  1793   31s
    80    62   15.90234    7 2449   17.00000   15.38349  9.51%  1359   35s
*   91    62               6      16.0000000   15.38349  3.85%  1302   35s

Cutting planes:
  Zero half: 5

Explored 103 nodes (150269 simplex iterations) in 35.54 seconds (19.85 work units)
Thread count was 24 (of 8 available processors)

Solution count 8: 16 17 18 ... 181

Optimal solution found (tolerance 1.00e-04)
Best objective 1.600000000000e+01, best bound 1.600000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 16
x[4]: 1
x[12]: 1
x[51]: 1
x[59]: 1
x[67]: 1
x[106]: 1
x[114]: 1
x[149]: 1
x[153]: 1
x[161]: 1
x[186]: 1
x[208]: 1
x[232]: 1
x[256]: 1
x[269]: 1
x[279]: 1
c[4][1]: 1
c[4][2]: 1
c[4][3]: 1
c[4][4]: 1
c[4][5]: 1
c[4][6]: 1
c[4][7]: 1
c[4][19]: 1
c[4][20]: 1
c[4][21]: 1
c[4][22]: 1
c[4][23]: 1
c[4][37]: 1
c[4][38]: 1
c[4][39]: 1
c[4][55]: 1
c[12][9]: 1
c[12][10]: 1
c[12][11]: 1
c[12][12]: 1
c[12][13]: 1
c[12][14]: 1
c[12][15]: 1
c[12][27]: 1
c[12][28]: 1
c[12][29]: 1
c[12][30]: 1
c[12][31]: 1
c[12][45]: 1
c[12][46]: 1
c[12][47]: 1
c[51][0]: 1
c[51][17]: 1
c[51][18]: 1
c[51][34]: 1
c[51][35]: 1
c[51][36]: 1
c[51][51]: 1
c[51][52]: 1
c[51][53]: 1
c[51][54]: 1
c[51][68]: 1
c[51][69]: 1
c[51][70]: 1
c[51][85]: 1
c[51][86]: 1
c[51][102]: 1
c[59][8]: 1
c[59][24]: 1
c[59][25]: 1
c[59][26]: 1
c[59][40]: 1
c[59][41]: 1
c[59][42]: 1
c[59][43]: 1
c[59][44]: 1
c[59][56]: 1
c[59][57]: 1
c[59][58]: 1
c[59][59]: 1
c[59][60]: 1
c[59][61]: 1
c[59][62]: 1
c[59][74]: 1
c[59][75]: 1
c[59][76]: 1
c[59][77]: 1
c[59][78]: 1
c[59][92]: 1
c[59][93]: 1
c[59][94]: 1
c[67][16]: 1
c[67][32]: 1
c[67][33]: 1
c[67][48]: 1
c[67][49]: 1
c[67][50]: 1
c[67][64]: 1
c[67][65]: 1
c[67][66]: 1
c[67][67]: 1
c[67][82]: 1
c[67][83]: 1
c[67][84]: 1
c[67][100]: 1
c[67][101]: 1
c[67][118]: 1
c[106][71]: 1
c[106][72]: 1
c[106][73]: 1
c[106][87]: 1
c[106][88]: 1
c[106][89]: 1
c[106][90]: 1
c[106][91]: 1
c[106][103]: 1
c[106][104]: 1
c[106][105]: 1
c[106][106]: 1
c[106][107]: 1
c[106][108]: 1
c[106][109]: 1
c[106][121]: 1
c[106][122]: 1
c[106][123]: 1
c[106][124]: 1
c[106][125]: 1
c[106][139]: 1
c[106][140]: 1
c[106][141]: 1
c[106][157]: 1
c[114][63]: 1
c[114][79]: 1
c[114][80]: 1
c[114][81]: 1
c[114][95]: 1
c[114][96]: 1
c[114][97]: 1
c[114][98]: 1
c[114][99]: 1
c[114][111]: 1
c[114][112]: 1
c[114][113]: 1
c[114][117]: 1
c[114][129]: 1
c[114][130]: 1
c[114][131]: 1
c[114][147]: 1
c[114][148]: 1
c[114][149]: 1
c[149][114]: 1
c[149][115]: 1
c[149][116]: 1
c[149][132]: 1
c[149][133]: 1
c[149][134]: 1
c[149][146]: 1
c[149][150]: 1
c[149][152]: 1
c[149][165]: 1
c[149][166]: 1
c[149][168]: 1
c[149][182]: 1
c[149][200]: 1
c[153][119]: 1
c[153][120]: 1
c[153][136]: 1
c[153][137]: 1
c[153][138]: 1
c[153][153]: 1
c[153][154]: 1
c[153][155]: 1
c[153][156]: 1
c[153][170]: 1
c[153][171]: 1
c[153][172]: 1
c[153][187]: 1
c[153][188]: 1
c[153][204]: 1
c[161][110]: 1
c[161][126]: 1
c[161][127]: 1
c[161][128]: 1
c[161][142]: 1
c[161][143]: 1
c[161][144]: 1
c[161][145]: 1
c[161][158]: 1
c[161][159]: 1
c[161][160]: 1
c[161][161]: 1
c[161][162]: 1
c[161][163]: 1
c[161][164]: 1
c[161][176]: 1
c[161][177]: 1
c[161][178]: 1
c[161][179]: 1
c[161][180]: 1
c[161][194]: 1
c[161][195]: 1
c[161][196]: 1
c[161][212]: 1
c[186][135]: 1
c[186][151]: 1
c[186][167]: 1
c[186][169]: 1
c[186][183]: 1
c[186][184]: 1
c[186][185]: 1
c[186][186]: 1
c[186][201]: 1
c[186][202]: 1
c[186][203]: 1
c[186][219]: 1
c[186][220]: 1
c[186][237]: 1
c[208][173]: 1
c[208][174]: 1
c[208][175]: 1
c[208][189]: 1
c[208][190]: 1
c[208][191]: 1
c[208][192]: 1
c[208][193]: 1
c[208][206]: 1
c[208][207]: 1
c[208][208]: 1
c[208][209]: 1
c[208][210]: 1
c[208][211]: 1
c[208][224]: 1
c[208][225]: 1
c[208][226]: 1
c[208][227]: 1
c[208][242]: 1
c[208][243]: 1
c[208][259]: 1
c[232][181]: 1
c[232][197]: 1
c[232][198]: 1
c[232][199]: 1
c[232][213]: 1
c[232][214]: 1
c[232][215]: 1
c[232][216]: 1
c[232][217]: 1
c[232][229]: 1
c[232][230]: 1
c[232][231]: 1
c[232][232]: 1
c[232][233]: 1
c[232][234]: 1
c[232][235]: 1
c[232][247]: 1
c[232][248]: 1
c[232][249]: 1
c[232][250]: 1
c[232][251]: 1
c[232][265]: 1
c[232][266]: 1
c[232][267]: 1
c[232][283]: 1
c[256][205]: 1
c[256][221]: 1
c[256][222]: 1
c[256][223]: 1
c[256][238]: 1
c[256][239]: 1
c[256][240]: 1
c[256][241]: 1
c[256][255]: 1
c[256][256]: 1
c[256][257]: 1
c[256][258]: 1
c[256][272]: 1
c[256][273]: 1
c[256][274]: 1
c[256][275]: 1
c[269][218]: 1
c[269][236]: 1
c[269][252]: 1
c[269][253]: 1
c[269][254]: 1
c[269][268]: 1
c[269][269]: 1
c[269][270]: 1
c[269][271]: 1
c[269][284]: 1
c[269][285]: 1
c[269][286]: 1
c[269][287]: 1
c[269][288]: 1
c[279][228]: 1
c[279][244]: 1
c[279][245]: 1
c[279][246]: 1
c[279][260]: 1
c[279][261]: 1
c[279][262]: 1
c[279][263]: 1
c[279][264]: 1
c[279][276]: 1
c[279][277]: 1
c[279][278]: 1
c[279][279]: 1
c[279][280]: 1
c[279][281]: 1
c[279][282]: 1
Time used by MIP1: 36337.5 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (16): 4, 12, 51, 59, 67, 106, 114, 149, 153, 161, 186, 208, 232, 256, 269, 279

grid_18x18.txt
Time used by Floyd-Warshall: 678.636 ms
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
Model fingerprint: 0xb0a08afa
Variable types: 0 continuous, 105300 integer (105300 binary)
Coefficient statistics:
  Matrix range     [1e+00, 7e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 206.0000000
Presolve removed 202840 rows and 97864 columns
Presolve time: 0.21s
Presolved: 7436 rows, 7436 columns, 21336 nonzeros
Variable types: 0 continuous, 7436 integer (7436 binary)

Root relaxation: objective 1.631197e+01, 14574 iterations, 1.20 seconds (1.68 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   16.31197    0 4338  206.00000   16.31197  92.1%     -    1s
H    0     0                     201.0000000   16.31197  91.9%     -    1s
H    0     0                      29.0000000   16.31197  43.8%     -    1s
H    0     0                      27.0000000   16.31197  39.6%     -    3s
     0     0   16.31198    0 4872   27.00000   16.31198  39.6%     -    3s
H    0     0                      26.0000000   16.31198  37.3%     -    4s
H    0     0                      25.0000000   16.33923  34.6%     -    6s
     0     0   16.33984    0 5109   25.00000   16.33984  34.6%     -    6s
     0     0   16.33984    0 5133   25.00000   16.33984  34.6%     -    7s
     0     0   16.36904    0 5199   25.00000   16.36904  34.5%     -    8s
H    0     0                      24.0000000   16.36904  31.8%     -   10s
     0     0   16.36904    0 5274   24.00000   16.36904  31.8%     -   10s
     0     0   16.40175    0 5173   24.00000   16.40175  31.7%     -   11s
     0     0   16.40175    0 4968   24.00000   16.40175  31.7%     -   12s
H    0     0                      19.0000000   16.40175  13.7%     -   14s
     0     2   16.40175    0 4967   19.00000   16.40175  13.7%     -   26s
     3     8   17.07784    2 3701   19.00000   16.50168  13.1%  5130   31s
    15    32   17.45455    4 2908   19.00000   16.81959  11.5%  2504   36s
    31    56   17.71429    5 2224   19.00000   16.83331  11.4%  2121   41s
H   61    80                      18.0000000   16.91224  6.04%  1837   44s
   127     3     cutoff    7        18.00000   16.91734  6.01%  1037   46s

Cutting planes:
  Zero half: 25

Explored 160 nodes (158086 simplex iterations) in 46.31 seconds (26.87 work units)
Thread count was 24 (of 8 available processors)

Solution count 9: 18 19 24 ... 206

Optimal solution found (tolerance 1.00e-04)
Best objective 1.800000000000e+01, best bound 1.800000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 18
x[7]: 1
x[14]: 1
x[20]: 1
x[64]: 1
x[89]: 1
x[95]: 1
x[102]: 1
x[108]: 1
x[153]: 1
x[177]: 1
x[183]: 1
x[203]: 1
x[228]: 1
x[252]: 1
x[269]: 1
x[278]: 1
x[310]: 1
x[319]: 1
c[7][4]: 1
c[7][5]: 1
c[7][6]: 1
c[7][7]: 1
c[7][8]: 1
c[7][9]: 1
c[7][23]: 1
c[7][24]: 1
c[7][25]: 1
c[7][26]: 1
c[7][27]: 1
c[7][42]: 1
c[7][43]: 1
c[14][11]: 1
c[14][12]: 1
c[14][13]: 1
c[14][14]: 1
c[14][15]: 1
c[14][16]: 1
c[14][17]: 1
c[14][30]: 1
c[14][31]: 1
c[14][32]: 1
c[14][33]: 1
c[14][34]: 1
c[14][49]: 1
c[14][50]: 1
c[14][51]: 1
c[14][68]: 1
c[20][0]: 1
c[20][1]: 1
c[20][2]: 1
c[20][3]: 1
c[20][18]: 1
c[20][19]: 1
c[20][20]: 1
c[20][21]: 1
c[20][22]: 1
c[20][36]: 1
c[20][37]: 1
c[20][38]: 1
c[20][39]: 1
c[20][40]: 1
c[20][55]: 1
c[20][56]: 1
c[20][57]: 1
c[20][74]: 1
c[64][10]: 1
c[64][28]: 1
c[64][29]: 1
c[64][44]: 1
c[64][45]: 1
c[64][46]: 1
c[64][47]: 1
c[64][48]: 1
c[64][61]: 1
c[64][62]: 1
c[64][63]: 1
c[64][64]: 1
c[64][65]: 1
c[64][66]: 1
c[64][67]: 1
c[64][80]: 1
c[64][81]: 1
c[64][82]: 1
c[64][83]: 1
c[64][84]: 1
c[64][99]: 1
c[64][100]: 1
c[64][101]: 1
c[64][118]: 1
c[89][35]: 1
c[89][52]: 1
c[89][53]: 1
c[89][69]: 1
c[89][70]: 1
c[89][71]: 1
c[89][87]: 1
c[89][88]: 1
c[89][89]: 1
c[89][106]: 1
c[89][107]: 1
c[89][124]: 1
c[89][125]: 1
c[89][143]: 1
c[95][41]: 1
c[95][58]: 1
c[95][59]: 1
c[95][60]: 1
c[95][75]: 1
c[95][76]: 1
c[95][77]: 1
c[95][78]: 1
c[95][79]: 1
c[95][93]: 1
c[95][94]: 1
c[95][95]: 1
c[95][96]: 1
c[95][97]: 1
c[95][98]: 1
c[95][111]: 1
c[95][112]: 1
c[95][113]: 1
c[95][114]: 1
c[95][115]: 1
c[95][130]: 1
c[95][131]: 1
c[95][132]: 1
c[102][85]: 1
c[102][86]: 1
c[102][102]: 1
c[102][103]: 1
c[102][104]: 1
c[102][105]: 1
c[102][119]: 1
c[102][120]: 1
c[102][121]: 1
c[102][122]: 1
c[102][137]: 1
c[102][138]: 1
c[102][139]: 1
c[102][156]: 1
c[108][54]: 1
c[108][72]: 1
c[108][73]: 1
c[108][90]: 1
c[108][91]: 1
c[108][92]: 1
c[108][108]: 1
c[108][109]: 1
c[108][110]: 1
c[108][126]: 1
c[108][127]: 1
c[108][128]: 1
c[108][144]: 1
c[108][145]: 1
c[108][162]: 1
c[153][116]: 1
c[153][117]: 1
c[153][133]: 1
c[153][134]: 1
c[153][135]: 1
c[153][136]: 1
c[153][150]: 1
c[153][151]: 1
c[153][152]: 1
c[153][153]: 1
c[153][154]: 1
c[153][155]: 1
c[153][169]: 1
c[153][170]: 1
c[153][171]: 1
c[153][172]: 1
c[153][173]: 1
c[153][188]: 1
c[153][189]: 1
c[153][190]: 1
c[153][207]: 1
c[177][123]: 1
c[177][140]: 1
c[177][141]: 1
c[177][142]: 1
c[177][157]: 1
c[177][158]: 1
c[177][159]: 1
c[177][160]: 1
c[177][161]: 1
c[177][175]: 1
c[177][176]: 1
c[177][177]: 1
c[177][178]: 1
c[177][179]: 1
c[177][194]: 1
c[177][195]: 1
c[177][196]: 1
c[177][197]: 1
c[177][213]: 1
c[177][214]: 1
c[177][231]: 1
c[183][129]: 1
c[183][146]: 1
c[183][147]: 1
c[183][148]: 1
c[183][163]: 1
c[183][164]: 1
c[183][165]: 1
c[183][180]: 1
c[183][181]: 1
c[183][182]: 1
c[183][183]: 1
c[183][186]: 1
c[183][199]: 1
c[183][200]: 1
c[183][203]: 1
c[183][218]: 1
c[183][237]: 1
c[203][149]: 1
c[203][166]: 1
c[203][167]: 1
c[203][168]: 1
c[203][184]: 1
c[203][185]: 1
c[203][187]: 1
c[203][201]: 1
c[203][202]: 1
c[203][204]: 1
c[203][205]: 1
c[203][206]: 1
c[203][219]: 1
c[203][220]: 1
c[203][221]: 1
c[203][222]: 1
c[203][223]: 1
c[203][238]: 1
c[203][239]: 1
c[203][240]: 1
c[203][257]: 1
c[228][174]: 1
c[228][191]: 1
c[228][192]: 1
c[228][193]: 1
c[228][208]: 1
c[228][209]: 1
c[228][210]: 1
c[228][211]: 1
c[228][212]: 1
c[228][225]: 1
c[228][226]: 1
c[228][227]: 1
c[228][228]: 1
c[228][229]: 1
c[228][230]: 1
c[228][244]: 1
c[228][245]: 1
c[228][246]: 1
c[228][247]: 1
c[228][248]: 1
c[228][263]: 1
c[228][264]: 1
c[228][265]: 1
c[252][198]: 1
c[252][216]: 1
c[252][217]: 1
c[252][234]: 1
c[252][235]: 1
c[252][236]: 1
c[252][252]: 1
c[252][253]: 1
c[252][254]: 1
c[252][255]: 1
c[252][270]: 1
c[252][271]: 1
c[252][272]: 1
c[252][288]: 1
c[252][289]: 1
c[252][306]: 1
c[269][215]: 1
c[269][232]: 1
c[269][233]: 1
c[269][249]: 1
c[269][250]: 1
c[269][251]: 1
c[269][266]: 1
c[269][267]: 1
c[269][268]: 1
c[269][269]: 1
c[269][285]: 1
c[269][286]: 1
c[269][287]: 1
c[269][304]: 1
c[269][305]: 1
c[269][323]: 1
c[278][224]: 1
c[278][241]: 1
c[278][242]: 1
c[278][243]: 1
c[278][258]: 1
c[278][259]: 1
c[278][260]: 1
c[278][261]: 1
c[278][262]: 1
c[278][276]: 1
c[278][277]: 1
c[278][278]: 1
c[278][279]: 1
c[278][280]: 1
c[278][281]: 1
c[278][294]: 1
c[278][295]: 1
c[278][296]: 1
c[278][297]: 1
c[278][298]: 1
c[278][314]: 1
c[278][315]: 1
c[310][256]: 1
c[310][273]: 1
c[310][274]: 1
c[310][275]: 1
c[310][290]: 1
c[310][291]: 1
c[310][292]: 1
c[310][293]: 1
c[310][307]: 1
c[310][308]: 1
c[310][309]: 1
c[310][310]: 1
c[310][311]: 1
c[310][312]: 1
c[310][313]: 1
c[319][282]: 1
c[319][283]: 1
c[319][284]: 1
c[319][299]: 1
c[319][300]: 1
c[319][301]: 1
c[319][302]: 1
c[319][303]: 1
c[319][316]: 1
c[319][317]: 1
c[319][318]: 1
c[319][319]: 1
c[319][320]: 1
c[319][321]: 1
c[319][322]: 1
Time used by MIP1: 47294.5 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (18): 7, 14, 20, 64, 89, 95, 102, 108, 153, 177, 183, 203, 228, 252, 269, 278, 310, 319

grid_19x19.txt
Time used by Floyd-Warshall: 979.77 ms
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
Model fingerprint: 0x5fdcec43
Variable types: 0 continuous, 130682 integer (130682 binary)
Coefficient statistics:
  Matrix range     [1e+00, 7e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 242.0000000
Presolve removed 252661 rows and 122340 columns
Presolve time: 0.28s
Presolved: 8342 rows, 8342 columns, 23943 nonzeros
Variable types: 0 continuous, 8342 integer (8342 binary)

Root relaxation: objective 1.813138e+01, 19050 iterations, 1.75 seconds (2.38 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   18.13138    0 4621  242.00000   18.13138  92.5%     -    2s
H    0     0                     235.0000000   18.13138  92.3%     -    2s
H    0     0                      28.0000000   18.13138  35.2%     -    2s
     0     0   18.13297    0 5038   28.00000   18.13297  35.2%     -    4s
     0     0   18.21934    0 5203   28.00000   18.21934  34.9%     -    8s
     0     0   18.21934    0 5342   28.00000   18.21934  34.9%     -    8s
     0     0   18.23039    0 5360   28.00000   18.23039  34.9%     -   10s
     0     0   18.24925    0 5371   28.00000   18.24925  34.8%     -   12s
     0     0   18.26296    0 5345   28.00000   18.26296  34.8%     -   14s
     0     0   18.26296    0 5110   28.00000   18.26296  34.8%     -   14s
H    0     0                      23.0000000   18.26296  20.6%     -   18s
     0     2   18.26296    0 5110   23.00000   18.26296  20.6%     -   27s
     1     4   18.26296    1 4656   23.00000   18.26296  20.6%  5493   30s
     3     8   18.26296    2 4212   23.00000   18.26296  20.6%  3671   36s
     7    16   18.36254    3 4827   23.00000   18.26617  20.6%  4593   41s
    15    32   18.37461    4 5095   23.00000   18.36271  20.2%  4130   46s
    31    56   18.56439    5 4585   23.00000   18.37468  20.1%  3823   61s
    55    80   18.57477    6 4056   23.00000   18.55347  19.3%  5184   66s
H   68    80                      22.0000000   18.55347  15.7%  4438   66s
    79   104   19.62500    7 2199   22.00000   18.55347  15.7%  4085   71s
   127   152   20.29665    9 1941   22.00000   18.55347  15.7%  3125  115s
H  129   152                      21.0000000   18.55347  11.7%  3081  115s
H  135   152                      19.9999998   18.55347  7.23%  2990  115s
grid_20x20.txt
Time used by Floyd-Warshall: 1388.15 ms
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
Model fingerprint: 0x48469040
Variable types: 0 continuous, 160400 integer (160400 binary)
Coefficient statistics:
  Matrix range     [1e+00, 8e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 245.0000000
Presolve removed 311100 rows and 151100 columns
Presolve time: 0.32s
Presolved: 9300 rows, 9300 columns, 26700 nonzeros
Variable types: 0 continuous, 9300 integer (9300 binary)

Root relaxation: objective 1.991655e+01, 20638 iterations, 2.41 seconds (3.23 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   19.91655    0 6025  245.00000   19.91655  91.9%     -    3s
H    0     0                     244.0000000   19.91655  91.8%     -    3s
H    0     0                      31.0000000   19.91655  35.8%     -    3s
     0     0   19.91705    0 6052   31.00000   19.91705  35.8%     -    5s
     0     0   19.91705    0 6053   31.00000   19.91705  35.8%     -    7s
     0     0   19.92310    0 5976   31.00000   19.92310  35.7%     -   10s
     0     0   19.92458    0 5994   31.00000   19.92458  35.7%     -   10s
     0     0   19.92950    0 6020   31.00000   19.92950  35.7%     -   13s
     0     0   19.92952    0 6020   31.00000   19.92952  35.7%     -   16s
     0     0   19.95125    0 6029   31.00000   19.95125  35.6%     -   19s
     0     0   19.95125    0 6029   31.00000   19.95125  35.6%     -   20s
H    0     0                      25.0000000   19.95125  20.2%     -   22s
     0     2   19.95125    0 5988   25.00000   19.95125  20.2%     -   39s
     1     4   19.97922    1 7292   25.00000   19.95125  20.2%  7214   42s
     3     8   19.98824    2 7581   25.00000   19.98031  20.1%  4084   46s
    15    32   20.31523    4 4868   25.00000   20.05620  19.8%  2530   55s
    31    56   22.23877    5 3740   25.00000   20.28793  18.8%  2666   63s
H   44    56                      22.0000000   20.28832  7.78%  2273   63s
    55    76     cutoff    6        22.00000   20.32207  7.63%  2279   68s
    80    88   20.59739    6 4494   22.00000   20.37664  7.38%  2058   72s
   103   102   20.80176    7 2770   22.00000   20.37664  7.38%  1950   84s
H  116   102                      21.0000000   20.37664  2.97%  1898   84s

Cutting planes:
  Zero half: 6

Explored 127 nodes (278728 simplex iterations) in 84.09 seconds (50.05 work units)
Thread count was 24 (of 8 available processors)

Solution count 6: 21 22 25 ... 245

Optimal solution found (tolerance 1.00e-04)
Best objective 2.100000000000e+01, best bound 2.100000000000e+01, gap 0.0000%
done.
Success! Status: 2.
Objective value: 21
x[3]: 1
x[9]: 1
x[17]: 1
x[73]: 1
x[80]: 1
x[86]: 1
x[99]: 1
x[150]: 1
x[156]: 1
x[163]: 1
x[227]: 1
x[233]: 1
x[239]: 1
x[240]: 1
x[304]: 1
x[310]: 1
x[316]: 1
x[361]: 1
x[378]: 1
x[387]: 1
x[393]: 1
c[3][0]: 1
c[3][1]: 1
c[3][2]: 1
c[3][3]: 1
c[3][4]: 1
c[3][5]: 1
c[3][6]: 1
c[3][21]: 1
c[3][22]: 1
c[3][23]: 1
c[3][24]: 1
c[3][25]: 1
c[3][42]: 1
c[3][43]: 1
c[3][44]: 1
c[3][63]: 1
c[9][7]: 1
c[9][8]: 1
c[9][9]: 1
c[9][10]: 1
c[9][11]: 1
c[9][12]: 1
c[9][27]: 1
c[9][28]: 1
c[9][29]: 1
c[9][30]: 1
c[9][31]: 1
c[9][48]: 1
c[9][49]: 1
c[9][50]: 1
c[9][69]: 1
c[17][14]: 1
c[17][15]: 1
c[17][16]: 1
c[17][17]: 1
c[17][18]: 1
c[17][19]: 1
c[17][35]: 1
c[17][36]: 1
c[17][37]: 1
c[17][38]: 1
c[17][56]: 1
c[17][57]: 1
c[17][77]: 1
c[73][13]: 1
c[73][32]: 1
c[73][33]: 1
c[73][34]: 1
c[73][51]: 1
c[73][52]: 1
c[73][53]: 1
c[73][54]: 1
c[73][55]: 1
c[73][70]: 1
c[73][71]: 1
c[73][72]: 1
c[73][73]: 1
c[73][74]: 1
c[73][75]: 1
c[73][76]: 1
c[73][91]: 1
c[73][92]: 1
c[73][93]: 1
c[73][94]: 1
c[73][95]: 1
c[73][112]: 1
c[73][113]: 1
c[73][114]: 1
c[73][133]: 1
c[80][20]: 1
c[80][40]: 1
c[80][41]: 1
c[80][60]: 1
c[80][61]: 1
c[80][62]: 1
c[80][80]: 1
c[80][81]: 1
c[80][82]: 1
c[80][100]: 1
c[80][101]: 1
c[80][102]: 1
c[80][120]: 1
c[80][121]: 1
c[80][140]: 1
c[86][26]: 1
c[86][45]: 1
c[86][46]: 1
c[86][47]: 1
c[86][64]: 1
c[86][65]: 1
c[86][66]: 1
c[86][67]: 1
c[86][68]: 1
c[86][83]: 1
c[86][84]: 1
c[86][85]: 1
c[86][86]: 1
c[86][87]: 1
c[86][88]: 1
c[86][89]: 1
c[86][104]: 1
c[86][105]: 1
c[86][106]: 1
c[86][107]: 1
c[86][108]: 1
c[86][125]: 1
c[86][126]: 1
c[86][127]: 1
c[86][146]: 1
c[99][39]: 1
c[99][58]: 1
c[99][59]: 1
c[99][78]: 1
c[99][79]: 1
c[99][97]: 1
c[99][98]: 1
c[99][99]: 1
c[99][117]: 1
c[99][118]: 1
c[99][119]: 1
c[99][138]: 1
c[99][139]: 1
c[99][159]: 1
c[150][90]: 1
c[150][109]: 1
c[150][110]: 1
c[150][111]: 1
c[150][128]: 1
c[150][129]: 1
c[150][130]: 1
c[150][131]: 1
c[150][132]: 1
c[150][147]: 1
c[150][148]: 1
c[150][149]: 1
c[150][150]: 1
c[150][151]: 1
c[150][152]: 1
c[150][153]: 1
c[150][168]: 1
c[150][169]: 1
c[150][170]: 1
c[150][171]: 1
c[150][172]: 1
c[150][189]: 1
c[150][190]: 1
c[150][191]: 1
c[150][210]: 1
c[156][96]: 1
c[156][115]: 1
c[156][116]: 1
c[156][134]: 1
c[156][135]: 1
c[156][136]: 1
c[156][137]: 1
c[156][154]: 1
c[156][155]: 1
c[156][156]: 1
c[156][157]: 1
c[156][158]: 1
c[156][174]: 1
c[156][175]: 1
c[156][176]: 1
c[156][177]: 1
c[156][178]: 1
c[156][195]: 1
c[156][196]: 1
c[156][197]: 1
c[156][216]: 1
c[163][103]: 1
c[163][122]: 1
c[163][123]: 1
c[163][124]: 1
c[163][141]: 1
c[163][142]: 1
c[163][143]: 1
c[163][144]: 1
c[163][145]: 1
c[163][160]: 1
c[163][161]: 1
c[163][162]: 1
c[163][163]: 1
c[163][164]: 1
c[163][165]: 1
c[163][166]: 1
c[163][181]: 1
c[163][182]: 1
c[163][183]: 1
c[163][184]: 1
c[163][185]: 1
c[163][202]: 1
c[163][203]: 1
c[163][204]: 1
c[163][223]: 1
c[227][167]: 1
c[227][186]: 1
c[227][187]: 1
c[227][188]: 1
c[227][205]: 1
c[227][206]: 1
c[227][207]: 1
c[227][208]: 1
c[227][209]: 1
c[227][224]: 1
c[227][225]: 1
c[227][226]: 1
c[227][227]: 1
c[227][228]: 1
c[227][229]: 1
c[227][230]: 1
c[227][245]: 1
c[227][246]: 1
c[227][247]: 1
c[227][248]: 1
c[227][249]: 1
c[227][266]: 1
c[227][267]: 1
c[227][268]: 1
c[227][287]: 1
c[233][173]: 1
c[233][192]: 1
c[233][193]: 1
c[233][194]: 1
c[233][211]: 1
c[233][212]: 1
c[233][213]: 1
c[233][214]: 1
c[233][215]: 1
c[233][231]: 1
c[233][232]: 1
c[233][233]: 1
c[233][234]: 1
c[233][235]: 1
c[233][251]: 1
c[233][252]: 1
c[233][253]: 1
c[233][254]: 1
c[233][255]: 1
c[233][272]: 1
c[233][273]: 1
c[233][274]: 1
c[233][293]: 1
c[239][179]: 1
c[239][198]: 1
c[239][199]: 1
c[239][217]: 1
c[239][218]: 1
c[239][219]: 1
c[239][236]: 1
c[239][237]: 1
c[239][238]: 1
c[239][239]: 1
c[239][257]: 1
c[239][258]: 1
c[239][259]: 1
c[239][278]: 1
c[239][279]: 1
c[239][299]: 1
c[240][180]: 1
c[240][200]: 1
c[240][201]: 1
c[240][220]: 1
c[240][221]: 1
c[240][222]: 1
c[240][240]: 1
c[240][241]: 1
c[240][242]: 1
c[240][243]: 1
c[240][260]: 1
c[240][261]: 1
c[240][262]: 1
c[240][280]: 1
c[240][281]: 1
c[240][300]: 1
c[304][244]: 1
c[304][263]: 1
c[304][264]: 1
c[304][265]: 1
c[304][282]: 1
c[304][283]: 1
c[304][284]: 1
c[304][285]: 1
c[304][286]: 1
c[304][301]: 1
c[304][302]: 1
c[304][303]: 1
c[304][304]: 1
c[304][305]: 1
c[304][306]: 1
c[304][307]: 1
c[304][323]: 1
c[304][324]: 1
c[304][325]: 1
c[304][326]: 1
c[304][343]: 1
c[304][344]: 1
c[304][345]: 1
c[310][250]: 1
c[310][269]: 1
c[310][270]: 1
c[310][271]: 1
c[310][288]: 1
c[310][289]: 1
c[310][290]: 1
c[310][291]: 1
c[310][292]: 1
c[310][308]: 1
c[310][309]: 1
c[310][310]: 1
c[310][311]: 1
c[310][312]: 1
c[310][328]: 1
c[310][329]: 1
c[310][330]: 1
c[310][331]: 1
c[310][332]: 1
c[310][349]: 1
c[310][350]: 1
c[310][351]: 1
c[310][370]: 1
c[316][256]: 1
c[316][275]: 1
c[316][276]: 1
c[316][277]: 1
c[316][294]: 1
c[316][295]: 1
c[316][296]: 1
c[316][297]: 1
c[316][298]: 1
c[316][313]: 1
c[316][314]: 1
c[316][315]: 1
c[316][316]: 1
c[316][317]: 1
c[316][319]: 1
c[316][334]: 1
c[316][335]: 1
c[316][336]: 1
c[316][355]: 1
c[361][320]: 1
c[361][321]: 1
c[361][322]: 1
c[361][340]: 1
c[361][341]: 1
c[361][342]: 1
c[361][360]: 1
c[361][361]: 1
c[361][362]: 1
c[361][363]: 1
c[361][364]: 1
c[361][380]: 1
c[361][381]: 1
c[361][382]: 1
c[361][383]: 1
c[378][318]: 1
c[378][337]: 1
c[378][338]: 1
c[378][339]: 1
c[378][356]: 1
c[378][357]: 1
c[378][358]: 1
c[378][359]: 1
c[378][376]: 1
c[378][377]: 1
c[378][378]: 1
c[378][379]: 1
c[378][396]: 1
c[378][397]: 1
c[378][398]: 1
c[378][399]: 1
c[387][327]: 1
c[387][346]: 1
c[387][347]: 1
c[387][348]: 1
c[387][365]: 1
c[387][366]: 1
c[387][367]: 1
c[387][368]: 1
c[387][369]: 1
c[387][384]: 1
c[387][385]: 1
c[387][386]: 1
c[387][387]: 1
c[387][388]: 1
c[387][389]: 1
c[393][333]: 1
c[393][352]: 1
c[393][353]: 1
c[393][354]: 1
c[393][371]: 1
c[393][372]: 1
c[393][373]: 1
c[393][374]: 1
c[393][375]: 1
c[393][390]: 1
c[393][391]: 1
c[393][392]: 1
c[393][393]: 1
c[393][394]: 1
c[393][395]: 1
Time used by MIP1: 85667.6 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (21): 3, 9, 17, 73, 80, 86, 99, 150, 156, 163, 227, 233, 239, 240, 304, 310, 316, 361, 378, 387, 393

grid_4x4.txt
Time used by Floyd-Warshall: 0.182 ms
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
Model fingerprint: 0x4a19da02
Variable types: 0 continuous, 272 integer (272 binary)
Coefficient statistics:
  Matrix range     [1e+00, 1e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 10.0000000
Presolve removed 316 rows and 60 columns
Presolve time: 0.00s
Presolved: 212 rows, 212 columns, 588 nonzeros
Variable types: 0 continuous, 212 integer (212 binary)

Root relaxation: objective 1.333333e+00, 185 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    1.33333    0   52   10.00000    1.33333  86.7%     -    0s
H    0     0                       9.0000000    1.33333  85.2%     -    0s
H    0     0                       2.0000000    1.33333  33.3%     -    0s
     0     0    1.33333    0   52    2.00000    1.33333  33.3%     -    0s

Explored 1 nodes (334 simplex iterations) in 0.01 seconds (0.00 work units)
Thread count was 24 (of 8 available processors)

Solution count 3: 2 9 10 

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+00, best bound 2.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 2
x[5]: 1
x[10]: 1
c[5][0]: 1
c[5][5]: 1
c[5][6]: 1
c[5][7]: 1
c[5][8]: 1
c[5][9]: 1
c[5][10]: 1
c[5][11]: 1
c[5][12]: 1
c[5][13]: 1
c[5][14]: 1
c[10][1]: 1
c[10][2]: 1
c[10][3]: 1
c[10][4]: 1
c[10][15]: 1
Time used by MIP1: 30.552 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (2): 5, 10

grid_5x5.txt
Time used by Floyd-Warshall: 0.41 ms
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
Model fingerprint: 0xdfc6ab9d
Variable types: 0 continuous, 650 integer (650 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 16.0000000
Presolve removed 885 rows and 260 columns
Presolve time: 0.00s
Presolved: 390 rows, 390 columns, 1095 nonzeros
Variable types: 0 continuous, 390 integer (390 binary)

Root relaxation: objective 2.000000e+00, 307 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

*    0     0               0       2.0000000    2.00000  0.00%     -    0s

Explored 1 nodes (477 simplex iterations) in 0.01 seconds (0.00 work units)
Thread count was 24 (of 8 available processors)

Solution count 2: 2 16 

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+00, best bound 2.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 2
x[11]: 1
x[13]: 1
c[11][0]: 1
c[11][1]: 1
c[11][5]: 1
c[11][6]: 1
c[11][7]: 1
c[11][10]: 1
c[11][11]: 1
c[11][13]: 1
c[11][15]: 1
c[11][18]: 1
c[11][20]: 1
c[11][21]: 1
c[11][22]: 1
c[13][2]: 1
c[13][3]: 1
c[13][4]: 1
c[13][8]: 1
c[13][9]: 1
c[13][12]: 1
c[13][14]: 1
c[13][16]: 1
c[13][17]: 1
c[13][19]: 1
c[13][23]: 1
c[13][24]: 1
Time used by MIP1: 22.278 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (2): 11, 13

grid_6x6.txt
Time used by Floyd-Warshall: 1.221 ms
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
Model fingerprint: 0x6a3f7fcf
Variable types: 0 continuous, 1332 integer (1332 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 26.0000000
Presolve removed 2008 rows and 712 columns
Presolve time: 0.01s
Presolved: 620 rows, 620 columns, 1752 nonzeros
Variable types: 0 continuous, 620 integer (620 binary)

Root relaxation: objective 2.727273e+00, 574 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    2.72727    0  230   26.00000    2.72727  89.5%     -    0s
H    0     0                      24.0000000    2.72727  88.6%     -    0s
H    0     0                       4.0000000    2.72727  31.8%     -    0s
     0     0    2.80000    0  279    4.00000    2.80000  30.0%     -    0s
H    0     0                       3.0000000    2.80000  6.67%     -    0s
     0     0    2.80000    0  279    3.00000    2.80000  6.67%     -    0s

Cutting planes:
  Zero half: 2

Explored 1 nodes (1093 simplex iterations) in 0.35 seconds (0.13 work units)
Thread count was 24 (of 8 available processors)

Solution count 4: 3 4 24 26 

Optimal solution found (tolerance 1.00e-04)
Best objective 3.000000000000e+00, best bound 3.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 3
x[13]: 1
x[16]: 1
x[33]: 1
c[13][0]: 1
c[13][1]: 1
c[13][2]: 1
c[13][6]: 1
c[13][7]: 1
c[13][8]: 1
c[13][9]: 1
c[13][12]: 1
c[13][13]: 1
c[13][14]: 1
c[13][15]: 1
c[13][16]: 1
c[13][18]: 1
c[13][19]: 1
c[13][20]: 1
c[13][21]: 1
c[13][24]: 1
c[13][25]: 1
c[13][26]: 1
c[13][31]: 1
c[16][3]: 1
c[16][4]: 1
c[16][5]: 1
c[16][10]: 1
c[16][11]: 1
c[16][17]: 1
c[16][22]: 1
c[16][23]: 1
c[16][27]: 1
c[16][28]: 1
c[16][29]: 1
c[16][34]: 1
c[33][30]: 1
c[33][32]: 1
c[33][33]: 1
c[33][35]: 1
Time used by MIP1: 365.082 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (3): 13, 16, 33

grid_7x7.txt
Time used by Floyd-Warshall: 3.142 ms
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
Model fingerprint: 0x292bc9ad
Variable types: 0 continuous, 2450 integer (2450 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 34.0000000
Presolve removed 3949 rows and 1548 columns
Presolve time: 0.01s
Presolved: 902 rows, 902 columns, 2559 nonzeros
Variable types: 0 continuous, 902 integer (902 binary)

Root relaxation: objective 3.428571e+00, 846 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    3.42857    0  313   34.00000    3.42857  89.9%     -    0s
H    0     0                      29.0000000    3.42857  88.2%     -    0s
H    0     0                       5.0000000    3.42857  31.4%     -    0s
H    0     0                       4.0000000    3.42857  14.3%     -    0s

Cutting planes:
  Gomory: 1
  Zero half: 9

Explored 1 nodes (2052 simplex iterations) in 0.09 seconds (0.05 work units)
Thread count was 24 (of 8 available processors)

Solution count 4: 4 5 29 34 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+00, best bound 4.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 4
x[4]: 1
x[19]: 1
x[21]: 1
x[46]: 1
c[4][1]: 1
c[4][2]: 1
c[4][3]: 1
c[4][9]: 1
c[4][17]: 1
c[4][18]: 1
c[4][25]: 1
c[19][4]: 1
c[19][5]: 1
c[19][6]: 1
c[19][10]: 1
c[19][11]: 1
c[19][12]: 1
c[19][13]: 1
c[19][19]: 1
c[19][20]: 1
c[19][26]: 1
c[19][27]: 1
c[19][34]: 1
c[19][40]: 1
c[21][0]: 1
c[21][7]: 1
c[21][8]: 1
c[21][14]: 1
c[21][15]: 1
c[21][16]: 1
c[21][21]: 1
c[21][22]: 1
c[21][23]: 1
c[21][24]: 1
c[21][28]: 1
c[21][29]: 1
c[21][30]: 1
c[21][35]: 1
c[21][36]: 1
c[21][42]: 1
c[46][31]: 1
c[46][32]: 1
c[46][33]: 1
c[46][37]: 1
c[46][38]: 1
c[46][39]: 1
c[46][41]: 1
c[46][43]: 1
c[46][44]: 1
c[46][45]: 1
c[46][46]: 1
c[46][47]: 1
c[46][48]: 1
Time used by MIP1: 111.799 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (4): 4, 19, 21, 46

grid_8x8.txt
Time used by Floyd-Warshall: 9.5 ms
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
Model fingerprint: 0xbb1318d1
Variable types: 0 continuous, 4160 integer (4160 binary)
Coefficient statistics:
  Matrix range     [1e+00, 3e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 42.0000000
Presolve removed 7020 rows and 2924 columns
Presolve time: 0.01s
Presolved: 1236 rows, 1236 columns, 3516 nonzeros
Variable types: 0 continuous, 1236 integer (1236 binary)

Root relaxation: objective 4.000000e+00, 1043 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

*    0     0               0       4.0000000    4.00000  0.00%     -    0s

Explored 1 nodes (1043 simplex iterations) in 0.03 seconds (0.02 work units)
Thread count was 24 (of 8 available processors)

Solution count 2: 4 42 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+00, best bound 4.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 4
x[4]: 1
x[24]: 1
x[39]: 1
x[59]: 1
c[4][1]: 1
c[4][2]: 1
c[4][3]: 1
c[4][4]: 1
c[4][5]: 1
c[4][6]: 1
c[4][7]: 1
c[4][10]: 1
c[4][11]: 1
c[4][12]: 1
c[4][13]: 1
c[4][14]: 1
c[4][19]: 1
c[4][20]: 1
c[4][21]: 1
c[4][28]: 1
c[24][0]: 1
c[24][8]: 1
c[24][9]: 1
c[24][16]: 1
c[24][17]: 1
c[24][18]: 1
c[24][24]: 1
c[24][25]: 1
c[24][26]: 1
c[24][27]: 1
c[24][32]: 1
c[24][33]: 1
c[24][34]: 1
c[24][40]: 1
c[24][41]: 1
c[24][48]: 1
c[39][15]: 1
c[39][22]: 1
c[39][23]: 1
c[39][29]: 1
c[39][30]: 1
c[39][31]: 1
c[39][36]: 1
c[39][37]: 1
c[39][38]: 1
c[39][39]: 1
c[39][45]: 1
c[39][46]: 1
c[39][47]: 1
c[39][54]: 1
c[39][55]: 1
c[39][63]: 1
c[59][35]: 1
c[59][42]: 1
c[59][43]: 1
c[59][44]: 1
c[59][49]: 1
c[59][50]: 1
c[59][51]: 1
c[59][52]: 1
c[59][53]: 1
c[59][56]: 1
c[59][57]: 1
c[59][58]: 1
c[59][59]: 1
c[59][60]: 1
c[59][61]: 1
c[59][62]: 1
Time used by MIP1: 71.468 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (4): 4, 24, 39, 59

grid_9x9.txt
Time used by Floyd-Warshall: 15.362 ms
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
Model fingerprint: 0x78340ec8
Variable types: 0 continuous, 6642 integer (6642 binary)
Coefficient statistics:
  Matrix range     [1e+00, 3e+01]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 6e+00]
Found heuristic solution: objective 52.0000000
Presolve removed 11581 rows and 5020 columns
Presolve time: 0.02s
Presolved: 1622 rows, 1622 columns, 4623 nonzeros
Variable types: 0 continuous, 1622 integer (1622 binary)

Root relaxation: objective 5.130435e+00, 1981 iterations, 0.04 seconds (0.04 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    5.13043    0  460   52.00000    5.13043  90.1%     -    0s
H    0     0                      51.0000000    5.13043  89.9%     -    0s
H    0     0                       9.0000000    5.13043  43.0%     -    0s
H    0     0                       8.0000000    5.13559  35.8%     -    0s
     0     0    5.33333    0  259    8.00000    5.33333  33.3%     -    0s
H    0     0                       6.0000000    5.50000  8.33%     -    0s
     0     0    5.50000    0  346    6.00000    5.50000  8.33%     -    0s

Cutting planes:
  Gomory: 2
  Zero half: 7

Explored 1 nodes (4137 simplex iterations) in 0.59 seconds (0.27 work units)
Thread count was 24 (of 8 available processors)

Solution count 5: 6 8 9 ... 52

Optimal solution found (tolerance 1.00e-04)
Best objective 6.000000000000e+00, best bound 6.000000000000e+00, gap 0.0000%
done.
Success! Status: 2.
Objective value: 6
x[16]: 1
x[19]: 1
x[22]: 1
x[55]: 1
x[61]: 1
x[74]: 1
c[16][5]: 1
c[16][6]: 1
c[16][7]: 1
c[16][8]: 1
c[16][13]: 1
c[16][16]: 1
c[16][17]: 1
c[16][23]: 1
c[16][24]: 1
c[16][25]: 1
c[16][26]: 1
c[16][33]: 1
c[16][34]: 1
c[16][35]: 1
c[19][0]: 1
c[19][1]: 1
c[19][2]: 1
c[19][9]: 1
c[19][10]: 1
c[19][11]: 1
c[19][18]: 1
c[19][20]: 1
c[19][22]: 1
c[19][27]: 1
c[19][29]: 1
c[19][30]: 1
c[19][37]: 1
c[19][38]: 1
c[19][46]: 1
c[22][3]: 1
c[22][4]: 1
c[22][12]: 1
c[22][14]: 1
c[22][15]: 1
c[22][19]: 1
c[22][21]: 1
c[22][31]: 1
c[22][32]: 1
c[22][39]: 1
c[22][40]: 1
c[22][41]: 1
c[22][49]: 1
c[55][28]: 1
c[55][36]: 1
c[55][45]: 1
c[55][47]: 1
c[55][48]: 1
c[55][54]: 1
c[55][55]: 1
c[55][66]: 1
c[55][72]: 1
c[61][42]: 1
c[61][43]: 1
c[61][44]: 1
c[61][50]: 1
c[61][51]: 1
c[61][52]: 1
c[61][53]: 1
c[61][58]: 1
c[61][59]: 1
c[61][60]: 1
c[61][61]: 1
c[61][62]: 1
c[61][68]: 1
c[61][69]: 1
c[61][70]: 1
c[61][71]: 1
c[61][78]: 1
c[61][79]: 1
c[61][80]: 1
c[74][56]: 1
c[74][57]: 1
c[74][63]: 1
c[74][64]: 1
c[74][65]: 1
c[74][67]: 1
c[74][73]: 1
c[74][74]: 1
c[74][75]: 1
c[74][76]: 1
c[74][77]: 1
Time used by MIP1: 660.54 ms
Solution validity by algorithm: 1
Solution validity by checker: 1
Computed solution (6): 16, 19, 22, 55, 61, 74

