% Week 10 Exercise 1
clear

%% Part a
% Duration (Time) s
T  = 0.3;

% Sampling frequency Hz = 1/s
fs = 2^(13);

% Time vector
t = 0:1/fs:T;

mary;

%% Part b
w = [];
for i=1:(size(script,2))
    
    w = [w tone(fs,script(i))];
    
end

%% Part c
sound(w,fs);