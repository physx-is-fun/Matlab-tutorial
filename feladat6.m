clear,clc,close all
% másodrendű közönséges differenciálegyenlet kezdeti feltétellel
syms y(x);
Dy = diff(y);
ode = diff(y,x,2) == cos(2*x)-y;
cond1 = y(0) == 1;
cond2 = Dy(0) == 0;
conds = [cond1 cond2];
ySol(x) = dsolve(ode,conds);
figure(1);
fplot(ySol,[0,10]);
xlabel('x');
ylabel('y');
title('A megoldás');
grid on;