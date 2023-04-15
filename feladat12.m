clear,clc,close all
% szimbólikus integrálás
syms z k t l
%f(z,k,t,l) = exp(-1i*k*z*cos(t))*(cos(k*z)-cos(k*l));
%Fz = int(f,z,[0,l])
g(z,k,t,l) = exp(-1i*k*z*cos(t))*sin(k*z);
Gz = int(g,z,[0,l])