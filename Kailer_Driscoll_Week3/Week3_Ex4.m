%% Part (a)
x = linspace(-1,1);

%% Part (b)
k=4;
f = exp(-k*x.^2);

%% Part (c)
g = diff(f);
hold on
plot(g)

%% Part (d)
[M1, x1] = (min(g));
[M2, x2] = (max(g));

%% Part (e)
plot([x1 x2], [M1 M2], 'r*')