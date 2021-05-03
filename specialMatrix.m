function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
if nargin ~= 2
    error('check number of inputs');
end

A = zeros(n, m);

% Now the real challenge is to fill in the correct values of A

%First define variables r and c for the number of rows and columns
[r, c] = size(A);

%iterate through the first row and fill in the value corresponding to the
%column number
for x = 1:c
    A(1, x) = x;
end

%iterate through the first column and fill in the value corresponding to
%the row number
for y = 1:r
    A(y, 1) = y;
end

%iterate through the matrix, skipping the first row and the first column
for y = 2:c;
   for x = 2:r;
       x
       y
       A(x, y) = A(x-1, y) + A(x, y-1)
   end
end
A();
    
end
% Things beyond here are outside of your function

