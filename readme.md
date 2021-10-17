# Vaccination centers

In this project, the goal is to cleverly build vaccination centers in a city so that everyone lives near a vaccination center. This project will involve several steps:

* Modeling the problem.
* Implementation of algorithms solving the problem:
  - Brute force
  - Algorithms based on dynamic programming
  - Progressive algorithms
  - Approximation algorithms
  - etc.
* Testing your algorithms on different instances.
* Possible extensions.

## Files

For all files, if you want to include comments, we advise you do so at the beginning of the file. You can also write some in between categories, but comments inside a category may crash the program. Comments after a parsed line may also crash the program.

### Instances

#### Portable Pixmap files

```
P3 # PPM ASCII under RGB Format. It's the only supported format
3 2 # The image contains 3 columns and 2 rows
255 # Each R, G, B, component is represented by an integer between 0 and 255
255  0    0     0  255  0       0   0  255 # First row
0   255   0     0   0  255     255  0   0  # Second row
```

Each PPM file is associated with a config text file:

```
1 # scale 1, i.e., the image is not modified
0 255  0  0 # the index  of color (255,0,0) is 0
1 0 0 255 0 # the index of the green color is 1
3 0 0 255
```

#### Graph files

```
0: 3 5 7 
1: 2 3
2: 1 4 ...
...
n-1: ...
```

### Solutions

#### PPM Instances

```
1 4 # First center
3 5 # Second center
...
```

#### Graph instances

```
4 9 0 # Vertices in which centers are constructed. They must all be on the same line.
```

## How to use

### Checker

For PPM instances:

`<executable> checker <instance file> <config file> <solution>`

For graph instances:

`<executable> checker <instance file> <solution>`

### Solver

We have multiple solvers:

* Brute Force, represented by "BB"
* Mixed Integer Programming, represented by "MIP"
* Others to come

For PPM instances:

`<executable> solver <algorithm> <instance file> <config file> <output file>`

For graph instances:

`<executable> solver <algorithm> <instance file> <output file>`
