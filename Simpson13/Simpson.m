function [I] = Simpson(x, y)
trap = 0;
I = 0;
h=x(2)-x(1)
if length(x) ~= length(y)
    error('Check vector dimensions')
end
if length(x)==2;
    I = h*(y(1)+y(2))/2;
    warning('Trap rule used')
else
    xL = length(x);
    for i=2: xL -2
        se = x(i+1)-x(i);
        if se ~= h
            error('Vector values must be equally spaced')
        end
    end
    if mod(xL,2)==0;
        trap=1;
        a=xL-1;
        warning('Trap used')
    else
        a=xL;
    end
    for j=1: 2: a-2
        I = I+y(j)+4*y(j+1)+y(j+2);
    end
    
    I=h*I/3;
    if trap==1
        I=I+(y(xL)-y(xL-1))/h;
    end
end
end
