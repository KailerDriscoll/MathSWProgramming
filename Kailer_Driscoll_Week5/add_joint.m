function A = add_joint(A,f,p1,p2,th)
% Adds joints to matrix A to make a truss bridge
%   add_joint(A,f,p1,p2,th)
%   A, zero matrix with size of bridge
%   f, column to add joint
%   p1, starting row to add joint
%   p2, ending row to add joint
%   th, theta, angle of link

%% Part a
A([2*p1-1 2*p1],f) = -[cos(th) sin(th)];

%% Part b
A([2*p2-1 2*p2],f) = [cos(th) sin(th)];


end

