clear,clc,close all
% integrálás
fun = @(x) exp(-x.^2).*log(x).^2;
sol = integral(fun,0,Inf)