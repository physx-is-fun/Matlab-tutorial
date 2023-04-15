clear,clc,close all
% y = sin(x)
% Az egyenlet alapján az y "pontok" hány százaléka lesz nagyobb, mint 0.8 a 0 < x < 10 intervallumon?
x = linspace(0,10,100000);
y = sin(x);
plot(x,y,'.');
y_nagyobb = y > 0.8;
eredmeny = (sum(y_nagyobb) / length(y))*100;