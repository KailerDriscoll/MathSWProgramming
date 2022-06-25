%% Week 1 Exercise 3 - Kailer Driscoll

%% (a)
help linspace

%% (b)
doc linspace

%% (c)

% The colon (i:j:k) creates an array
% starting at i and incrementing by j until it reaches k.

% Logspace is identical to linspace except it increates logarithimically
% instead of linearly.

%% (d)
linspace(0,1,10)

%% (e)
w = 0:0.1:1

% linspace(0,1,10) uses 10 points between 0 and 1, which means it starts
% with 0 and goes up in 9 equal jumps of 0.111...

% w = 0:0.1:1 starts with 0 and moves up by 0.1 until it reaches 1 which
% uses 10 jumps rather than 9