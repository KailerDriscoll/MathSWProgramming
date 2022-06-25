function H = hamiltonian(Er,al,N)
% Generates hamiltonian matrix
%   H = hamiltonian(Er,al,N)
%   H, hamiltonian matrix
%   Er, recoil energy
%   al, normalized lattice depth
%   N, number of momentum states

%% Part b
h = [N:-1:0 1:1:N].^2;
e = ones(2*N,1);

%% Part c
H0 = 4*diag(h)-al/4*diag(e,-1)-al/4*diag(e,1);

H = Er*H0;
end

