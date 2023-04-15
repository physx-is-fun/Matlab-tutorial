clear,clc,close all
% lineáris egyenletrendszer
syms x y z;
eqn1 = 2*x + y + z == 2;
eqn2 = -x + y - z == 3;
eqn3 = x + 2*y + 3*z == -10;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3],[x, y, z]);
X = linsolve(A,B);
xSol = X(1)
ySol = X(2)
zSol = X(3)