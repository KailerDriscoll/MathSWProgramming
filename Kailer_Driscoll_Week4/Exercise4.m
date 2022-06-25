% Exercise 4
clear
close all

R = [90 30 100 15 20 20 60];
W = [200 250 120 300];

%% Part a
G = 1./R

%% Part b
syms G1 G2 G3 G4 G5 G6 G7
syms W1 W2 W3 W4

A = [ G1+G2+G4    -G2           0
        -G2     G2+G3+G5     -G3-G5
          0      -G3-G5    G3+G5+G6+G7 ];

b = [ W1*G1-W2*G2
      W2*G2-W3*G3
      W3*G3-W4*G7 ];

%% Part C
A = subs(A, [G1,G2,G3,G4,G5,G6,G7], G)
b = subs(b, [W1,W2,W3,W4], W);
b = subs(b, [G1,G2,G3,G4,G5,G6,G7], G)

V = A\b

simplify(V)