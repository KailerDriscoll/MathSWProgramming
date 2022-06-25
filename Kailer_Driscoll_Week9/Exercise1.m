% Assignment 7 Exercise 1

%% Part a

r1 = 11;
r2 = 2;

x = @(t) (r1+r2)*cos(t) - r2*cos((r1/r2 + 1)*t);
y = @(t) (r1+r2)*sin(t) - r2*sin((r1/r2 + 1)*t);

%% Part b

t = linspace(0,4*pi,500);
plot(x(t), y(t))