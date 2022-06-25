clear
close all

%% Part (a)
q = linspace(0, 500);

%% Part (b)
P0 = 120;
aP = 3e-4;
P = P0 - aP*q.^2;

%% Part (c)
% How much voltage needed to push through
aN = 7e-4;
N = aN*q.^2;

%% Part (d)
figure(1)
hold on
plot(q, P)
plot(q, N)


%% Part (e)
e = abs(P-N);

%% Part (f)
plot(q(e == min(e)), P(e == min(e)), 'k*')
% The star is not exactly on the intersection

%% Part (g)
j = find(e == min(e));
q2 = linspace(q(j-1), q(j+1), 200);

%% Part (h)
figure(2)
hold on
plot(q, P)
plot(q, N)
plot(q2(j), P(j), 'k+', 'LineWidth', 2)
