% Assignment 7 Exercise 3

clear;
close all;

%% Part a
% Mechanism function

%% Part b

L = [3 25 4 24 26 6 24];
th = 4/6*pi;
x0 = [0 -pi/2 0 -pi/2];

x = fsolve(@(x) mechanism(th,x,L), x0);

%% Part c

D = [25 25];
p1 = [0; 0];
p2 = p1 + L(1)*[cos(th); sin(th)];
p3 = p2 + L(2)*[cos(x(1)); sin(x(1))];
p4 = p3 - L(3)*[cos(x(2)); sin(x(2))];
p5 = p3 + L(5)*[cos(x(3)); sin(x(3))];
p6 = p5 - L(6)*[cos(x(4)); sin(x(4))];

r2 = p4 - D(1)*[cos(x(2)); sin(x(2))];
s2 = p6 - D(2)*[cos(x(4)); sin(x(4))];

plot([p1(1) p2(1) p3(1) p4(1) p3(1) p5(1) p6(1)], [p1(2) p2(2) p3(2) p4(2) p3(2) p5(2) p6(2)]); % points
hold on
plot([p4(1) r2(1)], [p4(2) r2(2)], 'k'); % r2
plot([p6(1) s2(1)], [p6(2) s2(2)], 'k')  % s2

%% Part d

axis([-10 60 -10 60]);
hold off

%% Part e

figure();
for th = linspace(pi/2,13*pi/2,150)
    x = fsolve(@(x) mechanism(th,x,L), x0);

    p1 = [0; 0];
    p2 = p1 + L(1)*[cos(th); sin(th)];
    p3 = p2 + L(2)*[cos(x(1)); sin(x(1))];
    p4 = p3 - L(3)*[cos(x(2)); sin(x(2))];
    p5 = p3 + L(5)*[cos(x(3)); sin(x(3))];
    p6 = p5 - L(6)*[cos(x(4)); sin(x(4))];

    r2 = p4 - D(1)*[cos(x(2)); sin(x(2))];
    s2 = p6 - D(2)*[cos(x(4)); sin(x(4))];

    plot([p1(1) p2(1) p3(1) p4(1) p3(1) p5(1) p6(1)], [p1(2) p2(2) p3(2) p4(2) p3(2) p5(2) p6(2)], 'b'); % points
    hold on
    plot([p4(1) r2(1)], [p4(2) r2(2)], 'k'); % r2
    plot([p6(1) s2(1)], [p6(2) s2(2)], 'k'); % s2
    axis([-10 60 -10 60]);
    
    x0 = x; % Next guess is last approximation
    pause(0.05);
    
end
