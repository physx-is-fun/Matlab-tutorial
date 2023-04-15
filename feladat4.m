clear,clc,close all
% elsőrendű lineáris közönséges differenciálegyenlet kezdeti feltétellel
syms y(t);
ode = diff(y,t) == t*y;
ode(t) = diff(y(t), t) == t*y(t);
cond = y(0) == 2;
ySol(t) = dsolve(ode,cond);
figure(1);
fplot(ySol,[0,10]);
xlabel('t');
ylabel('y');
title('A megoldás');
grid on;