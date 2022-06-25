% Exercise 1

A = [3  0 0 3 0    0 3
     0 -1 1 0 0    0 0
     0  0 0 0 0 -1/2 0];
 
 figure(1)
 plot3(A(1,:), A(2,:),A(3,:), 'b')
 axis equal
 hold on
 
 for a1 = linspace(0, pi/4, 6)
    Ax = Rx(a1) * A;
    plot3(Ax(1,:), Ax(2,:),Ax(3,:), 'r')
    pause(1)
 end
 
 hold off
 
 figure(2)
 plot3(A(1,:), A(2,:),A(3,:), 'b')
 axis equal
 hold on
 
 Ax = Rx(pi/4) * A;
 Ay = Ry(pi/4) * A;
 Az = Rz(pi/4) * A;
 plot3(Ax(1,:), Ax(2,:),Ax(3,:))
 plot3(Ay(1,:), Ay(2,:),Ay(3,:))
 plot3(Az(1,:), Az(2,:),Az(3,:))
 
 figure(3)
 plot3(A(1,:), A(2,:),A(3,:))
 axis equal
 hold on
 
 Ax = Rx(pi/4) * A;
 
 A1 = Rz(pi/4) * A;
 A2 = Rz(pi/4)*Ry(pi/3) * A;
 A3 = Rz(pi/4)*Ry(pi/3)*Rx(pi/4) * A;
 
 plot3(A1(1,:), A1(2,:),A1(3,:))
 plot3(A2(1,:), A2(2,:),A2(3,:))
 plot3(A3(1,:), A3(2,:),A3(3,:))
 hold off