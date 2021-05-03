% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;
% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = linspace(0, 0.8, 100);

% Calculate the values of q
a = (-R.*t)./(2*L);
b = q0 * exp(a);
c = 1/(L*C);
d = (R)/(2*L);
q = b.* cos(sqrt(c-d^2).*t);
%q = q0 * exp((-R.*t)/(2*L)).*cos((sqrt((1/(L*C)))-(((R)/(2*L))^2)).*t)

% Plot q vs t
subplot(1, 2, 1)
plot(t, q)
xlabel('time')
ylabel('charge')
hold on
% Make the capacitor 10x bigger
C2 = 0.00005 * 10; 
c2 = 1/(L*C2);
q2 = b.* cos(sqrt(c2-d^2).*t);

% Plot q2 vs t
subplot(1,2,2)
plot(t, q2)
xlabel('time')
ylabel('charge')
hold off
