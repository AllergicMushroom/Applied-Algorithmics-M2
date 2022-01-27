 
grid_10x10.txt
Time used by Floyd-Warshall: 23.586 ms
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
Optimize a model with 200 rows, 100 columns and 920 nonzeros
Model fingerprint: 0x31bf0ed2
Variable types: 0 continuous, 100 integer (100 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 30.0000000
Presolve removed 100 rows and 0 columns
Presolve time: 0.00s
Presolved: 100 rows, 100 columns, 460 nonzeros
Variable types: 0 continuous, 100 integer (100 binary)

Root relaxation: objective 2.239434e+01, 286 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   22.39434    0  100   30.00000   22.39434  25.4%     -    0s
H    0     0                      29.0000000   22.39434  22.8%     -    0s
     0     0   22.65823    0   95   29.00000   22.65823  21.9%     -    0s
H    0     0                      26.0000000   22.65823  12.9%     -    0s
H    0     0                      25.0000000   22.65823  9.37%     -    0s
     0     0   22.68822    0   95   25.00000   22.68822  9.25%     -    0s
     0     0   22.70262    0   96   25.00000   22.70262  9.19%     -    0s
     0     0   22.70666    0   96   25.00000   22.70666  9.17%     -    0s
     0     0   22.71510    0   96   25.00000   22.71510  9.14%     -    0s
     0     0   22.73097    0   99   25.00000   22.73097  9.08%     -    0s
     0     0   22.73793    0   97   25.00000   22.73793  9.05%     -    0s
     0     0   22.75877    0   98   25.00000   22.75877  8.96%     -    0s
     0     0   22.76148    0   99   25.00000   22.76148  8.95%     -    0s
     0     0   22.76465    0   98   25.00000   22.76465  8.94%     -    0s
     0     0   22.76757    0   99   25.00000   22.76757  8.93%     -    0s
     0     0   22.76758    0   98   25.00000   22.76758  8.93%     -    0s
     0     0   22.76799    0   94   25.00000   22.76799  8.93%     -    0s
     0     0   22.77092    0   95   25.00000   22.77092  8.92%     -    0s
     0     0   22.77297    0   97   25.00000   22.77297  8.91%     -    0s
     0     0   22.77329    0   96   25.00000   22.77329  8.91%     -    0s
     0     0   22.78378    0   95   25.00000   22.78378  8.86%     -    0s
     0     0   22.78390    0   96   25.00000   22.78390  8.86%     -    0s
     0     0   22.78778    0   99   25.00000   22.78778  8.85%     -    0s
     0     0   22.78778    0   99   25.00000   22.78778  8.85%     -    0s
     0     2   22.78778    0   95   25.00000   22.78778  8.85%     -    0s
*   17     4               6      24.0000000   22.98908  4.21%  42.3    0s

Cutting planes:
  MIR: 12
  Zero half: 19

Explored 22 nodes (1484 simplex iterations) in 0.13 seconds (0.10 work units)
Thread count was 1 (of 8 available processors)

Solution count 5: 24 25 26 ... 30

Optimal solution found (tolerance 1.00e-04)
Best objective 2.400000000000e+01, best bound 2.400000000000e+01, gap 0.0000%

User-callback calls 421, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 24
x[1]: 1
x[5]: 1
x[7]: 1
x[13]: 1
x[19]: 1
x[20]: 1
x[26]: 1
x[32]: 1
x[34]: 1
x[38]: 1
x[40]: 1
x[46]: 1
x[53]: 1
x[59]: 1
x[61]: 1
x[65]: 1
x[67]: 1
x[73]: 1
x[79]: 1
x[80]: 1
x[86]: 1
x[92]: 1
x[94]: 1
x[98]: 1
Time used by MIP2: 155.313 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (24): 1, 5, 7, 13, 19, 20, 26, 32, 34, 38, 40, 46, 53, 59, 61, 65, 67, 73, 79, 80, 86, 92, 94, 98

grid_11x11.txt
Time used by Floyd-Warshall: 37.125 ms
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
Optimize a model with 242 rows, 121 columns and 1122 nonzeros
Model fingerprint: 0x932e4b42
Variable types: 0 continuous, 121 integer (121 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 37.0000000
Presolve removed 121 rows and 0 columns
Presolve time: 0.00s
Presolved: 121 rows, 121 columns, 561 nonzeros
Variable types: 0 continuous, 121 integer (121 binary)

Root relaxation: objective 2.681481e+01, 265 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   26.81481    0  110   37.00000   26.81481  27.5%     -    0s
H    0     0                      34.0000000   26.81481  21.1%     -    0s
     0     0   26.96666    0  114   34.00000   26.96666  20.7%     -    0s
H    0     0                      32.0000000   26.96666  15.7%     -    0s
     0     0   26.96839    0  113   32.00000   26.96839  15.7%     -    0s
     0     0   27.04214    0  118   32.00000   27.04214  15.5%     -    0s
     0     0   27.05634    0  113   32.00000   27.05634  15.4%     -    0s
     0     0   27.14307    0  115   32.00000   27.14307  15.2%     -    0s
     0     0   27.16456    0  118   32.00000   27.16456  15.1%     -    0s
     0     0   27.18692    0  115   32.00000   27.18692  15.0%     -    0s
     0     0   27.18882    0  116   32.00000   27.18882  15.0%     -    0s
     0     0   27.18914    0  117   32.00000   27.18914  15.0%     -    0s
     0     0   27.18918    0  116   32.00000   27.18918  15.0%     -    0s
     0     0   27.26248    0  119   32.00000   27.26248  14.8%     -    0s
     0     0   27.26279    0  119   32.00000   27.26279  14.8%     -    0s
     0     0   27.26279    0  120   32.00000   27.26279  14.8%     -    0s
     0     0   27.32312    0  119   32.00000   27.32312  14.6%     -    0s
     0     0   27.32529    0  117   32.00000   27.32529  14.6%     -    0s
     0     0   27.32740    0  119   32.00000   27.32740  14.6%     -    0s
     0     0   27.32750    0  120   32.00000   27.32750  14.6%     -    0s
     0     0   27.38334    0  114   32.00000   27.38334  14.4%     -    0s
     0     0   27.38334    0  117   32.00000   27.38334  14.4%     -    0s
     0     0   27.39432    0  115   32.00000   27.39432  14.4%     -    0s
     0     0   27.39703    0  119   32.00000   27.39703  14.4%     -    0s
     0     0   27.39722    0  120   32.00000   27.39722  14.4%     -    0s
     0     0   27.41506    0  116   32.00000   27.41506  14.3%     -    0s
     0     0   27.41515    0  117   32.00000   27.41515  14.3%     -    0s
     0     0   27.43132    0  114   32.00000   27.43132  14.3%     -    0s
H    0     0                      31.0000000   27.43132  11.5%     -    0s
     0     0   27.43198    0  115   31.00000   27.43198  11.5%     -    0s
     0     0   27.43228    0  119   31.00000   27.43228  11.5%     -    0s
     0     0   27.43249    0  119   31.00000   27.43249  11.5%     -    0s
     0     0   27.44125    0  119   31.00000   27.44125  11.5%     -    0s
     0     0   27.44125    0  119   31.00000   27.44125  11.5%     -    0s
     0     0   27.44262    0  111   31.00000   27.44262  11.5%     -    0s
     0     0   27.44262    0  110   31.00000   27.44262  11.5%     -    0s
     0     2   27.44262    0  107   31.00000   27.44262  11.5%     -    0s
H    6     6                      30.0000000   27.63702  7.88%  56.3    0s
*  159     1              10      29.0000000   28.83000  0.59%  27.5    0s

Cutting planes:
  MIR: 19
  Zero half: 21

Explored 160 nodes (5510 simplex iterations) in 0.29 seconds (0.22 work units)
Thread count was 1 (of 8 available processors)

Solution count 6: 29 30 31 ... 37

Optimal solution found (tolerance 1.00e-04)
Best objective 2.900000000000e+01, best bound 2.900000000000e+01, gap 0.0000%

User-callback calls 816, time in user-callback 0.01 sec
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
x[31]: 1
x[32]: 1
x[34]: 1
x[39]: 1
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
Time used by MIP2: 339.102 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (29): 2, 5, 9, 11, 13, 18, 26, 31, 32, 34, 39, 47, 52, 55, 60, 65, 68, 73, 79, 81, 86, 88, 94, 102, 107, 109, 111, 115, 118

grid_12x12.txt
Time used by Floyd-Warshall: 55.968 ms
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
Optimize a model with 288 rows, 144 columns and 1344 nonzeros
Model fingerprint: 0xb8ac5249
Variable types: 0 continuous, 144 integer (144 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 42.0000000
Presolve removed 144 rows and 0 columns
Presolve time: 0.00s
Presolved: 144 rows, 144 columns, 672 nonzeros
Variable types: 0 continuous, 144 integer (144 binary)

Root relaxation: objective 3.157185e+01, 354 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   31.57185    0  140   42.00000   31.57185  24.8%     -    0s
     0     0   31.86564    0  137   42.00000   31.86564  24.1%     -    0s
H    0     0                      41.0000000   31.86564  22.3%     -    0s
     0     0   31.87008    0  137   41.00000   31.87008  22.3%     -    0s
     0     0   31.87190    0  136   41.00000   31.87190  22.3%     -    0s
     0     0   31.88165    0  138   41.00000   31.88165  22.2%     -    0s
     0     0   31.88273    0  140   41.00000   31.88273  22.2%     -    0s
     0     0   31.88532    0  140   41.00000   31.88532  22.2%     -    0s
     0     0   31.88704    0  140   41.00000   31.88704  22.2%     -    0s
     0     0   31.88727    0  139   41.00000   31.88727  22.2%     -    0s
     0     0   31.91065    0  140   41.00000   31.91065  22.2%     -    0s
H    0     0                      40.0000000   31.91065  20.2%     -    0s
     0     0   31.92501    0  138   40.00000   31.92501  20.2%     -    0s
     0     0   31.94138    0  138   40.00000   31.94138  20.1%     -    0s
     0     0   31.94488    0  140   40.00000   31.94488  20.1%     -    0s
     0     0   31.94517    0  138   40.00000   31.94517  20.1%     -    0s
     0     0   31.99054    0  142   40.00000   31.99054  20.0%     -    0s
H    0     0                      39.0000000   31.99054  18.0%     -    0s
     0     0   31.99169    0  141   39.00000   31.99169  18.0%     -    0s
     0     0   31.99304    0  141   39.00000   31.99304  18.0%     -    0s
     0     0   31.99474    0  140   39.00000   31.99474  18.0%     -    0s
     0     0   31.99505    0  140   39.00000   31.99505  18.0%     -    0s
     0     0   32.06438    0  141   39.00000   32.06438  17.8%     -    0s
     0     0   32.06968    0  141   39.00000   32.06968  17.8%     -    0s
     0     0   32.07116    0  142   39.00000   32.07116  17.8%     -    0s
     0     0   32.17486    0  135   39.00000   32.17486  17.5%     -    0s
     0     0   32.17486    0  135   39.00000   32.17486  17.5%     -    0s
     0     0   32.17486    0  139   39.00000   32.17486  17.5%     -    0s
     0     0   32.17486    0  134   39.00000   32.17486  17.5%     -    0s
H    0     0                      38.0000000   32.17486  15.3%     -    0s
     0     2   32.17486    0  134   38.00000   32.17486  15.3%     -    0s
*   27    21              21      37.0000000   32.17486  13.0%  29.9    0s
H   70    40                      36.0000000   32.62646  9.37%  32.6    0s
*  119    38              14      35.0000000   32.77299  6.36%  29.4    0s

Cutting planes:
  MIR: 13
  Zero half: 16

Explored 977 nodes (28746 simplex iterations) in 0.90 seconds (0.65 work units)
Thread count was 1 (of 8 available processors)

Solution count 8: 35 36 37 ... 42

Optimal solution found (tolerance 1.00e-04)
Best objective 3.500000000000e+01, best bound 3.500000000000e+01, gap 0.0000%

User-callback calls 2639, time in user-callback 0.04 sec
done.
Success! Status: 2.
Objective value: 35
x[3]: 1
x[7]: 1
x[10]: 1
x[12]: 1
x[13]: 1
x[17]: 1
x[22]: 1
x[28]: 1
x[32]: 1
x[38]: 1
x[42]: 1
x[47]: 1
x[48]: 1
x[52]: 1
x[57]: 1
x[62]: 1
x[67]: 1
x[72]: 1
x[77]: 1
x[82]: 1
x[83]: 1
x[87]: 1
x[92]: 1
x[97]: 1
x[102]: 1
x[105]: 1
x[111]: 1
x[112]: 1
x[119]: 1
x[120]: 1
x[127]: 1
x[128]: 1
x[134]: 1
x[137]: 1
x[142]: 1
Time used by MIP2: 965.68 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (35): 3, 7, 10, 12, 13, 17, 22, 28, 32, 38, 42, 47, 48, 52, 57, 62, 67, 72, 77, 82, 83, 87, 92, 97, 102, 105, 111, 112, 119, 120, 127, 128, 134, 137, 142

grid_13x13.txt
Time used by Floyd-Warshall: 97.834 ms
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
Optimize a model with 338 rows, 169 columns and 1586 nonzeros
Model fingerprint: 0x95f162be
Variable types: 0 continuous, 169 integer (169 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 53.0000000
Presolve removed 169 rows and 0 columns
Presolve time: 0.00s
Presolved: 169 rows, 169 columns, 793 nonzeros
Variable types: 0 continuous, 169 integer (169 binary)

Root relaxation: objective 3.692909e+01, 451 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   36.92909    0  164   53.00000   36.92909  30.3%     -    0s
H    0     0                      50.0000000   36.92909  26.1%     -    0s
     0     0   37.06456    0  164   50.00000   37.06456  25.9%     -    0s
H    0     0                      46.0000000   37.06456  19.4%     -    0s
     0     0   37.09868    0  165   46.00000   37.09868  19.4%     -    0s
     0     0   37.19807    0  164   46.00000   37.19807  19.1%     -    0s
     0     0   37.21824    0  168   46.00000   37.21824  19.1%     -    0s
     0     0   37.22315    0  167   46.00000   37.22315  19.1%     -    0s
     0     0   37.22414    0  168   46.00000   37.22414  19.1%     -    0s
     0     0   37.22500    0  168   46.00000   37.22500  19.1%     -    0s
     0     0   37.22525    0  168   46.00000   37.22525  19.1%     -    0s
     0     0   37.22527    0  168   46.00000   37.22527  19.1%     -    0s
     0     0   37.28319    0  167   46.00000   37.28319  18.9%     -    0s
     0     0   37.31043    0  168   46.00000   37.31043  18.9%     -    0s
     0     0   37.32754    0  167   46.00000   37.32754  18.9%     -    0s
     0     0   37.32958    0  166   46.00000   37.32958  18.8%     -    0s
     0     0   37.33012    0  165   46.00000   37.33012  18.8%     -    0s
     0     0   37.33025    0  167   46.00000   37.33025  18.8%     -    0s
     0     0   37.33219    0  169   46.00000   37.33219  18.8%     -    0s
     0     0   37.33302    0  168   46.00000   37.33302  18.8%     -    0s
     0     0   37.33374    0  168   46.00000   37.33374  18.8%     -    0s
     0     0   37.33380    0  168   46.00000   37.33380  18.8%     -    0s
     0     0   37.34117    0  168   46.00000   37.34117  18.8%     -    0s
     0     0   37.34343    0  165   46.00000   37.34343  18.8%     -    0s
     0     0   37.34456    0  167   46.00000   37.34456  18.8%     -    0s
     0     0   37.34580    0  164   46.00000   37.34580  18.8%     -    0s
     0     0   37.34719    0  166   46.00000   37.34719  18.8%     -    0s
     0     0   37.34774    0  166   46.00000   37.34774  18.8%     -    0s
     0     0   37.34782    0  166   46.00000   37.34782  18.8%     -    0s
     0     0   37.35123    0  168   46.00000   37.35123  18.8%     -    0s
     0     0   37.35168    0  169   46.00000   37.35168  18.8%     -    0s
     0     0   37.35219    0  169   46.00000   37.35219  18.8%     -    0s
     0     2   37.35241    0  169   46.00000   37.35241  18.8%     -    0s
H   27    27                      45.0000000   37.35338  17.0%  33.6    0s
H   31    31                      44.0000000   37.35338  15.1%  29.7    0s
*   36    26              26      43.0000000   37.35338  13.1%  25.9    0s
H  106    53                      42.0000000   37.58211  10.5%  35.4    0s
H  303    87                      41.0000000   37.93980  7.46%  30.7    0s
* 1714   327              28      40.0000000   38.62968  3.43%  33.8    2s

Explored 1897 nodes (63459 simplex iterations) in 2.74 seconds (2.51 work units)
Thread count was 1 (of 8 available processors)

Solution count 9: 40 41 42 ... 53

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+01, best bound 4.000000000000e+01, gap 0.0000%

User-callback calls 5350, time in user-callback 0.11 sec
done.
Success! Status: 2.
Objective value: 40
x[2]: 1
x[6]: 1
x[10]: 1
x[13]: 1
x[17]: 1
x[21]: 1
x[25]: 1
x[28]: 1
x[33]: 1
x[35]: 1
x[39]: 1
x[44]: 1
x[50]: 1
x[55]: 1
x[60]: 1
x[66]: 1
x[71]: 1
x[75]: 1
x[77]: 1
x[82]: 1
x[86]: 1
x[91]: 1
x[93]: 1
x[97]: 1
x[102]: 1
x[108]: 1
x[113]: 1
x[118]: 1
x[124]: 1
x[129]: 1
x[133]: 1
x[135]: 1
x[140]: 1
x[143]: 1
x[151]: 1
x[155]: 1
x[158]: 1
x[160]: 1
x[162]: 1
x[166]: 1
Time used by MIP2: 2862.71 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (40): 2, 6, 10, 13, 17, 21, 25, 28, 33, 35, 39, 44, 50, 55, 60, 66, 71, 75, 77, 82, 86, 91, 93, 97, 102, 108, 113, 118, 124, 129, 133, 135, 140, 143, 151, 155, 158, 160, 162, 166

grid_14x14.txt
Time used by Floyd-Warshall: 148.228 ms
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
Optimize a model with 392 rows, 196 columns and 1848 nonzeros
Model fingerprint: 0x433ce84f
Variable types: 0 continuous, 196 integer (196 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 56.0000000
Presolve removed 196 rows and 0 columns
Presolve time: 0.00s
Presolved: 196 rows, 196 columns, 924 nonzeros
Variable types: 0 continuous, 196 integer (196 binary)

Root relaxation: objective 4.240172e+01, 476 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   42.40172    0  192   56.00000   42.40172  24.3%     -    0s
H    0     0                      48.0000000   42.40172  11.7%     -    0s
     0     0   42.59416    0  188   48.00000   42.59416  11.3%     -    0s
     0     0   42.62385    0  187   48.00000   42.62385  11.2%     -    0s
     0     0   42.72228    0  193   48.00000   42.72228  11.0%     -    0s
     0     0   42.73173    0  188   48.00000   42.73173  11.0%     -    0s
     0     0   42.73464    0  192   48.00000   42.73464  11.0%     -    0s
     0     0   42.73496    0  193   48.00000   42.73496  11.0%     -    0s
     0     0   42.75279    0  191   48.00000   42.75279  10.9%     -    0s
     0     0   42.76116    0  193   48.00000   42.76116  10.9%     -    0s
     0     0   42.76904    0  193   48.00000   42.76904  10.9%     -    0s
     0     0   42.78977    0  192   48.00000   42.78977  10.9%     -    0s
     0     0   42.79184    0  194   48.00000   42.79184  10.9%     -    0s
     0     0   42.79416    0  196   48.00000   42.79416  10.8%     -    0s
     0     0   42.79478    0  196   48.00000   42.79478  10.8%     -    0s
     0     0   42.79860    0  194   48.00000   42.79860  10.8%     -    0s
     0     0   42.80005    0  195   48.00000   42.80005  10.8%     -    0s
     0     0   42.80067    0  195   48.00000   42.80067  10.8%     -    0s
     0     0   42.80084    0  196   48.00000   42.80084  10.8%     -    0s
     0     0   42.80552    0  194   48.00000   42.80552  10.8%     -    0s
     0     0   42.82072    0  196   48.00000   42.82072  10.8%     -    0s
     0     0   42.82139    0  196   48.00000   42.82139  10.8%     -    0s
     0     0   42.82216    0  196   48.00000   42.82216  10.8%     -    0s
     0     0   42.82328    0  196   48.00000   42.82328  10.8%     -    0s
     0     0   42.82362    0  196   48.00000   42.82362  10.8%     -    0s
     0     0   42.82486    0  196   48.00000   42.82486  10.8%     -    0s
     0     0   42.82556    0  196   48.00000   42.82556  10.8%     -    0s
     0     0   42.82633    0  196   48.00000   42.82633  10.8%     -    0s
     0     2   42.82726    0  196   48.00000   42.82726  10.8%     -    0s
H 2255   624                      47.0000000   44.04083  6.30%  34.5    3s
  3561  1110   44.95595   20  146   47.00000   44.30502  5.73%  32.2    5s
  8787  2677   45.73533   25  137   47.00000   44.73608  4.82%  28.9   10s
 10232  2970   44.80065   21  181   47.00000   44.80065  4.68%  28.6   15s
 11893  2722   45.78330   29  160   47.00000   45.30942  3.60%  33.9   20s

Cutting planes:
  Gomory: 7
  MIR: 6
  Flow cover: 89
  Zero half: 27

Explored 13270 nodes (480783 simplex iterations) in 22.87 seconds (19.86 work units)
Thread count was 1 (of 8 available processors)

Solution count 3: 47 48 56 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.700000000000e+01, best bound 4.700000000000e+01, gap 0.0000%

User-callback calls 35686, time in user-callback 0.86 sec
done.
Success! Status: 2.
Objective value: 47
x[3]: 1
x[7]: 1
x[11]: 1
x[14]: 1
x[15]: 1
x[19]: 1
x[23]: 1
x[27]: 1
x[31]: 1
x[35]: 1
x[40]: 1
x[43]: 1
x[47]: 1
x[52]: 1
x[59]: 1
x[64]: 1
x[69]: 1
x[70]: 1
x[71]: 1
x[76]: 1
x[81]: 1
x[88]: 1
x[93]: 1
x[95]: 1
x[100]: 1
x[105]: 1
x[111]: 1
x[112]: 1
x[117]: 1
x[122]: 1
x[129]: 1
x[134]: 1
x[138]: 1
x[141]: 1
x[146]: 1
x[148]: 1
x[158]: 1
x[164]: 1
x[165]: 1
x[167]: 1
x[168]: 1
x[170]: 1
x[175]: 1
x[184]: 1
x[187]: 1
x[191]: 1
x[194]: 1
Time used by MIP2: 23048.6 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (47): 3, 7, 11, 14, 15, 19, 23, 27, 31, 35, 40, 43, 47, 52, 59, 64, 69, 70, 71, 76, 81, 88, 93, 95, 100, 105, 111, 112, 117, 122, 129, 134, 138, 141, 146, 148, 158, 164, 165, 167, 168, 170, 175, 184, 187, 191, 194

grid_15x15.txt
Time used by Floyd-Warshall: 231.707 ms
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
Optimize a model with 450 rows, 225 columns and 2130 nonzeros
Model fingerprint: 0x2c60a6e9
Variable types: 0 continuous, 225 integer (225 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 67.0000000
Presolve removed 225 rows and 0 columns
Presolve time: 0.00s
Presolved: 225 rows, 225 columns, 1065 nonzeros
Variable types: 0 continuous, 225 integer (225 binary)

Root relaxation: objective 4.852611e+01, 523 iterations, 0.01 seconds (0.01 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   48.52611    0  225   67.00000   48.52611  27.6%     -    0s
     0     0   48.87362    0  215   67.00000   48.87362  27.1%     -    0s
H    0     0                      63.0000000   48.87362  22.4%     -    0s
     0     0   48.87737    0  217   63.00000   48.87737  22.4%     -    0s
     0     0   48.87885    0  216   63.00000   48.87885  22.4%     -    0s
     0     0   48.87885    0  216   63.00000   48.87885  22.4%     -    0s
     0     0   48.90782    0  220   63.00000   48.90782  22.4%     -    0s
     0     0   48.90951    0  220   63.00000   48.90951  22.4%     -    0s
     0     0   48.90951    0  220   63.00000   48.90951  22.4%     -    0s
     0     0   48.93658    0  222   63.00000   48.93658  22.3%     -    0s
H    0     0                      62.0000000   48.93658  21.1%     -    0s
     0     0   48.93912    0  223   62.00000   48.93912  21.1%     -    0s
     0     0   48.94104    0  222   62.00000   48.94104  21.1%     -    0s
     0     0   48.94174    0  224   62.00000   48.94174  21.1%     -    0s
     0     0   48.94215    0  224   62.00000   48.94215  21.1%     -    0s
     0     0   48.97649    0  224   62.00000   48.97649  21.0%     -    0s
     0     0   48.98756    0  223   62.00000   48.98756  21.0%     -    0s
     0     0   48.98969    0  225   62.00000   48.98969  21.0%     -    0s
     0     0   48.98999    0  225   62.00000   48.98999  21.0%     -    0s
     0     0   49.02043    0  225   62.00000   49.02043  20.9%     -    0s
H    0     0                      61.0000000   49.02043  19.6%     -    0s
     0     0   49.03133    0  225   61.00000   49.03133  19.6%     -    0s
     0     0   49.03277    0  225   61.00000   49.03277  19.6%     -    0s
     0     0   49.03399    0  225   61.00000   49.03399  19.6%     -    0s
     0     0   49.03400    0  225   61.00000   49.03400  19.6%     -    0s
     0     0   49.04771    0  223   61.00000   49.04771  19.6%     -    0s
     0     0   49.05054    0  225   61.00000   49.05054  19.6%     -    0s
     0     0   49.05452    0  222   61.00000   49.05452  19.6%     -    0s
     0     0   49.05452    0  222   61.00000   49.05452  19.6%     -    0s
     0     0   49.07120    0  225   61.00000   49.07120  19.6%     -    0s
     0     0   49.07463    0  225   61.00000   49.07463  19.5%     -    0s
     0     0   49.07921    0  224   61.00000   49.07921  19.5%     -    0s
     0     0   49.07921    0  224   61.00000   49.07921  19.5%     -    0s
     0     0   49.07921    0  223   61.00000   49.07921  19.5%     -    0s
     0     0   49.07981    0  223   61.00000   49.07981  19.5%     -    0s
     0     0   49.08023    0  225   61.00000   49.08023  19.5%     -    0s
     0     0   49.08023    0  224   61.00000   49.08023  19.5%     -    0s
H    0     0                      60.0000000   49.08023  18.2%     -    0s
     0     2   49.08023    0  224   60.00000   49.08023  18.2%     -    0s
H   32    27                      56.0000000   49.08023  12.4%  50.6    0s
H   70    53                      55.0000000   49.21123  10.5%  50.4    0s
*  180    95              23      54.0000000   49.37474  8.57%  47.9    0s
H 1011   331                      53.0000000   49.90599  5.84%  49.0    3s
  1844   595   50.85493   25  176   53.00000   50.23778  5.21%  49.1    5s
  4824  1628   51.46382   31  173   53.00000   50.69814  4.34%  46.7   10s
  8364  2397   51.94341   33  167   53.00000   50.91855  3.93%  44.6   15s
 10203  2701   51.26940   27  224   53.00000   51.00087  3.77%  43.8   21s
 10242  2727   51.16501   29  225   53.00000   51.00087  3.77%  43.6   25s
 10704  2766   51.49448   35  174   53.00000   51.00087  3.77%  45.9   30s
 11758  2570   51.75000   37  171   53.00000   51.28503  3.24%  50.3   35s
 13182  1818   51.99305   40  169   53.00000   51.79180  2.28%  54.0   40s

Cutting planes:
  Gomory: 4
  MIR: 16
  Flow cover: 145
  Zero half: 43

Explored 13264 nodes (717010 simplex iterations) in 40.13 seconds (41.35 work units)
Thread count was 1 (of 8 available processors)

Solution count 9: 53 54 55 ... 67

Optimal solution found (tolerance 1.00e-04)
Best objective 5.300000000000e+01, best bound 5.300000000000e+01, gap 0.0000%

User-callback calls 41988, time in user-callback 0.89 sec
done.
Success! Status: 2.
Objective value: 53
x[2]: 1
x[6]: 1
x[9]: 1
x[13]: 1
x[15]: 1
x[19]: 1
x[24]: 1
x[26]: 1
x[32]: 1
x[37]: 1
x[42]: 1
x[44]: 1
x[46]: 1
x[50]: 1
x[55]: 1
x[63]: 1
x[68]: 1
x[73]: 1
x[75]: 1
x[81]: 1
x[86]: 1
x[92]: 1
x[94]: 1
x[99]: 1
x[104]: 1
x[107]: 1
x[112]: 1
x[117]: 1
x[120]: 1
x[125]: 1
x[130]: 1
x[138]: 1
x[143]: 1
x[148]: 1
x[149]: 1
x[151]: 1
x[156]: 1
x[161]: 1
x[169]: 1
x[174]: 1
x[179]: 1
x[180]: 1
x[182]: 1
x[186]: 1
x[187]: 1
x[192]: 1
x[198]: 1
x[205]: 1
x[209]: 1
x[211]: 1
x[215]: 1
x[218]: 1
x[222]: 1
Time used by MIP2: 40372.9 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (53): 2, 6, 9, 13, 15, 19, 24, 26, 32, 37, 42, 44, 46, 50, 55, 63, 68, 73, 75, 81, 86, 92, 94, 99, 104, 107, 112, 117, 120, 125, 130, 138, 143, 148, 149, 151, 156, 161, 169, 174, 179, 180, 182, 186, 187, 192, 198, 205, 209, 211, 215, 218, 222

grid_16x16.txt
Time used by Floyd-Warshall: 336.63 ms
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
Optimize a model with 512 rows, 256 columns and 2432 nonzeros
Model fingerprint: 0x9843f02d
Variable types: 0 continuous, 256 integer (256 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 78.0000000
Presolve removed 256 rows and 0 columns
Presolve time: 0.00s
Presolved: 256 rows, 256 columns, 1216 nonzeros
Variable types: 0 continuous, 256 integer (256 binary)

Root relaxation: objective 5.481292e+01, 660 iterations, 0.02 seconds (0.02 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   54.81292    0  252   78.00000   54.81292  29.7%     -    0s
H    0     0                      76.0000000   54.81292  27.9%     -    0s
     0     0   55.00125    0  253   76.00000   55.00125  27.6%     -    0s
H    0     0                      67.0000000   55.00125  17.9%     -    0s
     0     0   55.01505    0  251   67.00000   55.01505  17.9%     -    0s
     0     0   55.07333    0  248   67.00000   55.07333  17.8%     -    0s
     0     0   55.08824    0  251   67.00000   55.08824  17.8%     -    0s
     0     0   55.10311    0  253   67.00000   55.10311  17.8%     -    0s
     0     0   55.10513    0  250   67.00000   55.10513  17.8%     -    0s
     0     0   55.10545    0  251   67.00000   55.10545  17.8%     -    0s
     0     0   55.10569    0  251   67.00000   55.10569  17.8%     -    0s
     0     0   55.10577    0  251   67.00000   55.10577  17.8%     -    0s
     0     0   55.12735    0  247   67.00000   55.12735  17.7%     -    0s
     0     0   55.14454    0  251   67.00000   55.14454  17.7%     -    0s
     0     0   55.14888    0  251   67.00000   55.14888  17.7%     -    0s
     0     0   55.15369    0  251   67.00000   55.15369  17.7%     -    0s
     0     0   55.15965    0  251   67.00000   55.15965  17.7%     -    0s
     0     0   55.16049    0  251   67.00000   55.16049  17.7%     -    0s
     0     0   55.16089    0  251   67.00000   55.16089  17.7%     -    0s
     0     0   55.23377    0  255   67.00000   55.23377  17.6%     -    0s
     0     0   55.23387    0  253   67.00000   55.23387  17.6%     -    0s
     0     0   55.27590    0  253   67.00000   55.27590  17.5%     -    0s
     0     0   55.27926    0  253   67.00000   55.27926  17.5%     -    0s
     0     0   55.27966    0  253   67.00000   55.27966  17.5%     -    0s
     0     0   55.31916    0  255   67.00000   55.31916  17.4%     -    0s
     0     0   55.33922    0  253   67.00000   55.33922  17.4%     -    0s
     0     0   55.34213    0  254   67.00000   55.34213  17.4%     -    0s
     0     0   55.34265    0  254   67.00000   55.34265  17.4%     -    0s
     0     0   55.37878    0  254   67.00000   55.37878  17.3%     -    0s
     0     0   55.37913    0  254   67.00000   55.37913  17.3%     -    0s
     0     0   55.38234    0  256   67.00000   55.38234  17.3%     -    0s
H    0     0                      63.0000000   55.38234  12.1%     -    0s
H    0     0                      62.0000000   55.38234  10.7%     -    0s
     0     2   55.38331    0  256   62.00000   55.38331  10.7%     -    0s
*  108    76              25      61.0000000   55.76040  8.59%  56.0    0s
  1220   558   58.73840   29  197   61.00000   56.70983  7.03%  53.5    5s
  2889  1587   57.66182   21  212   61.00000   57.11451  6.37%  55.9   10s
  4702  2742   58.81551   24  181   61.00000   57.27518  6.11%  56.5   15s
  6627  3893   57.67822   25  205   61.00000   57.40587  5.89%  56.2   20s
  8845  5209   58.78925   35  193   61.00000   57.50868  5.72%  55.5   25s
 10203  6006   58.52837   31  256   61.00000   57.55337  5.65%  55.2   33s
 10218  6016   58.31152   23  256   61.00000   57.55337  5.65%  55.1   35s
 10242  6034   57.55337   20  232   61.00000   57.55337  5.65%  55.4   40s
*10490  5769              42      60.0000000   57.55337  4.08%  56.8   42s
 10917  5800   58.96372   36  178   60.00000   57.69758  3.84%  58.5   45s
 11692  5780   58.72481   29  204   60.00000   57.97149  3.38%  61.1   50s
 12696  5637     cutoff   32        60.00000   58.18719  3.02%  64.4   55s
 13806  5341   58.61024   30  209   60.00000   58.34130  2.76%  67.2   60s
 14862  4939   58.65493   28  214   60.00000   58.45426  2.58%  69.1   65s
 15961  4380   58.99601   28  209   60.00000   58.58012  2.37%  70.8   70s

Cutting planes:
  Gomory: 8
  MIR: 15
  Flow cover: 199
  Zero half: 25
  Mod-K: 12

Explored 17121 nodes (1226368 simplex iterations) in 74.23 seconds (76.20 work units)
Thread count was 1 (of 8 available processors)

Solution count 7: 60 61 62 ... 78

Optimal solution found (tolerance 1.00e-04)
Best objective 6.000000000000e+01, best bound 6.000000000000e+01, gap 0.0000%

User-callback calls 57394, time in user-callback 1.56 sec
done.
Success! Status: 2.
Objective value: 60
x[2]: 1
x[5]: 1
x[9]: 1
x[10]: 1
x[14]: 1
x[16]: 1
x[23]: 1
x[28]: 1
x[35]: 1
x[36]: 1
x[41]: 1
x[47]: 1
x[49]: 1
x[54]: 1
x[59]: 1
x[61]: 1
x[67]: 1
x[72]: 1
x[77]: 1
x[80]: 1
x[85]: 1
x[90]: 1
x[95]: 1
x[98]: 1
x[103]: 1
x[108]: 1
x[112]: 1
x[116]: 1
x[121]: 1
x[126]: 1
x[129]: 1
x[134]: 1
x[139]: 1
x[147]: 1
x[152]: 1
x[157]: 1
x[159]: 1
x[160]: 1
x[165]: 1
x[170]: 1
x[178]: 1
x[183]: 1
x[188]: 1
x[190]: 1
x[194]: 1
x[196]: 1
x[201]: 1
x[208]: 1
x[214]: 1
x[219]: 1
x[221]: 1
x[223]: 1
x[227]: 1
x[231]: 1
x[232]: 1
x[236]: 1
x[241]: 1
x[245]: 1
x[250]: 1
x[254]: 1
Time used by MIP2: 74629.9 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (60): 2, 5, 9, 10, 14, 16, 23, 28, 35, 36, 41, 47, 49, 54, 59, 61, 67, 72, 77, 80, 85, 90, 95, 98, 103, 108, 112, 116, 121, 126, 129, 134, 139, 147, 152, 157, 159, 160, 165, 170, 178, 183, 188, 190, 194, 196, 201, 208, 214, 219, 221, 223, 227, 231, 232, 236, 241, 245, 250, 254

grid_17x17.txt
Time used by Floyd-Warshall: 454.662 ms
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
Optimize a model with 578 rows, 289 columns and 2754 nonzeros
Model fingerprint: 0xc9980df8
Variable types: 0 continuous, 289 integer (289 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 84.0000000
Presolve removed 289 rows and 0 columns
Presolve time: 0.00s
Presolved: 289 rows, 289 columns, 1377 nonzeros
Variable types: 0 continuous, 289 integer (289 binary)

Root relaxation: objective 6.171479e+01, 870 iterations, 0.03 seconds (0.02 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   61.71479    0  282   84.00000   61.71479  26.5%     -    0s
     0     0   61.96389    0  280   84.00000   61.96389  26.2%     -    0s
     0     0   61.97841    0  281   84.00000   61.97841  26.2%     -    0s
     0     0   61.98556    0  282   84.00000   61.98556  26.2%     -    0s
     0     0   61.99442    0  282   84.00000   61.99442  26.2%     -    0s
     0     0   61.99616    0  282   84.00000   61.99616  26.2%     -    0s
     0     0   61.99627    0  282   84.00000   61.99627  26.2%     -    0s
     0     0   62.04206    0  285   84.00000   62.04206  26.1%     -    0s
H    0     0                      79.0000000   62.04206  21.5%     -    0s
H    0     0                      77.0000000   62.04206  19.4%     -    0s
     0     0   62.05015    0  286   77.00000   62.05015  19.4%     -    0s
     0     0   62.05613    0  285   77.00000   62.05613  19.4%     -    0s
     0     0   62.05617    0  286   77.00000   62.05617  19.4%     -    0s
     0     0   62.08286    0  283   77.00000   62.08286  19.4%     -    0s
     0     0   62.08386    0  285   77.00000   62.08386  19.4%     -    0s
     0     0   62.08590    0  286   77.00000   62.08590  19.4%     -    0s
     0     0   62.08828    0  284   77.00000   62.08828  19.4%     -    0s
     0     0   62.08888    0  284   77.00000   62.08888  19.4%     -    0s
     0     0   62.14681    0  285   77.00000   62.14681  19.3%     -    0s
     0     0   62.17187    0  284   77.00000   62.17187  19.3%     -    0s
     0     0   62.19630    0  282   77.00000   62.19630  19.2%     -    0s
     0     0   62.19638    0  286   77.00000   62.19638  19.2%     -    0s
     0     0   62.20427    0  283   77.00000   62.20427  19.2%     -    0s
     0     0   62.20620    0  285   77.00000   62.20620  19.2%     -    0s
     0     0   62.20994    0  283   77.00000   62.20994  19.2%     -    0s
     0     0   62.21043    0  285   77.00000   62.21043  19.2%     -    0s
     0     0   62.21050    0  285   77.00000   62.21050  19.2%     -    0s
     0     0   62.24028    0  289   77.00000   62.24028  19.2%     -    0s
     0     0   62.24220    0  287   77.00000   62.24220  19.2%     -    0s
     0     0   62.24326    0  288   77.00000   62.24326  19.2%     -    0s
     0     0   62.24362    0  289   77.00000   62.24362  19.2%     -    0s
     0     0   62.25569    0  289   77.00000   62.25569  19.1%     -    0s
     0     0   62.25571    0  289   77.00000   62.25571  19.1%     -    0s
     0     0   62.25571    0  289   77.00000   62.25571  19.1%     -    0s
     0     0   62.25571    0  289   77.00000   62.25571  19.1%     -    0s
H    0     0                      76.0000000   62.25571  18.1%     -    0s
     0     2   62.25571    0  289   76.00000   62.25571  18.1%     -    0s
H   33    29                      71.0000000   62.25571  12.3%  59.9    0s
*   79    62              30      70.0000000   62.51485  10.7%  58.6    0s
H  118    75                      69.0000000   62.52280  9.39%  58.1    0s
*  122    60              27      68.0000000   62.52280  8.05%  56.5    0s
  1075   465   65.83047   37  225   68.00000   63.04131  7.29%  58.2    5s
  2650  1484   64.14837   21  247   68.00000   63.50795  6.61%  60.4   10s
  4292  2566   65.04249   25  231   68.00000   63.74860  6.25%  61.0   15s
  6012  3656   65.73972   36  227   68.00000   63.86417  6.08%  60.7   20s
  7868  4812   65.10362   36  215   68.00000   63.96530  5.93%  60.6   25s
  9742  5907   65.43593   33  214   68.00000   64.04073  5.82%  60.1   30s
 10203  6179   64.51840   28  289   68.00000   64.06104  5.79%  60.1   38s
 10227  6195   66.67759   37  289   68.00000   64.06104  5.79%  59.9   40s
 10249  6210   66.22930   33  289   68.00000   64.06104  5.79%  59.8   45s
 10254  6215   64.06104   31  276   68.00000   64.06104  5.79%  60.2   50s
 10882  6452   64.96223   39  254   68.00000   64.42159  5.26%  64.6   55s
 11398  6608   66.28703   50  218   68.00000   64.64176  4.94%  68.3   60s
 11851  6723   65.48393   38  236   68.00000   64.76194  4.76%  71.6   65s
 12369  6851   66.64089   52  227   68.00000   64.85734  4.62%  74.7   70s
 12917  6962   65.57632   39  239   68.00000   64.94075  4.50%  78.1   75s
 13452  7087   66.88559   45  219   68.00000   65.00165  4.41%  81.6   80s
 13979  7156   66.86488   55  217   68.00000   65.07858  4.30%  84.5   85s
 14571  7243   66.69523   45  215   68.00000   65.13522  4.21%  87.4   90s
 15173  7312   65.45585   38  259   68.00000   65.17286  4.16%  90.0   95s
 15620  7367   66.01441   41  248   68.00000   65.19665  4.12%  91.6  100s
 16274  7447   65.91441   39  227   68.00000   65.23246  4.07%  94.0  105s
 16408  7465   66.21286   47  235   68.00000   65.23756  4.06%  94.5  110s
 17002  7526     cutoff   52        68.00000   65.26643  4.02%  96.5  115s
grid_18x18.txt
Time used by Floyd-Warshall: 657.549 ms
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
Optimize a model with 648 rows, 324 columns and 3096 nonzeros
Model fingerprint: 0xe582cf08
Variable types: 0 continuous, 324 integer (324 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 93.0000000
Presolve removed 324 rows and 0 columns
Presolve time: 0.00s
Presolved: 324 rows, 324 columns, 1548 nonzeros
Variable types: 0 continuous, 324 integer (324 binary)

Root relaxation: objective 6.908677e+01, 1102 iterations, 0.04 seconds (0.04 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   69.08677    0  302   93.00000   69.08677  25.7%     -    0s
     0     0   69.17048    0  317   93.00000   69.17048  25.6%     -    0s
H    0     0                      89.0000000   69.17048  22.3%     -    0s
     0     0   69.24018    0  314   89.00000   69.24018  22.2%     -    0s
     0     0   69.27793    0  318   89.00000   69.27793  22.2%     -    0s
     0     0   69.27962    0  318   89.00000   69.27962  22.2%     -    0s
     0     0   69.31419    0  318   89.00000   69.31419  22.1%     -    0s
     0     0   69.31616    0  321   89.00000   69.31616  22.1%     -    0s
     0     0   69.31747    0  320   89.00000   69.31747  22.1%     -    0s
     0     0   69.31792    0  317   89.00000   69.31792  22.1%     -    0s
     0     0   69.31844    0  320   89.00000   69.31844  22.1%     -    0s
     0     0   69.32532    0  320   89.00000   69.32532  22.1%     -    0s
H    0     0                      85.0000000   69.32532  18.4%     -    0s
     0     0   69.32919    0  320   85.00000   69.32919  18.4%     -    0s
     0     0   69.32939    0  320   85.00000   69.32939  18.4%     -    0s
     0     0   69.33699    0  321   85.00000   69.33699  18.4%     -    0s
H    0     0                      84.0000000   69.33699  17.5%     -    0s
     0     0   69.34279    0  319   84.00000   69.34279  17.4%     -    0s
     0     0   69.34536    0  320   84.00000   69.34536  17.4%     -    0s
     0     0   69.34692    0  319   84.00000   69.34692  17.4%     -    0s
     0     0   69.34734    0  319   84.00000   69.34734  17.4%     -    0s
     0     0   69.34759    0  319   84.00000   69.34759  17.4%     -    0s
     0     0   69.35516    0  322   84.00000   69.35516  17.4%     -    0s
     0     0   69.35896    0  322   84.00000   69.35896  17.4%     -    0s
     0     0   69.35935    0  322   84.00000   69.35935  17.4%     -    0s
     0     0   69.35994    0  322   84.00000   69.35994  17.4%     -    0s
     0     0   69.36045    0  322   84.00000   69.36045  17.4%     -    0s
     0     0   69.36055    0  322   84.00000   69.36055  17.4%     -    0s
     0     0   69.37373    0  320   84.00000   69.37373  17.4%     -    0s
H    0     0                      83.0000000   69.37373  16.4%     -    0s
     0     0   69.38394    0  324   83.00000   69.38394  16.4%     -    0s
     0     0   69.38549    0  322   83.00000   69.38549  16.4%     -    0s
     0     0   69.38612    0  322   83.00000   69.38612  16.4%     -    0s
     0     0   69.43120    0  322   83.00000   69.43120  16.3%     -    0s
     0     0   69.43736    0  323   83.00000   69.43736  16.3%     -    0s
     0     0   69.43818    0  322   83.00000   69.43818  16.3%     -    0s
     0     0   69.43838    0  324   83.00000   69.43838  16.3%     -    0s
     0     0   69.47668    0  318   83.00000   69.47668  16.3%     -    0s
     0     0   69.49261    0  322   83.00000   69.49261  16.3%     -    0s
     0     0   69.49389    0  320   83.00000   69.49389  16.3%     -    0s
     0     0   69.49392    0  320   83.00000   69.49392  16.3%     -    0s
     0     0   69.55677    0  323   83.00000   69.55677  16.2%     -    0s
     0     0   69.56032    0  323   83.00000   69.56032  16.2%     -    0s
     0     0   69.58784    0  323   83.00000   69.58784  16.2%     -    0s
     0     0   69.58812    0  323   83.00000   69.58812  16.2%     -    0s
     0     0   69.60496    0  319   83.00000   69.60496  16.1%     -    0s
     0     0   69.60568    0  320   83.00000   69.60568  16.1%     -    0s
     0     0   69.60585    0  322   83.00000   69.60585  16.1%     -    0s
     0     0   69.63085    0  317   83.00000   69.63085  16.1%     -    0s
     0     0   69.63148    0  319   83.00000   69.63148  16.1%     -    0s
     0     0   69.64726    0  318   83.00000   69.64726  16.1%     -    0s
     0     0   69.65120    0  321   83.00000   69.65120  16.1%     -    0s
     0     0   69.65142    0  322   83.00000   69.65142  16.1%     -    0s
     0     0   69.66115    0  319   83.00000   69.66115  16.1%     -    0s
     0     0   69.66274    0  321   83.00000   69.66274  16.1%     -    0s
     0     0   69.66343    0  321   83.00000   69.66343  16.1%     -    0s
     0     0   69.66344    0  321   83.00000   69.66344  16.1%     -    0s
     0     0   69.69173    0  317   83.00000   69.69173  16.0%     -    0s
     0     0   69.69714    0  319   83.00000   69.69714  16.0%     -    0s
     0     0   69.69852    0  319   83.00000   69.69852  16.0%     -    0s
     0     0   69.71630    0  320   83.00000   69.71630  16.0%     -    0s
     0     0   69.71682    0  320   83.00000   69.71682  16.0%     -    0s
     0     0   69.72828    0  319   83.00000   69.72828  16.0%     -    0s
     0     0   69.72849    0  320   83.00000   69.72849  16.0%     -    0s
     0     0   69.80611    0  320   83.00000   69.80611  15.9%     -    0s
     0     0   69.82219    0  319   83.00000   69.82219  15.9%     -    0s
     0     0   69.91505    0  317   83.00000   69.91505  15.8%     -    0s
     0     0   69.91927    0  319   83.00000   69.91927  15.8%     -    0s
     0     0   69.91942    0  321   83.00000   69.91942  15.8%     -    0s
     0     0   69.99414    0  316   83.00000   69.99414  15.7%     -    0s
     0     0   70.00911    0  318   83.00000   70.00911  15.7%     -    0s
     0     0   70.00968    0  322   83.00000   70.00968  15.7%     -    0s
     0     0   70.10721    0  316   83.00000   70.10721  15.5%     -    0s
     0     0   70.11897    0  320   83.00000   70.11897  15.5%     -    0s
     0     0   70.11949    0  320   83.00000   70.11949  15.5%     -    0s
     0     0   70.16900    0  313   83.00000   70.16900  15.5%     -    0s
     0     0   70.18882    0  316   83.00000   70.18882  15.4%     -    0s
     0     0   70.19263    0  318   83.00000   70.19263  15.4%     -    0s
     0     0   70.19356    0  319   83.00000   70.19356  15.4%     -    0s
     0     0   70.19361    0  321   83.00000   70.19361  15.4%     -    0s
     0     0   70.19714    0  321   83.00000   70.19714  15.4%     -    0s
     0     0   70.19757    0  322   83.00000   70.19757  15.4%     -    0s
     0     0   70.19925    0  319   83.00000   70.19925  15.4%     -    0s
     0     2   70.19939    0  319   83.00000   70.19939  15.4%     -    1s
*   41    41              31      79.0000000   70.19990  11.1%  61.0    1s
H   81    68                      78.0000000   70.44502  9.69%  73.2    1s
H  173   125                      77.0000000   70.56800  8.35%  70.7    1s
H  300   167                      76.0000000   70.66001  7.03%  68.5    2s
   617   334   71.26920   18  281   76.00000   70.84221  6.79%  76.3    5s
  1850  1002   71.95073   28  277   76.00000   71.15415  6.38%  80.7   10s
  2937  1747   73.99544   35  235   76.00000   71.35268  6.11%  83.4   15s
  4142  2571   72.20782   29  267   76.00000   71.47120  5.96%  83.5   20s
  5424  3479   74.24661   43  228   76.00000   71.58366  5.81%  83.4   25s
  6649  4296   73.41340   31  248   76.00000   71.67602  5.69%  83.7   30s
  8087  5278   72.06695   26  259   76.00000   71.73888  5.61%  83.5   35s
  9469  6196   72.77599   25  256   76.00000   71.80937  5.51%  83.5   40s
 10203  6665   73.70921   34  319   76.00000   71.83437  5.48%  83.4   52s
 10231  6684   73.67085   32  324   76.00000   71.83437  5.48%  83.1   56s
 10237  6690   71.83437   26  305   76.00000   71.83437  5.48%  83.5   60s
 10623  6855   73.44649   35  258   76.00000   71.83437  5.48%  85.3   65s
 11282  7080   73.33484   32  280   76.00000   71.89385  5.40%  88.4   70s
 11720  7196   72.85095   32  278   76.00000   72.02368  5.23%  89.6   75s
 12274  7335   72.77560   35  275   76.00000   72.13878  5.08%  91.5   80s
 12833  7511   74.56313   47  201   76.00000   72.20590  4.99%  93.9   85s
 13528  7732   74.60510   44  207   76.00000   72.25623  4.93%  96.6   90s
 13888  7817   72.73920   31  287   76.00000   72.29408  4.88%  97.8   95s
 14557  8013   73.74097   40  268   76.00000   72.36924  4.78%   100  100s
 15283  8221   74.83275   44  215   76.00000   72.42275  4.71%   102  105s
 15846  8390   74.82420   57  226   76.00000   72.46227  4.65%   104  110s
 16494  8544   74.27628   49  253   76.00000   72.49779  4.61%   105  115s
grid_19x19.txt
Time used by Floyd-Warshall: 895.015 ms
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
Optimize a model with 722 rows, 361 columns and 3458 nonzeros
Model fingerprint: 0x2e9a662f
Variable types: 0 continuous, 361 integer (361 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 105.0000000
Presolve removed 361 rows and 0 columns
Presolve time: 0.00s
Presolved: 361 rows, 361 columns, 1729 nonzeros
Variable types: 0 continuous, 361 integer (361 binary)

Root relaxation: objective 7.653022e+01, 1020 iterations, 0.04 seconds (0.04 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   76.53022    0  357  105.00000   76.53022  27.1%     -    0s
H    0     0                      99.0000000   76.53022  22.7%     -    0s
     0     0   76.65195    0  348   99.00000   76.65195  22.6%     -    0s
H    0     0                      98.0000000   76.65195  21.8%     -    0s
H    0     0                      97.0000000   76.65195  21.0%     -    0s
     0     0   76.67427    0  347   97.00000   76.67427  21.0%     -    0s
     0     0   76.93841    0  355   97.00000   76.93841  20.7%     -    0s
H    0     0                      96.0000000   76.93841  19.9%     -    0s
     0     0   76.93960    0  356   96.00000   76.93960  19.9%     -    0s
     0     0   76.97045    0  358   96.00000   76.97045  19.8%     -    0s
H    0     0                      95.0000000   76.97045  19.0%     -    0s
     0     0   76.97315    0  360   95.00000   76.97315  19.0%     -    0s
     0     0   76.97760    0  361   95.00000   76.97760  19.0%     -    0s
     0     0   76.99238    0  359   95.00000   76.99238  19.0%     -    0s
     0     0   76.99655    0  358   95.00000   76.99655  19.0%     -    0s
     0     0   77.00384    0  356   95.00000   77.00384  18.9%     -    0s
     0     0   77.00494    0  358   95.00000   77.00494  18.9%     -    0s
     0     0   77.00539    0  359   95.00000   77.00539  18.9%     -    0s
     0     0   77.00555    0  358   95.00000   77.00555  18.9%     -    0s
     0     0   77.01483    0  361   95.00000   77.01483  18.9%     -    0s
     0     0   77.01794    0  360   95.00000   77.01794  18.9%     -    0s
     0     0   77.02388    0  359   95.00000   77.02388  18.9%     -    0s
     0     0   77.02404    0  361   95.00000   77.02404  18.9%     -    0s
     0     0   77.03138    0  361   95.00000   77.03138  18.9%     -    0s
H    0     0                      94.0000000   77.03138  18.1%     -    0s
     0     0   77.03309    0  361   94.00000   77.03309  18.0%     -    0s
     0     0   77.03478    0  361   94.00000   77.03478  18.0%     -    0s
     0     0   77.03529    0  361   94.00000   77.03529  18.0%     -    0s
     0     0   77.04471    0  361   94.00000   77.04471  18.0%     -    0s
     0     0   77.04578    0  361   94.00000   77.04578  18.0%     -    0s
     0     0   77.05014    0  361   94.00000   77.05014  18.0%     -    0s
     0     0   77.05014    0  361   94.00000   77.05014  18.0%     -    0s
H    0     0                      91.0000000   77.05014  15.3%     -    0s
     0     2   77.05038    0  361   91.00000   77.05038  15.3%     -    0s
H   54    54                      90.0000000   77.29024  14.1%  62.9    0s
*  111    83              42      86.0000000   77.39685  10.0%  60.3    0s
H  215   138                      85.0000000   77.64168  8.66%  60.0    1s
   579   356   81.45949   34  265   85.00000   77.74737  8.53%  65.4    5s
H 1232   603                      84.0000000   77.95114  7.20%  72.7    7s
  1692   869   82.64525   44  240   84.00000   78.11899  7.00%  74.3   10s
  2767  1674   81.40241   37  272   84.00000   78.36956  6.70%  76.9   15s
  3786  2435   80.53157   23  287   84.00000   78.53720  6.50%  77.7   20s
  4989  3299   80.97564   29  270   84.00000   78.68492  6.33%  77.7   25s
  6136  4132   82.93836   38  235   84.00000   78.73762  6.26%  78.3   30s
  7407  5016   82.91657   38  244   84.00000   78.81106  6.18%  77.6   35s
  8633  5856   81.89199   34  251   84.00000   78.86493  6.11%  77.3   40s
  9874  6714   79.71002   22  307   84.00000   78.91284  6.06%  77.1   45s
 10203  6943   79.80878   19  361   84.00000   78.92795  6.04%  77.1   57s
 10229  6960   81.88688   42  361   84.00000   78.92795  6.04%  76.9   60s
 10252  6976   79.12584   20  361   84.00000   78.92795  6.04%  76.7   66s
 10258  6982   79.03319   20  339   84.00000   78.92795  6.04%  77.3   70s
 10456  7081   79.86674   24  325   84.00000   79.25057  5.65%  79.2   75s
 10899  7267   82.13022   39  281   84.00000   79.60393  5.23%  82.2   80s
 11321  7418   82.76332   51  285   84.00000   79.81734  4.98%  85.0   85s
 11617  7517   81.35151   32  299   84.00000   79.85673  4.93%  86.4   90s
 11970  7660   80.66435   25  302   84.00000   79.89516  4.89%  88.0   95s
 12386  7769   81.86975   33  282   84.00000   79.95669  4.81%  89.6  100s
 12813  7916   80.34718   29  324   84.00000   80.02399  4.73%  91.2  105s
 13304  8071   82.50779   51  294   84.00000   80.08223  4.66%  92.8  110s
 13620  8164   81.11891   32  319   84.00000   80.10056  4.64%  93.7  115s
grid_20x20.txt
Time used by Floyd-Warshall: 1180.87 ms
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
Optimize a model with 800 rows, 400 columns and 3840 nonzeros
Model fingerprint: 0x73c05cb9
Variable types: 0 continuous, 400 integer (400 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 117.0000000
Presolve removed 400 rows and 0 columns
Presolve time: 0.00s
Presolved: 400 rows, 400 columns, 1920 nonzeros
Variable types: 0 continuous, 400 integer (400 binary)

Root relaxation: objective 8.466570e+01, 1272 iterations, 0.05 seconds (0.05 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   84.66570    0  400  117.00000   84.66570  27.6%     -    0s
     0     0   84.91816    0  393  117.00000   84.91816  27.4%     -    0s
H    0     0                     106.0000000   84.91816  19.9%     -    0s
     0     0   84.93923    0  396  106.00000   84.93923  19.9%     -    0s
     0     0   84.95470    0  397  106.00000   84.95470  19.9%     -    0s
     0     0   84.96385    0  396  106.00000   84.96385  19.8%     -    0s
     0     0   84.96503    0  396  106.00000   84.96503  19.8%     -    0s
     0     0   84.96508    0  396  106.00000   84.96508  19.8%     -    0s
     0     0   84.99445    0  396  106.00000   84.99445  19.8%     -    0s
     0     0   84.99730    0  397  106.00000   84.99730  19.8%     -    0s
     0     0   84.99791    0  397  106.00000   84.99791  19.8%     -    0s
     0     0   85.05152    0  399  106.00000   85.05152  19.8%     -    0s
     0     0   85.05580    0  399  106.00000   85.05580  19.8%     -    0s
     0     0   85.05606    0  399  106.00000   85.05606  19.8%     -    0s
     0     0   85.08736    0  398  106.00000   85.08736  19.7%     -    0s
H    0     0                     103.0000000   85.08736  17.4%     -    0s
H    0     0                     102.0000000   85.08736  16.6%     -    0s
     0     0   85.09442    0  400  102.00000   85.09442  16.6%     -    0s
     0     0   85.09442    0  400  102.00000   85.09442  16.6%     -    0s
     0     0   85.09442    0  400  102.00000   85.09442  16.6%     -    0s
H    0     0                     101.0000000   85.09442  15.7%     -    0s
     0     2   85.09442    0  400  101.00000   85.09442  15.7%     -    0s
*   65    61              45     100.0000000   85.09442  14.9%  82.9    0s
H   81    60                      99.0000000   85.36550  13.8%  87.0    0s
H  135   103                      97.0000000   85.36550  12.0%  79.9    1s
H  195   107                      94.0000000   85.36804  9.18%  75.0    1s
   527   300   85.70166   15  384   94.00000   85.70166  8.83%  74.0    5s
  1413   796   92.10490   75  252   94.00000   85.87503  8.64%  79.2   10s
  2432  1614   87.31150   24  345   94.00000   86.12347  8.38%  79.3   15s
H 3220  1957                      93.0000000   86.22368  7.29%  78.4   18s
  3560  2227   89.22283   39  288   93.00000   86.25697  7.25%  79.0   20s
  4660  3095   91.89087   45  258   93.00000   86.34481  7.16%  78.9   25s
  5708  3922   88.12699   32  327   93.00000   86.44475  7.05%  79.1   30s
  6812  4835   87.50442   29  326   93.00000   86.48104  7.01%  79.6   35s
  7916  5691   91.84628   53  272   93.00000   86.55734  6.93%  79.8   40s
* 8187  4810              67      92.0000000   86.57173  5.90%  79.8   41s
  9013  5386   88.53442   33  327   92.00000   86.61719  5.85%  79.9   45s
 10128  6180   89.20354   43  313   92.00000   86.69090  5.77%  80.1   50s
 10203  6236   88.76641   37  400   92.00000   86.69637  5.76%  80.1   63s
 10217  6245   87.73250   34  399   92.00000   86.69637  5.76%  80.0   65s
 10241  6261   87.99539   30  400   92.00000   86.85718  5.59%  79.8   70s
 10261  6275   89.07978   44  400   92.00000   86.91430  5.53%  79.7   75s
 10271  6283   87.02349   29  384   92.00000   86.91430  5.53%  80.4   80s
 10274  6285   87.21577   30  375   92.00000   87.10815  5.32%  80.5   85s
 10515  6410   88.93116   40  339   92.00000   87.34834  5.06%  83.2   90s
 10818  6521   88.60273   37  361   92.00000   87.46291  4.93%  86.2   95s
 11193  6690   90.99932   64  311   92.00000   87.57113  4.81%  90.1  100s
 11490  6809   90.75606   50  337   92.00000   87.73294  4.64%  93.7  105s
 11738  6885   90.31629   48  311   92.00000   87.85716  4.50%  96.1  110s
 12117  7008   89.32025   38  347   92.00000   87.96571  4.39%  99.2  115s
grid_4x4.txt
Time used by Floyd-Warshall: 0.137 ms
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
Optimize a model with 32 rows, 16 columns and 128 nonzeros
Model fingerprint: 0xbaaac57d
Variable types: 0 continuous, 16 integer (16 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 6.0000000
Presolve removed 16 rows and 0 columns
Presolve time: 0.00s
Presolved: 16 rows, 16 columns, 64 nonzeros
Variable types: 0 continuous, 16 integer (16 binary)

Root relaxation: objective 4.000000e+00, 11 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

*    0     0               0       4.0000000    4.00000  0.00%     -    0s

Explored 1 nodes (11 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 4 6 

Optimal solution found (tolerance 1.00e-04)
Best objective 4.000000000000e+00, best bound 4.000000000000e+00, gap 0.0000%

User-callback calls 215, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 4
x[1]: 1
x[7]: 1
x[8]: 1
x[14]: 1
Time used by MIP2: 22.545 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (4): 1, 7, 8, 14

grid_5x5.txt
Time used by Floyd-Warshall: 0.626 ms
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
Optimize a model with 50 rows, 25 columns and 210 nonzeros
Model fingerprint: 0x00322154
Variable types: 0 continuous, 25 integer (25 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 8.0000000
Presolve removed 25 rows and 0 columns
Presolve time: 0.00s
Presolved: 25 rows, 25 columns, 105 nonzeros
Variable types: 0 continuous, 25 integer (25 binary)

Root relaxation: objective 6.272727e+00, 36 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    6.27273    0   23    8.00000    6.27273  21.6%     -    0s
H    0     0                       7.0000000    6.27273  10.4%     -    0s
     0     0    6.27273    0   23    7.00000    6.27273  10.4%     -    0s

Explored 1 nodes (37 simplex iterations) in 0.00 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 7 8 

Optimal solution found (tolerance 1.00e-04)
Best objective 7.000000000000e+00, best bound 7.000000000000e+00, gap 0.0000%

User-callback calls 217, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 7
x[1]: 1
x[4]: 1
x[10]: 1
x[12]: 1
x[13]: 1
x[21]: 1
x[24]: 1
Time used by MIP2: 7.956 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (7): 1, 4, 10, 12, 13, 21, 24

grid_6x6.txt
Time used by Floyd-Warshall: 1.739 ms
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
Optimize a model with 72 rows, 36 columns and 312 nonzeros
Model fingerprint: 0x234589f1
Variable types: 0 continuous, 36 integer (36 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 11.0000000
Presolve removed 36 rows and 0 columns
Presolve time: 0.00s
Presolved: 36 rows, 36 columns, 156 nonzeros
Variable types: 0 continuous, 36 integer (36 binary)

Root relaxation: objective 8.750000e+00, 64 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    8.75000    0   28   11.00000    8.75000  20.5%     -    0s
H    0     0                      10.0000000    8.75000  12.5%     -    0s
     0     0    8.91667    0   31   10.00000    8.91667  10.8%     -    0s
     0     0    9.00000    0   14   10.00000    9.00000  10.0%     -    0s

Cutting planes:
  Gomory: 4
  MIR: 1
  Zero half: 2

Explored 1 nodes (89 simplex iterations) in 0.01 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 10 11 

Optimal solution found (tolerance 1.00e-04)
Best objective 1.000000000000e+01, best bound 1.000000000000e+01, gap 0.0000%

User-callback calls 231, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 10
x[1]: 1
x[4]: 1
x[10]: 1
x[12]: 1
x[14]: 1
x[18]: 1
x[23]: 1
x[27]: 1
x[31]: 1
x[35]: 1
Time used by MIP2: 14.896 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (10): 1, 4, 10, 12, 14, 18, 23, 27, 31, 35

grid_7x7.txt
Time used by Floyd-Warshall: 4.657 ms
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
Optimize a model with 98 rows, 49 columns and 434 nonzeros
Model fingerprint: 0x63486405
Variable types: 0 continuous, 49 integer (49 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 16.0000000
Presolve removed 49 rows and 0 columns
Presolve time: 0.00s
Presolved: 49 rows, 49 columns, 217 nonzeros
Variable types: 0 continuous, 49 integer (49 binary)

Root relaxation: objective 1.150000e+01, 98 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   11.50000    0   48   16.00000   11.50000  28.1%     -    0s
H    0     0                      14.0000000   11.50000  17.9%     -    0s
     0     0   11.68571    0   44   14.00000   11.68571  16.5%     -    0s
H    0     0                      13.0000000   11.68571  10.1%     -    0s
H    0     0                      12.0000000   11.68571  2.62%     -    0s
     0     0   11.68571    0   44   12.00000   11.68571  2.62%     -    0s

Cutting planes:
  MIR: 4
  Zero half: 3

Explored 1 nodes (110 simplex iterations) in 0.01 seconds (0.00 work units)
Thread count was 1 (of 8 available processors)

Solution count 4: 12 13 14 16 

Optimal solution found (tolerance 1.00e-04)
Best objective 1.200000000000e+01, best bound 1.200000000000e+01, gap 0.0000%

User-callback calls 235, time in user-callback 0.00 sec
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
Time used by MIP2: 21.134 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (12): 2, 4, 7, 13, 17, 22, 26, 31, 35, 41, 44, 46

grid_8x8.txt
Time used by Floyd-Warshall: 6.475 ms
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
Optimize a model with 128 rows, 64 columns and 576 nonzeros
Model fingerprint: 0xb0ba33e5
Variable types: 0 continuous, 64 integer (64 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 17.0000000
Presolve removed 64 rows and 0 columns
Presolve time: 0.00s
Presolved: 64 rows, 64 columns, 288 nonzeros
Variable types: 0 continuous, 64 integer (64 binary)

Root relaxation: objective 1.481481e+01, 128 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   14.81481    0   64   17.00000   14.81481  12.9%     -    0s
     0     0   15.01242    0   62   17.00000   15.01242  11.7%     -    0s
     0     0   15.06250    0   62   17.00000   15.06250  11.4%     -    0s
     0     0   15.07725    0   61   17.00000   15.07725  11.3%     -    0s
     0     0   15.08477    0   63   17.00000   15.08477  11.3%     -    0s
     0     0   15.13123    0   64   17.00000   15.13123  11.0%     -    0s
     0     0   15.13748    0   63   17.00000   15.13748  11.0%     -    0s
     0     0   15.14032    0   63   17.00000   15.14032  10.9%     -    0s
     0     0   15.14222    0   64   17.00000   15.14222  10.9%     -    0s
     0     0   15.15313    0   64   17.00000   15.15313  10.9%     -    0s
     0     0   15.16549    0   64   17.00000   15.16549  10.8%     -    0s
     0     0   15.17121    0   64   17.00000   15.17121  10.8%     -    0s
     0     0   15.17517    0   64   17.00000   15.17517  10.7%     -    0s
     0     0   15.17741    0   64   17.00000   15.17741  10.7%     -    0s
     0     0   15.18117    0   64   17.00000   15.18117  10.7%     -    0s
     0     0   15.18393    0   64   17.00000   15.18393  10.7%     -    0s
     0     0   15.18548    0   64   17.00000   15.18548  10.7%     -    0s
     0     0   15.18620    0   64   17.00000   15.18620  10.7%     -    0s
     0     0   15.19117    0   64   17.00000   15.19117  10.6%     -    0s
     0     0   15.20132    0   64   17.00000   15.20132  10.6%     -    0s
     0     0   15.20268    0   64   17.00000   15.20268  10.6%     -    0s
     0     0   15.20450    0   64   17.00000   15.20450  10.6%     -    0s
     0     0   15.20604    0   64   17.00000   15.20604  10.6%     -    0s
     0     0   15.20725    0   64   17.00000   15.20725  10.5%     -    0s
     0     0   15.21064    0   64   17.00000   15.21064  10.5%     -    0s
     0     0   15.21064    0   63   17.00000   15.21064  10.5%     -    0s
     0     0   15.21077    0   63   17.00000   15.21077  10.5%     -    0s
     0     0   15.21093    0   64   17.00000   15.21093  10.5%     -    0s
     0     0   15.21142    0   64   17.00000   15.21142  10.5%     -    0s
     0     0   15.21142    0   63   17.00000   15.21142  10.5%     -    0s
H    0     0                      16.0000000   15.21142  4.93%     -    0s
     0     0   15.21142    0   63   16.00000   15.21142  4.93%     -    0s

Cutting planes:
  Gomory: 10
  MIR: 7
  Zero half: 7

Explored 1 nodes (436 simplex iterations) in 0.06 seconds (0.04 work units)
Thread count was 1 (of 8 available processors)

Solution count 2: 16 17 

Optimal solution found (tolerance 1.00e-04)
Best objective 1.600000000000e+01, best bound 1.600000000000e+01, gap 0.0000%

User-callback calls 370, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 16
x[1]: 1
x[5]: 1
x[11]: 1
x[15]: 1
x[16]: 1
x[20]: 1
x[26]: 1
x[30]: 1
x[34]: 1
x[37]: 1
x[40]: 1
x[47]: 1
x[51]: 1
x[52]: 1
x[57]: 1
x[62]: 1
Time used by MIP2: 67.834 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (16): 1, 5, 11, 15, 16, 20, 26, 30, 34, 37, 40, 47, 51, 52, 57, 62

grid_9x9.txt
Time used by Floyd-Warshall: 9.76 ms
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
Optimize a model with 162 rows, 81 columns and 738 nonzeros
Model fingerprint: 0xae4340be
Variable types: 0 continuous, 81 integer (81 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+00]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 5e+00]
Found heuristic solution: objective 23.0000000
Presolve removed 81 rows and 0 columns
Presolve time: 0.00s
Presolved: 81 rows, 81 columns, 369 nonzeros
Variable types: 0 continuous, 81 integer (81 binary)

Root relaxation: objective 1.824590e+01, 203 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0   18.24590    0   77   23.00000   18.24590  20.7%     -    0s
H    0     0                      21.0000000   18.24590  13.1%     -    0s
     0     0   18.40558    0   76   21.00000   18.40558  12.4%     -    0s
     0     0   18.49515    0   76   21.00000   18.49515  11.9%     -    0s
     0     0   18.55615    0   75   21.00000   18.55615  11.6%     -    0s
     0     0   18.61019    0   75   21.00000   18.61019  11.4%     -    0s
     0     0   18.61380    0   75   21.00000   18.61380  11.4%     -    0s
     0     0   18.61930    0   77   21.00000   18.61930  11.3%     -    0s
     0     0   18.63480    0   79   21.00000   18.63480  11.3%     -    0s
     0     0   18.64745    0   77   21.00000   18.64745  11.2%     -    0s
     0     0   18.64832    0   76   21.00000   18.64832  11.2%     -    0s
     0     0   18.64850    0   75   21.00000   18.64850  11.2%     -    0s
     0     0   18.64958    0   76   21.00000   18.64958  11.2%     -    0s
     0     0   18.64983    0   75   21.00000   18.64983  11.2%     -    0s
     0     0   18.68408    0   77   21.00000   18.68408  11.0%     -    0s
     0     0   18.69589    0   78   21.00000   18.69589  11.0%     -    0s
     0     0   18.69659    0   79   21.00000   18.69659  11.0%     -    0s
     0     0   18.71075    0   79   21.00000   18.71075  10.9%     -    0s
     0     0   18.72872    0   77   21.00000   18.72872  10.8%     -    0s
     0     0   18.73098    0   78   21.00000   18.73098  10.8%     -    0s
     0     0   18.74279    0   77   21.00000   18.74279  10.7%     -    0s
     0     0   18.75153    0   75   21.00000   18.75153  10.7%     -    0s
     0     0   18.75265    0   76   21.00000   18.75265  10.7%     -    0s
     0     0   18.75675    0   79   21.00000   18.75675  10.7%     -    0s
     0     0   18.76025    0   79   21.00000   18.76025  10.7%     -    0s
     0     0   18.76064    0   78   21.00000   18.76064  10.7%     -    0s
     0     0   18.76490    0   77   21.00000   18.76490  10.6%     -    0s
     0     0   18.76575    0   78   21.00000   18.76575  10.6%     -    0s
     0     0   18.77207    0   79   21.00000   18.77207  10.6%     -    0s
     0     0   18.77279    0   79   21.00000   18.77279  10.6%     -    0s
     0     0   18.78335    0   79   21.00000   18.78335  10.6%     -    0s
     0     0   18.78652    0   77   21.00000   18.78652  10.5%     -    0s
     0     0   18.78841    0   79   21.00000   18.78841  10.5%     -    0s
     0     0   18.79056    0   76   21.00000   18.79056  10.5%     -    0s
     0     0   18.79715    0   79   21.00000   18.79715  10.5%     -    0s
     0     0   18.79921    0   79   21.00000   18.79921  10.5%     -    0s
     0     0   18.79996    0   78   21.00000   18.79996  10.5%     -    0s
     0     0   18.80049    0   79   21.00000   18.80049  10.5%     -    0s
     0     0   18.80117    0   75   21.00000   18.80117  10.5%     -    0s
     0     0   18.80136    0   76   21.00000   18.80136  10.5%     -    0s
     0     0   18.80383    0   79   21.00000   18.80383  10.5%     -    0s
     0     0   18.80463    0   78   21.00000   18.80463  10.5%     -    0s
     0     0   18.80979    0   80   21.00000   18.80979  10.4%     -    0s
     0     2   18.80995    0   80   21.00000   18.80995  10.4%     -    0s
*   35     4               7      20.0000000   19.45689  2.72%  27.3    0s

Cutting planes:
  Gomory: 16
  MIR: 19
  Zero half: 8

Explored 36 nodes (1905 simplex iterations) in 0.14 seconds (0.11 work units)
Thread count was 1 (of 8 available processors)

Solution count 3: 20 21 23 

Optimal solution found (tolerance 1.00e-04)
Best objective 2.000000000000e+01, best bound 2.000000000000e+01, gap 0.0000%

User-callback calls 532, time in user-callback 0.00 sec
done.
Success! Status: 2.
Objective value: 20
x[0]: 1
x[2]: 1
x[6]: 1
x[13]: 1
x[17]: 1
x[19]: 1
x[24]: 1
x[30]: 1
x[35]: 1
x[36]: 1
x[41]: 1
x[47]: 1
x[52]: 1
x[58]: 1
x[59]: 1
x[63]: 1
x[64]: 1
x[71]: 1
x[75]: 1
x[78]: 1
Time used by MIP2: 151.429 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (20): 0, 2, 6, 13, 17, 19, 24, 30, 35, 36, 41, 47, 52, 58, 59, 63, 64, 71, 75, 78

