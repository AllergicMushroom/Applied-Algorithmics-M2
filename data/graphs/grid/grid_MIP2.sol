 
grid_10x10.txt
Time used by Floyd-Warshall: 25.496 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 212 rows, 100 columns and 3932 nonzeros
Model fingerprint: 0xbf88250f
Variable types: 0 continuous, 100 integer (100 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 8.0000000
Presolve removed 152 rows and 12 columns
Presolve time: 0.00s
Presolved: 60 rows, 88 columns, 1028 nonzeros
Variable types: 0 continuous, 88 integer (88 binary)

Root relaxation: objective 6.066667e+00, 151 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    6.06667    0   46    8.00000    6.06667  24.2%     -    0s
     0     0    6.06667    0   46    8.00000    6.06667  24.2%     -    0s
H    0     0                       7.0000000    6.06667  13.3%     -    0s
     0     0    6.06667    0   46    7.00000    6.06667  13.3%     -    0s

Cutting planes:
  Zero half: 1

Explored 1 nodes (161 simplex iterations) in 0.02 seconds (0.01 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 7 8 

Optimal solution found (tolerance 1.00e-04)
Best objective 7.000000000000e+00, best bound 7.000000000000e+00, gap 0.0000%

User-callback calls 260, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 7
x[5]: 1
x[12]: 1
x[29]: 1
x[50]: 1
x[55]: 1
x[78]: 1
x[93]: 1
Time used by MIP2: 44.25 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (7): 5, 12, 29, 50, 55, 78, 93

grid_11x11.txt
Time used by Floyd-Warshall: 42.344 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 254 rows, 121 columns and 4870 nonzeros
Model fingerprint: 0x6c7cc61d
Variable types: 0 continuous, 121 integer (121 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 12.0000000
Presolve removed 173 rows and 12 columns
Presolve time: 0.00s
Presolved: 81 rows, 109 columns, 1497 nonzeros
Variable types: 0 continuous, 109 integer (109 binary)

Root relaxation: objective 6.777778e+00, 164 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    6.77778    0   47   12.00000    6.77778  43.5%     -    0s
H    0     0                       9.0000000    6.77778  24.7%     -    0s
     0     0    6.86364    0   38    9.00000    6.86364  23.7%     -    0s
     0     0    6.91406    0   49    9.00000    6.91406  23.2%     -    0s
     0     0    6.95677    0   51    9.00000    6.95677  22.7%     -    0s
H    0     0                       7.0000000    6.95677  0.62%     -    0s
     0     0    6.95677    0   51    7.00000    6.95677  0.62%     -    0s

Cutting planes:
  Gomory: 1
  MIR: 2
  Zero half: 7

Explored 1 nodes (301 simplex iterations) in 0.03 seconds (0.02 work units)
Thread count was 1 (of 8 available processors)

Solution count 3: 7 9 12 

Optimal solution found (tolerance 1.00e-04)
Best objective 7.000000000000e+00, best bound 7.000000000000e+00, gap 0.0000%

User-callback calls 278, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 7
x[7]: 1
x[13]: 1
x[54]: 1
x[60]: 1
x[66]: 1
x[107]: 1
x[113]: 1
Time used by MIP2: 65.729 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (7): 7, 13, 54, 60, 66, 107, 113

grid_12x12.txt
Time used by Floyd-Warshall: 68.517 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 300 rows, 144 columns and 5908 nonzeros
Model fingerprint: 0x68a37dfb
Variable types: 0 continuous, 144 integer (144 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 11.0000000
Presolve removed 196 rows and 12 columns
Presolve time: 0.01s
Presolved: 104 rows, 132 columns, 2016 nonzeros
Variable types: 0 continuous, 132 integer (132 binary)

Root relaxation: objective 8.202247e+00, 329 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    8.20225    0   74   11.00000    8.20225  25.4%     -    0s
     0     0    8.28367    0   79   11.00000    8.28367  24.7%     -    0s
     0     0    8.28708    0   78   11.00000    8.28708  24.7%     -    0s
     0     0    8.30117    0   79   11.00000    8.30117  24.5%     -    0s
H    0     0                      10.0000000    8.30117  17.0%     -    0s
     0     0    8.32137    0   79   10.00000    8.32137  16.8%     -    0s
     0     0    8.32602    0   78   10.00000    8.32602  16.7%     -    0s
     0     0    8.32646    0   80   10.00000    8.32646  16.7%     -    0s
     0     0    8.33987    0   76   10.00000    8.33987  16.6%     -    0s
     0     0    8.34039    0   74   10.00000    8.34039  16.6%     -    0s
     0     0    8.34217    0   76   10.00000    8.34217  16.6%     -    0s
     0     0    8.34273    0   77   10.00000    8.34273  16.6%     -    0s
     0     0    8.34770    0   79   10.00000    8.34770  16.5%     -    0s
     0     0    8.34856    0   81   10.00000    8.34856  16.5%     -    0s
     0     0    8.35443    0   83   10.00000    8.35443  16.5%     -    0s
     0     0    8.36077    0   85   10.00000    8.36077  16.4%     -    0s
     0     0    8.36899    0   92   10.00000    8.36899  16.3%     -    0s
     0     0    8.37670    0   80   10.00000    8.37670  16.2%     -    0s
     0     0    8.37803    0   79   10.00000    8.37803  16.2%     -    0s
     0     0    8.37992    0   81   10.00000    8.37992  16.2%     -    0s
     0     0    8.38069    0   83   10.00000    8.38069  16.2%     -    0s
     0     0    8.38285    0   81   10.00000    8.38285  16.2%     -    0s
     0     0    8.38292    0   82   10.00000    8.38292  16.2%     -    0s
     0     0    8.38343    0   83   10.00000    8.38343  16.2%     -    0s
     0     0    8.38677    0   83   10.00000    8.38677  16.1%     -    0s
     0     0    8.38723    0   87   10.00000    8.38723  16.1%     -    0s
     0     0    8.38835    0   88   10.00000    8.38835  16.1%     -    0s
     0     0    8.38857    0   89   10.00000    8.38857  16.1%     -    0s
     0     0    8.38861    0   90   10.00000    8.38861  16.1%     -    0s
     0     0    8.38896    0   82   10.00000    8.38896  16.1%     -    0s
     0     0    8.38929    0   87   10.00000    8.38929  16.1%     -    0s
     0     0    8.39024    0   85   10.00000    8.39024  16.1%     -    0s
     0     0    8.39024    0   79   10.00000    8.39024  16.1%     -    0s
     0     0    8.39024    0   78   10.00000    8.39024  16.1%     -    0s
     0     0    8.39024    0   78   10.00000    8.39024  16.1%     -    0s
H    0     0                       9.0000000    8.39024  6.78%     -    0s
     0     0    8.39024    0   78    9.00000    8.39024  6.78%     -    0s

Cutting planes:
  MIR: 20
  Zero half: 15

Explored 1 nodes (1527 simplex iterations) in 0.24 seconds (0.24 work units)
Thread count was 1 (of 8 available processors)

Solution count 3: 9 10 11 

Optimal solution found (tolerance 1.00e-04)
Best objective 9.000000000000e+00, best bound 9.000000000000e+00, gap 0.0000%

User-callback calls 531, time in user-callback 0.01 sec
done.
Success! Status: 2.
Objective value: 9
x[2]: 1
x[31]: 1
x[34]: 1
x[60]: 1
x[64]: 1
x[81]: 1
x[118]: 1
x[122]: 1
x[126]: 1
Time used by MIP2: 303.579 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (9): 2, 31, 34, 60, 64, 81, 118, 122, 126

grid_13x13.txt
Time used by Floyd-Warshall: 116.158 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 350 rows, 169 columns and 7046 nonzeros
Model fingerprint: 0x135abce1
Variable types: 0 continuous, 169 integer (169 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 13.0000000
Presolve removed 221 rows and 12 columns
Presolve time: 0.01s
Presolved: 129 rows, 157 columns, 2585 nonzeros
Variable types: 0 continuous, 157 integer (157 binary)

Root relaxation: objective 9.344077e+00, 375 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    9.34408    0   98   13.00000    9.34408  28.1%     -    0s
H    0     0                      12.0000000    9.34408  22.1%     -    0s
     0     0    9.37685    0   84   12.00000    9.37685  21.9%     -    0s
H    0     0                      11.0000000    9.37685  14.8%     -    0s
     0     0    9.38734    0   90   11.00000    9.38734  14.7%     -    0s
     0     0    9.40259    0   96   11.00000    9.40259  14.5%     -    0s
     0     0    9.40873    0   91   11.00000    9.40873  14.5%     -    0s
     0     0    9.41600    0   91   11.00000    9.41600  14.4%     -    0s
     0     0    9.42830    0   91   11.00000    9.42830  14.3%     -    0s
     0     0    9.43476    0   97   11.00000    9.43476  14.2%     -    0s
     0     0    9.44121    0   94   11.00000    9.44121  14.2%     -    0s
     0     0    9.44685    0   96   11.00000    9.44685  14.1%     -    0s
     0     0    9.44894    0   99   11.00000    9.44894  14.1%     -    0s
     0     0    9.45153    0  104   11.00000    9.45153  14.1%     -    0s
     0     0    9.45776    0  106   11.00000    9.45776  14.0%     -    0s
     0     0    9.45979    0  113   11.00000    9.45979  14.0%     -    0s
     0     0    9.46002    0  109   11.00000    9.46002  14.0%     -    0s
     0     0    9.46065    0  114   11.00000    9.46065  14.0%     -    0s
     0     0    9.46272    0  113   11.00000    9.46272  14.0%     -    0s
     0     0    9.46381    0  109   11.00000    9.46381  14.0%     -    0s
     0     0    9.46506    0  109   11.00000    9.46506  14.0%     -    0s
     0     0    9.46622    0  107   11.00000    9.46622  13.9%     -    0s
     0     0    9.46642    0  113   11.00000    9.46642  13.9%     -    0s
     0     0    9.46650    0  117   11.00000    9.46650  13.9%     -    0s
     0     0    9.46861    0  116   11.00000    9.46861  13.9%     -    0s
     0     0    9.46921    0  111   11.00000    9.46921  13.9%     -    0s
     0     0    9.47006    0  116   11.00000    9.47006  13.9%     -    0s
     0     0    9.47149    0  118   11.00000    9.47149  13.9%     -    0s
     0     0    9.47211    0  118   11.00000    9.47211  13.9%     -    0s
     0     0    9.47230    0  117   11.00000    9.47230  13.9%     -    0s
     0     0    9.47290    0  118   11.00000    9.47290  13.9%     -    0s
     0     0    9.47307    0  119   11.00000    9.47307  13.9%     -    0s
     0     0    9.47318    0  118   11.00000    9.47318  13.9%     -    0s
     0     0    9.47506    0  119   11.00000    9.47506  13.9%     -    0s
     0     0    9.47521    0  116   11.00000    9.47521  13.9%     -    0s
     0     0    9.47663    0  115   11.00000    9.47663  13.8%     -    0s
     0     0    9.47663    0  114   11.00000    9.47663  13.8%     -    0s
H    0     0                      10.0000000    9.47663  5.23%     -    0s
     0     0    9.47663    0  114   10.00000    9.47663  5.23%     -    0s

Cutting planes:
  MIR: 34
  Zero half: 19

Explored 1 nodes (1489 simplex iterations) in 0.34 seconds (0.36 work units)
Thread count was 1 (of 8 available processors)

Solution count 4: 10 11 12 13 

Optimal solution found (tolerance 1.00e-04)
Best objective 1.000000000000e+01, best bound 1.000000000000e+01, gap 0.0000%

User-callback calls 574, time in user-callback 0.01 sec
done.
Success! Status: 2.
Objective value: 10
x[6]: 1
x[27]: 1
x[37]: 1
x[58]: 1
x[79]: 1
x[89]: 1
x[110]: 1
x[131]: 1
x[141]: 1
x[162]: 1
Time used by MIP2: 440.448 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (10): 6, 27, 37, 58, 79, 89, 110, 131, 141, 162

grid_14x14.txt
Time used by Floyd-Warshall: 167.78 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 404 rows, 196 columns and 8284 nonzeros
Model fingerprint: 0x539d1bf3
Variable types: 0 continuous, 196 integer (196 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 17.0000000
Presolve removed 248 rows and 12 columns
Presolve time: 0.01s
Presolved: 156 rows, 184 columns, 3204 nonzeros
Variable types: 0 continuous, 184 integer (184 binary)

Root relaxation: objective 1.059898e+01, 529 iterations, 0.02 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   10.59898    0  108   17.00000   10.59898  37.7%     -    0s
H    0     0                      15.0000000   10.59898  29.3%     -    0s
     0     0   10.60800    0  110   15.00000   10.60800  29.3%     -    0s
H    0     0                      14.0000000   10.60800  24.2%     -    0s
     0     0   10.61162    0  107   14.00000   10.61162  24.2%     -    0s
     0     0   10.63379    0  106   14.00000   10.63379  24.0%     -    0s
     0     0   10.63669    0  110   14.00000   10.63669  24.0%     -    0s
     0     0   10.64894    0  114   14.00000   10.64894  23.9%     -    0s
     0     0   10.65567    0  118   14.00000   10.65567  23.9%     -    0s
     0     0   10.65693    0  117   14.00000   10.65693  23.9%     -    0s
     0     0   10.65829    0  115   14.00000   10.65829  23.9%     -    0s
     0     0   10.66622    0  118   14.00000   10.66622  23.8%     -    0s
     0     0   10.67087    0  115   14.00000   10.67087  23.8%     -    0s
     0     0   10.67275    0  115   14.00000   10.67275  23.8%     -    0s
     0     0   10.67386    0  117   14.00000   10.67386  23.8%     -    0s
     0     0   10.67577    0  119   14.00000   10.67577  23.7%     -    0s
     0     0   10.67892    0  119   14.00000   10.67892  23.7%     -    0s
     0     0   10.68150    0  121   14.00000   10.68150  23.7%     -    0s
     0     0   10.68232    0  120   14.00000   10.68232  23.7%     -    0s
     0     0   10.68306    0  118   14.00000   10.68306  23.7%     -    0s
H    0     0                      13.0000000   10.68306  17.8%     -    0s
     0     0   10.68347    0  124   13.00000   10.68347  17.8%     -    0s
     0     0   10.68491    0  128   13.00000   10.68491  17.8%     -    0s
     0     0   10.68556    0  126   13.00000   10.68556  17.8%     -    0s
     0     0   10.68605    0  127   13.00000   10.68605  17.8%     -    0s
     0     0   10.68722    0  125   13.00000   10.68722  17.8%     -    0s
     0     0   10.68802    0  130   13.00000   10.68802  17.8%     -    0s
     0     0   10.68891    0  125   13.00000   10.68891  17.8%     -    0s
     0     0   10.68945    0  130   13.00000   10.68945  17.8%     -    0s
     0     0   10.69004    0  131   13.00000   10.69004  17.8%     -    0s
     0     0   10.69043    0  132   13.00000   10.69043  17.8%     -    0s
     0     0   10.69100    0  133   13.00000   10.69100  17.8%     -    0s
     0     0   10.69150    0  129   13.00000   10.69150  17.8%     -    0s
     0     0   10.69165    0  127   13.00000   10.69165  17.8%     -    0s
     0     0   10.69180    0  127   13.00000   10.69180  17.8%     -    0s
     0     0   10.69197    0  129   13.00000   10.69197  17.8%     -    0s
     0     0   10.69247    0  129   13.00000   10.69247  17.8%     -    0s
     0     0   10.69254    0  131   13.00000   10.69254  17.7%     -    0s
     0     0   10.69341    0  135   13.00000   10.69341  17.7%     -    0s
     0     0   10.69399    0  134   13.00000   10.69399  17.7%     -    0s
     0     0   10.69410    0  133   13.00000   10.69410  17.7%     -    0s
     0     0   10.69498    0  129   13.00000   10.69498  17.7%     -    0s
     0     0   10.69498    0  129   13.00000   10.69498  17.7%     -    0s
     0     2   10.69509    0  128   13.00000   10.69509  17.7%     -    0s
*   15     3              12      12.0000000   10.69588  10.9%  85.2    0s

Cutting planes:
  Gomory: 1
  MIR: 36
  Zero half: 28

Explored 19 nodes (3778 simplex iterations) in 0.60 seconds (0.62 work units)
Thread count was 1 (of 8 available processors)

Solution count 5: 12 13 14 ... 17

Optimal solution found (tolerance 1.00e-04)
Best objective 1.200000000000e+01, best bound 1.200000000000e+01, gap 0.0000%

User-callback calls 719, time in user-callback 0.01 sec
done.
Success! Status: 2.
Objective value: 12
x[2]: 1
x[23]: 1
x[25]: 1
x[48]: 1
x[70]: 1
x[82]: 1
x[101]: 1
x[120]: 1
x[153]: 1
x[155]: 1
x[173]: 1
x[192]: 1
Time used by MIP2: 741.132 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (12): 2, 23, 25, 48, 70, 82, 101, 120, 153, 155, 173, 192

grid_15x15.txt
Time used by Floyd-Warshall: 233.788 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 462 rows, 225 columns and 9622 nonzeros
Model fingerprint: 0x4301bb40
Variable types: 0 continuous, 225 integer (225 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 17.0000000
Presolve removed 277 rows and 12 columns
Presolve time: 0.01s
Presolved: 185 rows, 213 columns, 3873 nonzeros
Variable types: 0 continuous, 213 integer (213 binary)

Root relaxation: objective 1.182759e+01, 586 iterations, 0.02 seconds (0.02 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   11.82759    0  132   17.00000   11.82759  30.4%     -    0s
H    0     0                      16.0000000   11.82759  26.1%     -    0s
H    0     0                      14.0000000   11.82759  15.5%     -    0s
     0     0   11.88778    0  143   14.00000   11.88778  15.1%     -    0s
H    0     0                      12.0000000   11.88778  0.94%     -    0s
     0     0   11.88778    0  143   12.00000   11.88778  0.94%     -    0s

Cutting planes:
  MIR: 4
  Zero half: 1

Explored 1 nodes (742 simplex iterations) in 0.08 seconds (0.08 work units)
Thread count was 1 (of 8 available processors)

Solution count 4: 12 14 16 17 

Optimal solution found (tolerance 1.00e-04)
Best objective 1.200000000000e+01, best bound 1.200000000000e+01, gap 0.0000%

User-callback calls 289, time in user-callback 0.00 sec
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
Time used by MIP2: 295.336 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (12): 3, 11, 52, 60, 74, 109, 115, 150, 164, 172, 213, 221

grid_16x16.txt
Time used by Floyd-Warshall: 358.222 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 524 rows, 256 columns and 11060 nonzeros
Model fingerprint: 0x15887b55
Variable types: 0 continuous, 256 integer (256 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 21.0000000
Presolve removed 308 rows and 12 columns
Presolve time: 0.01s
Presolved: 216 rows, 244 columns, 4592 nonzeros
Variable types: 0 continuous, 244 integer (244 binary)

Root relaxation: objective 1.346845e+01, 898 iterations, 0.03 seconds (0.03 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   13.46845    0  162   21.00000   13.46845  35.9%     -    0s
H    0     0                      19.0000000   13.46845  29.1%     -    0s
     0     0   13.49269    0  165   19.00000   13.49269  29.0%     -    0s
     0     0   13.50764    0  162   19.00000   13.50764  28.9%     -    0s
     0     0   13.53514    0  148   19.00000   13.53514  28.8%     -    0s
H    0     0                      18.0000000   13.53514  24.8%     -    0s
     0     0   13.53514    0  148   18.00000   13.53514  24.8%     -    0s
     0     0   13.53994    0  152   18.00000   13.53994  24.8%     -    0s
H    0     0                      17.0000000   13.53994  20.4%     -    0s
     0     0   13.54377    0  151   17.00000   13.54377  20.3%     -    0s
     0     0   13.54606    0  150   17.00000   13.54606  20.3%     -    0s
     0     0   13.54764    0  151   17.00000   13.54764  20.3%     -    0s
     0     0   13.54830    0  151   17.00000   13.54830  20.3%     -    0s
     0     0   13.54844    0  155   17.00000   13.54844  20.3%     -    0s
     0     0   13.54915    0  156   17.00000   13.54915  20.3%     -    0s
     0     0   13.54987    0  158   17.00000   13.54987  20.3%     -    0s
     0     0   13.55046    0  157   17.00000   13.55046  20.3%     -    0s
     0     0   13.55114    0  159   17.00000   13.55114  20.3%     -    0s
     0     0   13.55152    0  163   17.00000   13.55152  20.3%     -    0s
     0     0   13.55171    0  160   17.00000   13.55171  20.3%     -    0s
     0     0   13.55211    0  164   17.00000   13.55211  20.3%     -    0s
     0     0   13.55211    0  164   17.00000   13.55211  20.3%     -    0s
H    0     0                      16.0000000   13.55211  15.3%     -    0s
     0     2   13.55217    0  164   16.00000   13.55217  15.3%     -    0s
*   15     2               9      15.0000000   13.55237  9.65%   148    0s

Cutting planes:
  MIR: 31
  Zero half: 12

Explored 38 nodes (7163 simplex iterations) in 0.82 seconds (0.93 work units)
Thread count was 1 (of 8 available processors)

Solution count 6: 15 16 17 ... 21

Optimal solution found (tolerance 1.00e-04)
Best objective 1.500000000000e+01, best bound 1.500000000000e+01, gap 0.0000%

User-callback calls 683, time in user-callback 0.01 sec
done.
Success! Status: 2.
Objective value: 15
x[7]: 1
x[17]: 1
x[28]: 1
x[52]: 1
x[63]: 1
x[89]: 1
x[97]: 1
x[134]: 1
x[141]: 1
x[161]: 1
x[186]: 1
x[213]: 1
x[223]: 1
x[225]: 1
x[250]: 1
Time used by MIP2: 1150.37 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (15): 7, 17, 28, 52, 63, 89, 97, 134, 141, 161, 186, 213, 223, 225, 250

grid_17x17.txt
Time used by Floyd-Warshall: 515.925 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 590 rows, 289 columns and 12598 nonzeros
Model fingerprint: 0x0e8eaa25
Variable types: 0 continuous, 289 integer (289 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 22.0000000
Presolve removed 341 rows and 12 columns
Presolve time: 0.02s
Presolved: 249 rows, 277 columns, 5361 nonzeros
Variable types: 0 continuous, 277 integer (277 binary)

Root relaxation: objective 1.490159e+01, 895 iterations, 0.04 seconds (0.04 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   14.90159    0  198   22.00000   14.90159  32.3%     -    0s
     0     0   14.91064    0  194   22.00000   14.91064  32.2%     -    0s
H    0     0                      21.0000000   14.91064  29.0%     -    0s
     0     0   14.91225    0  194   21.00000   14.91225  29.0%     -    0s
     0     0   14.91802    0  187   21.00000   14.91802  29.0%     -    0s
     0     0   14.92085    0  188   21.00000   14.92085  28.9%     -    0s
     0     0   14.92530    0  191   21.00000   14.92530  28.9%     -    0s
H    0     0                      20.0000000   14.92530  25.4%     -    0s
     0     0   14.92731    0  186   20.00000   14.92731  25.4%     -    0s
     0     0   14.93001    0  189   20.00000   14.93001  25.3%     -    0s
     0     0   14.93137    0  192   20.00000   14.93137  25.3%     -    0s
     0     0   14.93272    0  193   20.00000   14.93272  25.3%     -    0s
     0     0   14.93351    0  196   20.00000   14.93351  25.3%     -    0s
     0     0   14.93516    0  195   20.00000   14.93516  25.3%     -    0s
     0     0   14.93616    0  192   20.00000   14.93616  25.3%     -    0s
     0     0   14.93816    0  195   20.00000   14.93816  25.3%     -    0s
H    0     0                      19.0000000   14.93816  21.4%     -    0s
     0     0   14.93863    0  191   19.00000   14.93863  21.4%     -    0s
     0     0   14.93972    0  193   19.00000   14.93972  21.4%     -    0s
     0     0   14.94045    0  189   19.00000   14.94045  21.4%     -    0s
     0     0   14.94180    0  190   19.00000   14.94180  21.4%     -    0s
     0     0   14.94230    0  194   19.00000   14.94230  21.4%     -    0s
     0     0   14.94327    0  195   19.00000   14.94327  21.4%     -    0s
     0     0   14.94390    0  192   19.00000   14.94390  21.3%     -    0s
     0     0   14.94480    0  193   19.00000   14.94480  21.3%     -    0s
     0     0   14.94507    0  198   19.00000   14.94507  21.3%     -    0s
     0     0   14.94554    0  198   19.00000   14.94554  21.3%     -    0s
     0     0   14.94568    0  203   19.00000   14.94568  21.3%     -    0s
     0     0   14.94592    0  204   19.00000   14.94592  21.3%     -    0s
     0     0   14.94592    0  204   19.00000   14.94592  21.3%     -    0s
     0     2   14.94592    0  204   19.00000   14.94592  21.3%     -    0s
*   12    12               9      17.0000000   14.94592  12.1%   180    1s
*   22     4               6      16.0000000   15.50000  3.12%   184    1s

Cutting planes:
  Gomory: 1
  MIR: 29
  Zero half: 17

Explored 23 nodes (6427 simplex iterations) in 1.22 seconds (1.49 work units)
Thread count was 1 (of 8 available processors)

Solution count 6: 16 17 19 ... 22

Optimal solution found (tolerance 1.00e-04)
Best objective 1.600000000000e+01, best bound 1.600000000000e+01, gap 0.0000%

User-callback calls 824, time in user-callback 0.02 sec
done.
Success! Status: 2.
Objective value: 16
x[9]: 1
x[19]: 1
x[32]: 1
x[56]: 1
x[80]: 1
x[102]: 1
x[103]: 1
x[127]: 1
x[135]: 1
x[174]: 1
x[182]: 1
x[221]: 1
x[229]: 1
x[237]: 1
x[276]: 1
x[284]: 1
Time used by MIP2: 1708.57 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (16): 9, 19, 32, 56, 80, 102, 103, 127, 135, 174, 182, 221, 229, 237, 276, 284

grid_18x18.txt
Time used by Floyd-Warshall: 724.645 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 660 rows, 324 columns and 14236 nonzeros
Model fingerprint: 0x8475c991
Variable types: 0 continuous, 324 integer (324 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 26.0000000
Presolve removed 376 rows and 12 columns
Presolve time: 0.02s
Presolved: 284 rows, 312 columns, 6180 nonzeros
Variable types: 0 continuous, 312 integer (312 binary)

Root relaxation: objective 1.631197e+01, 1226 iterations, 0.06 seconds (0.06 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   16.31197    0  204   26.00000   16.31197  37.3%     -    0s
H    0     0                      24.0000000   16.31197  32.0%     -    0s
H    0     0                      23.0000000   16.31197  29.1%     -    0s
     0     0   16.36546    0  216   23.00000   16.36546  28.8%     -    0s
H    0     0                      22.0000000   16.36546  25.6%     -    0s
     0     0   16.37004    0  216   22.00000   16.37004  25.6%     -    0s
     0     0   16.37539    0  216   22.00000   16.37539  25.6%     -    0s
     0     0   16.37958    0  214   22.00000   16.37958  25.5%     -    0s
     0     0   16.38408    0  210   22.00000   16.38408  25.5%     -    0s
     0     0   16.38570    0  210   22.00000   16.38570  25.5%     -    0s
     0     0   16.38846    0  209   22.00000   16.38846  25.5%     -    0s
H    0     0                      21.0000000   16.38846  22.0%     -    0s
     0     0   16.38990    0  208   21.00000   16.38990  22.0%     -    0s
     0     0   16.39069    0  212   21.00000   16.39069  21.9%     -    0s
     0     0   16.39123    0  212   21.00000   16.39123  21.9%     -    0s
     0     0   16.39324    0  206   21.00000   16.39324  21.9%     -    0s
     0     0   16.39383    0  215   21.00000   16.39383  21.9%     -    0s
     0     0   16.39489    0  220   21.00000   16.39489  21.9%     -    0s
     0     0   16.39492    0  221   21.00000   16.39492  21.9%     -    0s
     0     0   16.39623    0  214   21.00000   16.39623  21.9%     -    0s
     0     0   16.39627    0  216   21.00000   16.39627  21.9%     -    0s
     0     0   16.39732    0  218   21.00000   16.39732  21.9%     -    0s
     0     0   16.39776    0  216   21.00000   16.39776  21.9%     -    0s
     0     0   16.39833    0  213   21.00000   16.39833  21.9%     -    0s
     0     0   16.39871    0  214   21.00000   16.39871  21.9%     -    0s
     0     0   16.39894    0  214   21.00000   16.39894  21.9%     -    0s
     0     0   16.39894    0  214   21.00000   16.39894  21.9%     -    0s
     0     2   16.39896    0  214   21.00000   16.39896  21.9%     -    1s
H   16    14                      19.0000000   16.39896  13.7%   198    1s
*   32     7              13      18.0000000   16.57185  7.93%   193    1s

Cutting planes:
  MIR: 23
  Zero half: 19

Explored 40 nodes (10159 simplex iterations) in 1.51 seconds (1.76 work units)
Thread count was 1 (of 8 available processors)

Solution count 7: 18 19 21 ... 26

Optimal solution found (tolerance 1.00e-04)
Best objective 1.800000000000e+01, best bound 1.800000000000e+01, gap 0.0000%

User-callback calls 842, time in user-callback 0.02 sec
done.
Success! Status: 2.
Objective value: 18
x[10]: 1
x[19]: 1
x[33]: 1
x[41]: 1
x[91]: 1
x[98]: 1
x[102]: 1
x[125]: 1
x[148]: 1
x[171]: 1
x[194]: 1
x[198]: 1
x[221]: 1
x[245]: 1
x[269]: 1
x[290]: 1
x[295]: 1
x[319]: 1
Time used by MIP2: 2178.73 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (18): 10, 19, 33, 41, 91, 98, 102, 125, 148, 171, 194, 198, 221, 245, 269, 290, 295, 319

grid_19x19.txt
Time used by Floyd-Warshall: 1014.33 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 734 rows, 361 columns and 15974 nonzeros
Model fingerprint: 0x3302e360
Variable types: 0 continuous, 361 integer (361 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 29.0000000
Presolve removed 413 rows and 12 columns
Presolve time: 0.02s
Presolved: 321 rows, 349 columns, 7049 nonzeros
Variable types: 0 continuous, 349 integer (349 binary)

Root relaxation: objective 1.813138e+01, 1310 iterations, 0.06 seconds (0.07 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   18.13138    0  221   29.00000   18.13138  37.5%     -    0s
H    0     0                      28.0000000   18.13138  35.2%     -    0s
     0     0   18.19832    0  224   28.00000   18.19832  35.0%     -    0s
H    0     0                      27.0000000   18.19832  32.6%     -    0s
H    0     0                      23.0000000   18.19832  20.9%     -    0s
     0     0   18.21627    0  232   23.00000   18.21627  20.8%     -    0s
     0     0   18.21670    0  234   23.00000   18.21670  20.8%     -    0s
     0     0   18.22736    0  235   23.00000   18.22736  20.8%     -    0s
     0     0   18.23003    0  243   23.00000   18.23003  20.7%     -    0s
     0     0   18.23619    0  244   23.00000   18.23619  20.7%     -    0s
     0     0   18.24032    0  249   23.00000   18.24032  20.7%     -    0s
     0     0   18.25078    0  246   23.00000   18.25078  20.6%     -    0s
     0     0   18.25123    0  248   23.00000   18.25123  20.6%     -    0s
     0     0   18.25525    0  250   23.00000   18.25525  20.6%     -    0s
     0     0   18.25816    0  253   23.00000   18.25816  20.6%     -    0s
     0     0   18.26142    0  256   23.00000   18.26142  20.6%     -    0s
     0     0   18.26181    0  255   23.00000   18.26181  20.6%     -    0s
     0     0   18.26454    0  255   23.00000   18.26454  20.6%     -    0s
     0     0   18.26483    0  262   23.00000   18.26483  20.6%     -    0s
     0     0   18.26759    0  264   23.00000   18.26759  20.6%     -    1s
     0     0   18.26770    0  265   23.00000   18.26770  20.6%     -    1s
     0     0   18.26879    0  266   23.00000   18.26879  20.6%     -    1s
     0     0   18.26887    0  265   23.00000   18.26887  20.6%     -    1s
     0     0   18.26908    0  266   23.00000   18.26908  20.6%     -    1s
     0     0   18.26908    0  266   23.00000   18.26908  20.6%     -    1s
H    0     0                      22.0000000   18.26908  17.0%     -    1s
H    0     0                      21.0000000   18.26908  13.0%     -    1s
     0     2   18.26910    0  266   21.00000   18.26910  13.0%     -    1s
*   34    14              13      20.0000000   18.32388  8.38%   245    1s

Cutting planes:
  MIR: 72
  Zero half: 4

Explored 89 nodes (20121 simplex iterations) in 2.35 seconds (2.80 work units)
Thread count was 1 (of 8 available processors)

Solution count 7: 20 21 22 ... 29

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+01, best bound 2.000000000000e+01, gap 0.0000%

User-callback calls 1085, time in user-callback 0.04 sec
done.
Success! Status: 2.
Objective value: 20
x[6]: 1
x[14]: 1
x[39]: 1
x[67]: 1
x[75]: 1
x[99]: 1
x[128]: 1
x[140]: 1
x[152]: 1
x[189]: 1
x[201]: 1
x[213]: 1
x[262]: 1
x[274]: 1
x[285]: 1
x[286]: 1
x[321]: 1
x[335]: 1
x[347]: 1
x[354]: 1
Time used by MIP2: 3271.15 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (20): 6, 14, 39, 67, 75, 99, 128, 140, 152, 189, 201, 213, 262, 274, 285, 286, 321, 335, 347, 354

grid_20x20.txt
Time used by Floyd-Warshall: 1291.91 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 812 rows, 400 columns and 17812 nonzeros
Model fingerprint: 0xd6698419
Variable types: 0 continuous, 400 integer (400 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 31.0000000
Presolve removed 452 rows and 12 columns
Presolve time: 0.02s
Presolved: 360 rows, 388 columns, 7968 nonzeros
Variable types: 0 continuous, 388 integer (388 binary)

Root relaxation: objective 1.991655e+01, 1612 iterations, 0.10 seconds (0.11 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   19.91655    0  280   31.00000   19.91655  35.8%     -    0s
H    0     0                      30.0000000   19.91655  33.6%     -    0s
     0     0   19.92999    0  261   30.00000   19.92999  33.6%     -    0s
H    0     0                      28.0000000   19.92999  28.8%     -    0s
     0     0   19.93615    0  258   28.00000   19.93615  28.8%     -    0s
     0     0   19.94644    0  274   28.00000   19.94644  28.8%     -    0s
     0     0   19.94707    0  271   28.00000   19.94707  28.8%     -    0s
     0     0   19.94901    0  272   28.00000   19.94901  28.8%     -    0s
     0     0   19.94967    0  267   28.00000   19.94967  28.8%     -    0s
     0     0   19.95223    0  274   28.00000   19.95223  28.7%     -    0s
     0     0   19.95241    0  276   28.00000   19.95241  28.7%     -    0s
     0     0   19.95339    0  273   28.00000   19.95339  28.7%     -    0s
H    0     0                      27.0000000   19.95339  26.1%     -    0s
     0     0   19.95345    0  273   27.00000   19.95345  26.1%     -    0s
     0     0   19.95452    0  275   27.00000   19.95452  26.1%     -    0s
     0     0   19.95465    0  279   27.00000   19.95465  26.1%     -    0s
     0     0   19.95589    0  277   27.00000   19.95589  26.1%     -    1s
     0     0   19.95658    0  291   27.00000   19.95658  26.1%     -    1s
     0     0   19.95685    0  286   27.00000   19.95685  26.1%     -    1s
     0     0   19.95717    0  288   27.00000   19.95717  26.1%     -    1s
H    0     0                      26.0000000   19.95717  23.2%     -    1s
     0     0   19.95769    0  289   26.00000   19.95769  23.2%     -    1s
     0     0   19.95972    0  285   26.00000   19.95972  23.2%     -    1s
H    0     0                      24.0000000   19.95972  16.8%     -    1s
     0     0   19.96004    0  285   24.00000   19.96004  16.8%     -    1s
     0     0   19.96135    0  287   24.00000   19.96135  16.8%     -    1s
     0     0   19.96183    0  290   24.00000   19.96183  16.8%     -    1s
     0     0   19.96313    0  286   24.00000   19.96313  16.8%     -    1s
     0     0   19.96318    0  284   24.00000   19.96318  16.8%     -    1s
     0     0   19.96402    0  288   24.00000   19.96402  16.8%     -    1s
     0     0   19.96417    0  287   24.00000   19.96417  16.8%     -    1s
     0     0   19.96446    0  294   24.00000   19.96446  16.8%     -    2s
     0     0   19.96446    0  294   24.00000   19.96446  16.8%     -    2s
     0     2   19.96446    0  293   24.00000   19.96446  16.8%     -    2s
*   20    12              15      22.0000000   19.96454  9.25%   290    2s
*   53     5              11      21.0000000   20.77265  1.08%   286    3s

Cutting planes:
  Gomory: 3
  MIR: 35
  Zero half: 13

Explored 54 nodes (19237 simplex iterations) in 3.51 seconds (3.80 work units)
Thread count was 1 (of 8 available processors)

Solution count 8: 21 22 24 ... 31

Optimal solution found (tolerance 1.00e-04)
Best objective 2.100000000000e+01, best bound 2.100000000000e+01, gap 0.0000%

User-callback calls 1167, time in user-callback 0.04 sec
done.
Success! Status: 2.
Objective value: 21
x[6]: 1
x[12]: 1
x[38]: 1
x[41]: 1
x[89]: 1
x[95]: 1
x[104]: 1
x[153]: 1
x[159]: 1
x[160]: 1
x[166]: 1
x[230]: 1
x[236]: 1
x[243]: 1
x[307]: 1
x[313]: 1
x[319]: 1
x[320]: 1
x[384]: 1
x[390]: 1
x[396]: 1
Time used by MIP2: 4719.71 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (21): 6, 12, 38, 41, 89, 95, 104, 153, 159, 160, 166, 230, 236, 243, 307, 313, 319, 320, 384, 390, 396

grid_4x4.txt
Time used by Floyd-Warshall: 0.11 ms
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
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 52 rows, 16 columns and 412 nonzeros
Model fingerprint: 0xab1f5aec
Variable types: 0 continuous, 16 integer (16 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 2.0000000
Presolve removed 48 rows and 12 columns
Presolve time: 0.00s
Presolved: 4 rows, 4 columns, 12 nonzeros
Variable types: 0 continuous, 4 integer (4 binary)

Root relaxation: cutoff, 3 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0     cutoff    0         2.00000    2.00000  0.00%     -    0s

Explored 1 nodes (3 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 1: 2 

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+00, best bound 2.000000000000e+00, gap 0.0000%

User-callback calls 220, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 2
x[6]: 1
x[9]: 1
Time used by MIP2: 23.045 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (2): 6, 9

grid_5x5.txt
Time used by Floyd-Warshall: 0.469 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 66 rows, 25 columns and 746 nonzeros
Model fingerprint: 0xb8e0076b
Variable types: 0 continuous, 25 integer (25 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 3.0000000
Presolve removed 62 rows and 21 columns
Presolve time: 0.00s
Presolved: 4 rows, 4 columns, 8 nonzeros
Found heuristic solution: objective 2.0000000
Variable types: 0 continuous, 4 integer (4 binary)

Root relaxation: cutoff, 2 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0     cutoff    0         2.00000    2.00000  0.00%     -    0s

Explored 1 nodes (2 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 2 3 

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+00, best bound 2.000000000000e+00, gap 0.0000%

User-callback calls 377, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 2
x[11]: 1
x[13]: 1
Time used by MIP2: 6.531 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (2): 11, 13

grid_6x6.txt
Time used by Floyd-Warshall: 1.232 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 84 rows, 36 columns and 1180 nonzeros
Model fingerprint: 0xec4ba592
Variable types: 0 continuous, 36 integer (36 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 4.0000000
Presolve removed 64 rows and 12 columns
Presolve time: 0.00s
Presolved: 20 rows, 24 columns, 180 nonzeros
Variable types: 0 continuous, 24 integer (24 binary)

Root relaxation: objective 2.727273e+00, 26 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    2.72727    0   16    4.00000    2.72727  31.8%     -    0s
H    0     0                       3.0000000    2.72727  9.09%     -    0s
     0     0    2.72727    0   16    3.00000    2.72727  9.09%     -    0s

Explored 1 nodes (27 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 3 4 

Optimal solution found (tolerance 1.00e-04)
Best objective 3.000000000000e+00, best bound 3.000000000000e+00, gap 0.0000%

User-callback calls 246, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 3
x[13]: 1
x[16]: 1
x[33]: 1
Time used by MIP2: 9.63 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (3): 13, 16, 33

grid_7x7.txt
Time used by Floyd-Warshall: 3.451 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 110 rows, 49 columns and 1718 nonzeros
Model fingerprint: 0x0b3f24bf
Variable types: 0 continuous, 49 integer (49 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 5.0000000
Presolve removed 85 rows and 12 columns
Presolve time: 0.00s
Presolved: 25 rows, 37 columns, 269 nonzeros
Variable types: 0 continuous, 37 integer (37 binary)

Root relaxation: objective 3.428571e+00, 34 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    3.42857    0   22    5.00000    3.42857  31.4%     -    0s
H    0     0                       4.0000000    3.42857  14.3%     -    0s
     0     0    3.42857    0   22    4.00000    3.42857  14.3%     -    0s

Explored 1 nodes (36 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 4 5 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+00, best bound 4.000000000000e+00, gap 0.0000%

User-callback calls 246, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 4
x[8]: 1
x[12]: 1
x[34]: 1
x[37]: 1
Time used by MIP2: 12.99 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (4): 8, 12, 34, 37

grid_8x8.txt
Time used by Floyd-Warshall: 7.628 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 140 rows, 64 columns and 2356 nonzeros
Model fingerprint: 0x1938ee7b
Variable types: 0 continuous, 64 integer (64 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 5.0000000
Presolve removed 108 rows and 12 columns
Presolve time: 0.00s
Presolved: 32 rows, 52 columns, 408 nonzeros
Variable types: 0 continuous, 52 integer (52 binary)

Root relaxation: objective 4.000000e+00, 20 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

*    0     0               0       4.0000000    4.00000  0.00%     -    0s

Explored 1 nodes (20 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 4 5 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+00, best bound 4.000000000000e+00, gap 0.0000%

User-callback calls 244, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 4
x[4]: 1
x[24]: 1
x[39]: 1
x[59]: 1
Time used by MIP2: 16.572 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (4): 4, 24, 39, 59

grid_9x9.txt
Time used by Floyd-Warshall: 14.493 ms
Creating the Gurobi environment... Set parameter Username
Academic license - for non-commercial use only - expires 2022-12-31
done.
Creating the Gurobi model... done.
Creating the variables... Creating the objective function... done.
Creating the constraints... done.
Creating the callback... done.
Configuring solver... Set parameter TimeLimit to value 3600
Set parameter Threads to value 1
done.
Running solver... Gurobi Optimizer version 9.5.0 build v9.5.0rc5 (linux64)
Thread count: 4 physical cores, 8 logical processors, using up to 1 threads
Optimize a model with 174 rows, 81 columns and 3094 nonzeros
Model fingerprint: 0xa0481923
Variable types: 0 continuous, 81 integer (81 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 2e+01]
Found heuristic solution: objective 7.0000000
Presolve removed 129 rows and 13 columns
Presolve time: 0.00s
Presolved: 45 rows, 68 columns, 680 nonzeros
Variable types: 0 continuous, 68 integer (68 binary)

Root relaxation: objective 5.130435e+00, 90 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    5.13043    0   32    7.00000    5.13043  26.7%     -    0s
H    0     0                       6.0000000    5.13043  14.5%     -    0s
     0     0    5.13043    0   32    6.00000    5.13043  14.5%     -    0s

Explored 1 nodes (90 simplex iterations) in 0.01 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 6 7 

Optimal solution found (tolerance 1.00e-04)
Best objective 6.000000000000e+00, best bound 6.000000000000e+00, gap 0.0000%

User-callback calls 306, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 6
x[6]: 1
x[11]: 1
x[38]: 1
x[43]: 1
x[65]: 1
x[69]: 1
Time used by MIP2: 24.766 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (6): 6, 11, 38, 43, 65, 69

