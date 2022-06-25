% Week 10 Exercise 2
clear

% Duration (Time) s
T  = 0.3;

% Sampling frequency Hz = 1/s
fs = 2^(13);

% Time vector
t = 0:1/fs:T;

%% Part a
piano.harmonics = [0.6 0.2];
piano.envelope = min(40*t,1).*exp(-4*t);

%% Part b
mary2

%% Part c
w = [];
for i=1:(size(script,2))
    w = [w tone2(fs,script(i),piano)];
end
    sound(w,fs);