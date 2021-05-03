function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
n = 2;
x = base10;
rem = 0;
i = 1;
base2 = 0;
while x > 0
    rem = mod(x, n);
    x = floor(x./n);
    base2(i) = rem;
    
    i = i+1;
end
base2 = flip(base2)
end