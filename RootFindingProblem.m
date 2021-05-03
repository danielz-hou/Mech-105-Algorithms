% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;
angle = [-90:90]

format long
% Define the function to be solved for. Is the angle specified in radians or degrees?
func = @(angle) (mu*m*g)./((cosd((angle)))+(mu*sind((angle))))-F;


% THINK, what makes range sense for angle?
L = -90;
U = 90;

% Plot your function. Does plotting give you an idea about where the root is?
plot(angle, func(angle));

% Finaly solve for the root using the bisection script given to you, which can be called as:
[root, fx, ea, iter] = bisect(func, L, U);
angle = root;
fprintf('Root: %.2f; Iterations: %.2f; Error: %.2f', root, iter, ea);

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations