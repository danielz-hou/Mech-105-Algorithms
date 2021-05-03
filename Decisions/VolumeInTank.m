% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything


% Specify the height of the water
h = 20
d = 25;
r = d/2;
R = 46;
v_subtract = pi*(12.5^2)*((50/3)/3);
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
if h <= 19
    v = pi*(r^2)*h;
else
    v_cyl = pi*(r^2)*h;
    h2 = (h-(7/3));
    v_cone = pi*((26/2)^2)*((h2)/3);
    v_cone = v_cone - v_subtract;
    v = v_cyl + v_cone;

    v = 9847.51852;
    fprintf('volume equals %d', v);
end