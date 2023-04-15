clear,clc,close all
% a.) Generáljunk 10 random számot 1 és 5 között. 
% Számoljuk meg, hogy hány alkalommal kaptunk 3-at.
% b.) Írjuk ki azt, hogy wow amennyiben a számok több mint 20%-a 3-as.
% c.) Csináljuk meg az a.) feladatot for ciklussal.
% d.) Generáljunk 10000000 random számot. Melyik módszer a gyorsabb?
% A = randi(5,1,10);
A = randi(5,1,10000000);
tic;
darabszam1 = sum(A == 3.);
elso_modszer = toc;

if darabszam1 / length(A) > 0.2
    disp("wow");
end

darab2 = 0;
tic;
for i = 1:length(A)
    if A(i) == 3
        darab2 = darab2 + 1;
    end
end
masodik_modszer = toc;

disp("Első módszer: " + elso_modszer + "s");
disp("Második módszer: " + masodik_modszer + "s");

if elso_modszer < masodik_modszer
    disp("Az első módszer a gyorsabb.");
else
    disp("A második módszer a gyorsabb.");
end