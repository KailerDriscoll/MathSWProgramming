%% Week 1 Exercise 2 - Kailer Driscoll

%% (a)
a = [-1, 0, 1]

%% (b)
b = [1, 5, 10]

%% (c)
a + b    % Simple vector addition [-1, 0, 1] + [1, 5, 10] = [0, 5, 11]

a + b'   % Vector addition with the transpose of b, but because the
         % dimensions are different, Matlab duplicates the rows/vectors of the
         % matrix to give both a 3x3 size. [-1, 0, 1] -> [-1,0,1; -1,0,1; -1,0,1]
         % |-1 0 1|   | 1  1  1|   |0   1   2|
         % |-1 0 1| + | 5  5  5| = |4   5   6|
         % |-1 0 1|   |10 10 10|   |9  10  11|

%% (d)
a .* b'  % This mutliplies each entry of a and b' but because the
         % dimensions are different, Matlab duplicates the rows/vectors of the
         % matrix to give both a 3x3 size. [-1, 0, 1] -> [-1,0,1; -1,0,1; -1,0,1]
         % |-1 0 1|    | 1  1  1|   |-1   0   1|
         % |-1 0 1| .* | 5  5  5| = |-5   0   5|
         % |-1 0 1|    |10 10 10|   |-10  0  10|

a' .* b % This does the same as above except a is transposed
         % |-1 -1 -1|    |1  5  10|   |-1  -5  -10|
         % | 0  0  0| .* |1  5  10| = |0    0    0|
         % | 1  1  1|    |1  5  10|   |1    5   10|

%% (e)
a * b'   % This performs matrix multiplication between a 1x3 and a 3x1 matrix
         %            | 1|
         % [-1 0 1] * | 5| = (-1*1)+(0*5)+(1*10) = 9
         %            |10|

a' * b   % This performs matrix multiplication between a 3x1 and a 1x3 matrix
         % |-1|                 |-1  -5  -10|
         % | 0| .* |1  5  10| = |0    0    0|
         % | 1|                 |1    5   10|

%% (f)

% a * b creates an error because matrix multiplication requires 2 matricies
% to have compatible dimensions where the number of columns of the first
% matrix must be equal to the number of rows of the second matrix. In this
% case, a has 1 column, but b has 3 rows, hence there is an error.