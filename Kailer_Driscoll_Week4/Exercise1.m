% Exercise 1

close all
clear

%% Part d
w = [[0; 0; 0], [1;1;1]];
plot3(w(1,:), w(2,:),w(3,:), 'k', 'LineWidth', 2)
 
%% Part e
 axis equal
 grid on
 hold on
 
%% Part f  
 for a = linspace(0, 5*pi/4, 40)
     w1 = Rx(a) * w;
     plot3(w1(1,:), w1(2,:),w1(3,:), 'r--', 'LineWidth', 1)
 end
 plot3(w1(1,:), w1(2,:),w1(3,:), 'r--', 'LineWidth', 3)
 
 %% Part g  
 for a = linspace(0, 5*pi/4, 40)
     w2 = Ry(a) * w;
     plot3(w2(1,:), w2(2,:),w2(3,:), 'g--', 'LineWidth', 1)
 end
 plot3(w2(1,:), w2(2,:),w2(3,:), 'g--', 'LineWidth', 3)
 
 %% Part h 
 for a = linspace(0, 5*pi/4, 40)
     w3 = Rz(a) * w;
     plot3(w3(1,:), w3(2,:),w3(3,:), 'b--', 'LineWidth', 1)
 end
 plot3(w3(1,:), w3(2,:),w3(3,:), 'b--', 'LineWidth', 3)
