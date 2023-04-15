clear,clc,close all
% harmadrendű közönséges differenciálegyenlet kezdeti feltétellel
syms u(x);
Du = diff(u,x);
D2u = diff(u,x,2);
ode = diff(u,x,3) == u;
cond1 = u(0) == 1;
cond2 = Du(0) == -1;
cond3 = D2u(0) == pi;
conds = [cond1 cond2 cond3];
uSol(x) = dsolve(ode,conds);
figure(1);
fplot(uSol,[0,10]);
xlabel('x');
ylabel('u');
title('A megoldás');
grid on;