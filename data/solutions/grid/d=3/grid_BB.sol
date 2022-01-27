 
grid_4x4.txt
Time used by Floyd-Warshall: 0.153 ms
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

Time used by Branch and Bound: 0.602 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (4): 1, 7, 8, 14

grid_5x5.txt
Time used by Floyd-Warshall: 0.436 ms
Time used by Branch and Bound: 23.829 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (7): 0, 4, 15, 19, 7, 22, 12

grid_6x6.txt
Time used by Floyd-Warshall: 0.886 ms
Time used by Branch and Bound: 3059.26 ms
Solution validity by algorihtm: 1
Solution validity by checker: 1
Computed solution (10): 0, 5, 24, 34, 2, 13, 23, 32, 10, 21

grid_7x7.txt
Time used by Floyd-Warshall: 2.995 ms
grid_8x8.txt
Time used by Floyd-Warshall: 7.356 ms
grid_9x9.txt
Time used by Floyd-Warshall: 11.921 ms
