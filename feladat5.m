clear,clc,close all
% nemlineáris közönséges differenciálegyenlet kezdeti feltétellel
syms y(t);
ode = (diff(y,t)+y)^2 == 1;
cond = y(0) == 0;
ySol(t) = dsolve(ode,cond);
figure(1);
fplot(ySol,[0,10]);
xlabel('t');
ylabel('y');
title('A megoldás');
grid on;