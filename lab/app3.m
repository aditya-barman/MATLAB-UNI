D = [2 6; 3 9];
E = [1 2; 3, 4];
F = [-5 5; 5 3];
X = zeros(2,2);
G = [D X X; X E X; X X F];
disp(G)
G = blkdiag(D, E, F);
disp(G)