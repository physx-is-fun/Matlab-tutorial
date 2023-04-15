clear,clc,close all

% y = -(x-3)^2 + 10
% a.) Mi a függvény maximum értéke a 0 < x < 5 intervallumon?
x1 = linspace(0,5,100);
y1 = -(x1 - 3.).^2 + 10;
maximum = max(y1);

% b.) Ábrázoljuk a függvényt a 0 < x < 5 intervallumon.
figure(1);
plot(x1,y1,'*');
title('b.) feladat');
ylabel('y');
xlabel('x');

% c.) Mi a függvény minimuma a 0 < x < 5 intervallumon?
minimum = min(y1);

% d.) Mi az x értéke a függvény maximum értékénél a 0 < x < 5 intervallumon?
% a max függvény alapértelmezetten egy számot ad vissza, de ha több
% változót deklarálunk neki kapcsos zárójelben vesszővel elválasztva, 
% akkor az első változó lesz a maximum érték a második pedig
% annak az indexe, ezt az indexet fel lehet használni arra, hogy
% meghivatkozzuk a függvény maximum értékéhez tartozó x értéket. 
[maximumelem,index] = max(y1);
max_x = x1(index);

% e.) Mi a függvény értéke x = 20.7 esetén?
y_ertek1 = -(20.7 - 3)^2 + 10;
% a fenti feladatot meg lehet csinálni névtelen függvénnyel is, melyet
% akármikor meghívhatunk
nevtelen_fuggveny = @(x) -(x - 3.).^2 + 10;
% a névtelen függvény meghívás az alábbi módon történik:
y_ertek2 = nevtelen_fuggveny(20.7);

% f.) Ábrázoljuk a függvényt a -10 < x < 10 intervallumon.
x2 = linspace(-10,10,100);
y2 = -(x2 - 3.).^2 + 10;

% g.) Hogyan változik a függvény, ha 10 helyett 15-öt adunk hozzá?
y3 = -(x2 - 3.).^2 + 15;

% h.) Hogyan változik a függvény, ha a zárójelben x-3 helyett x-5 szerepel?
y4 = -(x2 - 5.).^2 + 10;

figure(2)
plot(x2,y2,'ms');
xlabel('x');
ylabel('y');
title('f.), g.), h.) feladatok');
grid on
hold on
plot(x2,y3,'bv');
hold on
plot(x2,y4,'g+');
legend('y2','y3','y4');
