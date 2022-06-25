% Excercise 2

close all
clear

%% Part a
A = [3  0 0 3 0   0  3
     0 -1 1 0 0   0  0
     0  0 0 0 0 -1/2 0];
 
 figure(1)
 plot3(A(1,:), A(2,:), A(3,:), 'b', 'LineWidth', 2)
 axis equal
 grid on
 hold on
 
 
%% Part b
 for phi = linspace(0, pi/2, 8)
    Az = Rz(phi) * A;
    plot3(Az(1,:), Az(2,:),Az(3,:), 'b--')
    pause(0.3)
 end
 
%% Part c

for theta = linspace(0, -pi/6, 6)
    Azy = Rz(pi/2) * Ry(theta) * A;
    plot3(Azy(1,:), Azy(2,:),Azy(3,:), 'g--')
    pause(0.3)
end
 

%% Part d

for psi = linspace(0, pi/4, 4)
    Azyx = Rz(pi/2) * Ry(-pi/6) * Rx(psi) * A;
    plot3(Azyx(1,:), Azyx(2,:),Azyx(3,:), 'r--')
    pause(0.3)
end

%% Part e
for psi = linspace(0, pi/4, 4)
    Azyx = Rz(pi/2) * Ry(-pi/6) * Rx(pi/4*psi) * A;
    plot3(Azyx(1,:), Azyx(2,:),Azyx(3,:), 'k', 'LineWidth', 2)
    pause(0.3)
end

%% Part f
pause(1)
for psi = linspace(0, pi/4, 4)
    Axyz = Rx(pi/4*psi) * Ry(-pi/6) * Rz(pi/2) * A;
    plot3(Axyz(1,:), Axyz(2,:),Axyz(3,:), 'k--')
    pause(0.3)
end
