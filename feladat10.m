clear,clc,close all
% transzcendens egyenlet
syms x;
fun = @(x) 160750000 - x^3 * exp(-12993.03/x);
initial = 100;
sol = fzero(fun,initial)