function [t,x] = trapz_rule(A,x0,dT,T)
%   Generates euler matrix
%   [t,x] = f_Euler(A,x0,dT,T)
%   t, horizontal interval
%   x, euler matrix
%
%   A, square matrix
%   x0, column vector with same size as A
%   dT, scalar interval
%   T, scalar upper bound

%% Part a
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
    
    
    %% Part b
    N = T/dT;
    if N ~= floor(N)
        N = floor(N);
        warning("N converted to integer");
    end
    
    %% Part c
    t = 0:dT:N*dT;
    
    %% Part d
    I = eye(size(A));
    K0 = eye(N);
    K1 = diag(ones(N-1,1),-1);
    
    D = kron(K0,I-dT/2*A) - kron(K1,(I+dT/2*A));
    
    e = zeros(size(D,1),1);
    e(1:length(x0)) = (I+dT/2*A)*x0;
    x = D\e;
    
    x = [x0 reshape(x,[length(x0),N])];
end

