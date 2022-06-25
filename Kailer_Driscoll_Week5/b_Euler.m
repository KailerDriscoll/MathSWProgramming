function [t,x] = b_Euler(A,x0,dT,T)
%   Backward Euler Approximation
%   [t,x] = b_Euler(A,x0,dT,T)
%   t, interval
%   x, euler matrix
%   A, 
%   x0, 
%   dT, 
%   T, 

[m,n] = size(A);
    x = size(x0);
    if m~=n
        error("Matrix must be square");
    end
    if x~=m
        error("Matrix dimenstions must agree");
    end
    [m,n] = size(dT);
    if m~=1 && n~=1
        error("Step dT must be scalar");
    end
    [m,n] = size(dT);
    if m~=1 && n~=1
        error("T must be scalar");
    end
    
    

    N = T/dT;
    if N ~= floor(N)
        N = floor(N);
        warning("N converted to integer");
    end
    
    t = 0:dT:N*dT;
    I = eye(size(A));
    K0 = eye(N);
    K1 = diag(ones(N-1,1),-1);
    
    D = kron(K0,I-dT*A) - kron(K1,I);
    
    e = zeros(size(D,1),1);
    e(1:length(x0)) = x0;
    x = D\e;
    
    x = [x0 reshape(x,[length(x0),N])];

end

