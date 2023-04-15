clear,clc,close all

% a Matlab felülete 5 részre szedhető szét:
% 1.: menüsor
% 2.: a könyvtár és tartalma ahonnan importálhatjuk az előre definiált
%     szkripteket és függvényeket
% 3.: a dolgozó felület, ahol a változók és értékeik jelennek meg és
%     módosíthatóak
% 4.: a parancssor, ahova az különböző utasításokat adhatunk meg és
%     futtathatunk le
% 5.: a szerkesztő felület, ahol a szkripteket és függvényeket lehet
%     szerkeszteni

% egysoros komment

%{ 
többsoros
komment
%}

% ha egy művelet során nem deklarálunk változót, akkor a Matlab az ans
% nevű beépített változót használja fel az eredmény értékének eltárolásához

% ha mondjuk nem szeretnénk ha kiíratódjon egy változó értéke, akkor az
% a változó után egy ; pontosvesszőt kell rakni

% clc - a parancssor előzményéeinek kiürítése
% clear - a deklarált változók és értékeinek törlése

% ha egy utasítást beírunk a parancssorba, az ENTER billentyű lenyomásával
% végrehajthatjuk

% a felfelé vagy lefelé mutató nyíllal a parancssorban böngészhetünk az
% eddig lefuttatott parancsok között

% ha rákattintunk a parancssornál az fx ikonra, kategóriákra szedve fel
% vannak sorolva a műveletek és a függvények

% ha rá akarunk keresni egy függvény vagy művelet (például min) 
% dokumentációjára, akkor az alábbiakat beírva és lefuttatva megtehetjük: 
% doc min

% ha rá akarunk keresni egy függvény vagy művelet (például max)
% parancssorban leírt dokumentációjára, akkor az alábbiakat beírva és
% lefuttatva megtehetjük:
% help max

% ha egy szkriptet szeretnénk végrehajtani, akkor a menüsoron lévő RUN gomb
% lenyomásával tehetjük meg

% szöveg kiírása konzolra
disp("Hello World!");

% változó deklarálása
a = 10; % alapértelmezetten dupla tíusú szám
b = 10.4; % alapértelmezetten dupla típusú szám
c = 'New'; % karakter
d = "New"; % sztring
e = true; % logikai igaz
f = false; % logikai hamis

% whos - az összes eddig deklarált változó nevét, méretét, pontosságát és
% attribútumát kiírja

% matematikai műveletek számokkal
osszeg = 5+10;
kulonbseg = 10-2;
szorzat = 3*4;
hanyados = 5/9;
logikaiegyezes = 1 == 2;
logikaies = true & true;
logikaivagy = true | false;
logikainegalas = ~true;

% konstansok
eps(); % lebegőpontos pontosság
i(); % képzetes egység
Inf(); % végtelen 
intmax(); % a lehető legnagyobb pozitív egész szám
intmin(); % a lehető legkisebb negatív egész szám
j(); % képzetes egység
NaN(); % nem szám
pi(); % pi
realmax(); % a lehető legnagyobb lebegőpontos szám
realmin(); % a lehető legkisebb lebegőpontos szém

% matematikai függvények
szam = 10;
szam^3; % egy szám harmadik hatványa
exp(szam); % az Euler konstans számadik hatványa
sqrt(szam); % egy szám négyzetgyöke
log(szam); % egy szám természetes alapú logaritmusa
log10(szam); % egy szám 10-es alapú logaritmusa
sin(szam); % egy szám szinusza
cos(szam); % egy szám koszinusza
tan(szam); % egy szám tangense
asin(szam); % egy szám arkusz szinusza
acos(szam); % egy szám arkusz koszinusza
atan(szam); % egy szám arkusz tangense
sinh(szam); % egy szám szinusz hiperbolikusza
cosh(szam); % egy szám koszinusz hiperbolikusza
tanh(szam); % egy szám tangens hiperbolikusza
asinh(szam); % egy szám arkusz szinusz hiperbolikusza
acosh(szam); % egy szám arkusz koszinusz hiperbolikusza
atanh(szam); % egy szám arkusz tangens hiperbolikusza
factorial(szam); % egy szám faktoriálisa

% definiáljunk a komplex1 és komplex2 változót, melynek értéke egy-egy 
% komplex szám
komplex1 = (1+5*i);
komplex2 = (2-3i);

% matematikai műveletek komplex számokkal
komplex_osszeg = komplex1 + komplex2;
komplex_kulonbseg = komplex1 - komplex2;
komplex_szorzat = komplex1 * komplex2;
komplex_hanyados = komplex1 / komplex2;
komplexkonjugalt = conj(komplex1);
abszolutertek = abs(komplex1);
kepzetesresz = imag(komplex1);
valosresz = real(komplex1);

% definiáljunk a vektor1 változót, melynek értéke egy horizontális 
% vektor, melynek elemei a következőek:
vektor1 = [12 50 -8 -100.5];
% vektor1 = [12,50,-8,-100.5];

% definiáljunk a horizontalis változót, melynek értéke egy horizontális 
% vektor, melynek elemei a következőek: 1 és 10 közötti számok 1 lépésközzel
horizontalis = [1:1:10];

% definiáljunk a vertikalis változót, melynek értéke a horizontalis 
% vektor transzponáltja

vertikalis = horizontalis';

% definiáljuk a vektor2 nevű változót, melynek értéke egy horizontális
% vektor, elemei legyenek 20 és 50 közötti 40 darab szám, 
% melynek lépésköze: (50-20)/(40-1)
vektor2 = linspace(20,50,40);

% definiáljuk a vektor3 és vektor4 nevű változót, melynek értéke egy-egy 
% horizontális vektor
vektor3 = [1 7 2 6];
vektor4 = [6 5 4 3];

% matematikai műveletek vektorokkal és számokkal
vektor_szam_osszeg = vektor3 + 1.;
vektor_szam_kulonbseg = vektor3 - 5.;
vektor_szam_szorzat = vektor3 * 3.;
vektor_szam_hanyados = vektor3 / 2.;
vektor_szam_hatvany = vektor3.^2;
vektor_szam_gyok = sqrt(vektor3);

% matematikai műveletek vektorokkal
vektor_osszeg = vektor3 + vektor4;
vektor_kulonbseg = vektor3 - vektor4;
vektor_szorzat = vektor3 * vektor4';

% vektor nagysága
vektor_nagysag = norm(vektor3);

% vektor minimum értéke
vektor_minimum = min(vektor3);
% a min függvény alapértelmezetten egy számot ad vissza, de ha több
% változót deklarálunk neki kapcsos zárójelben vesszővel elválasztva, 
% akkor az első változó lesz a minimum érték a második pedig
% annak az indexe

% vektor maximum értéke
vektor_maximum = max(vektor3);
% a max függvény alapértelmezetten egy számot ad vissza, de ha több
% változót deklarálunk neki kapcsos zárójelben vesszővel elválasztva, 
% akkor az első változó lesz a maximum érték a második pedig
% annak az indexe

% vektor elemeinek összege
vektor_osszeg = sum(vektor4);

% vektor hossza
vektor_hossz = length(vektor4);

% vektor egy elemére való hivatkozás (az elemek indexelése 1-el kezdődik)
vektorelem = vektor4(1);

% vektor utolsó elemére való hivatkozás
utolsoelem = vektor4(end);

% vektor egy elemének megváltoztatása
vektor4(1) = 7;

% definiáljuk a matrix1 és matrix2 nevű változókat, melynek értékei egy-egy 
% 3x2-es =(3 sor 2 oszlop) mátrix
matrix1 = [1 3; 2 -10; 88 99];
% matrix1 = [1,3;2,-10;88,99];
matrix2 = [2 -10; 88 99; 1 3];

% definiáljunk egy csupanula nevű változót, melynek értéke egy nullákkal
% teli 3x2-es mátrix
csupanulla = zeros(3,2);

% definiáljunk egy csupaegyes nevű változót, melynek értéke egy egyesekkel
% teli 3x2-es mátrix
csupaegyes = ones(3,2);

% definiáljunk egy egysegmatrix nevű változót, melynek értéke egy 3x3-as 
% egység mátrix
egysegmatrix = eye(3);

% matematikai műveletek mátrixokkal és számokkal
matrix_szam_osszeg = matrix1 + 1.;
matrix_szam_kulonbseg = matrix1 - 5.;
matrix_szam_szorzat = matrix1 * 3.;
matrix_szam_hanyados = matrix1 / 2.;
matrix_szam_hatvany = matrix1.^2;
matrix_szam_gyok = sqrt(matrix1);

% matematikai műveletek mátrixokkal
matrix_osszeg = matrix1 + matrix2;
matrix_kulonbseg = matrix1 - matrix2;
matrix_szorzat = matrix1 * matrix2';

% mátrix egy elemére való hivatkozás (az elemek indexelése 1-el kezdődik, sor-oszlop szerint)
matrixelem = matrix1(2,2);

% mátrix egy elemének megváltoztatása
matrix1(1,1) = 4;

% névtelen függvények
nevtelen_fuggveny = @(x) -(x - 3.).^2 + 10.;
vektor5 = linspace(0,5,100);
% a névtelen függvény meghívás az alábbi módon történik:
vektor6 = nevtelen_fuggveny(vektor5);

% rendes függvények
% definiáljunk az vektor7 változót, melynek értéke egy vektor, 
% melynek elemei a következőek: 
% -1 és 2 közötti számok 0.01 lépésközzel
vektor7 = [-1:0.01:2];
vektor8 = fuggveny(vektor7);

% véletlenszám generálás
% a példa szerint a randi függvény visszaad egy olyan 
% 2 soros és 10 oszlopos mátrixot, melyben véletlenül generált 
% számok vannak egyenletes eloszlással 1 és 5 között 
matrix3 = randi(5,2,10);

% if-else elágazás
g = randi(20);
if 0 <= g & g <= 5
    disp('A megadott szám 0 és 5 között van!');
elseif 6 <= g & g <= 10
    disp('A megadott szám 6 és 10 között van!');
else
    disp('A megadott szám kívül esik minden megadott tartományon!');
end

% for ciklus
kezdoertek1 = 0;
lepeskoz1 = 2;
vegertek1 = 10;
for i = kezdoertek1:lepeskoz1:vegertek1
   disp(i);
end

vektor9 = [1 5 8 17];
for j = 1:length(vektor9)
   disp(vektor9(j));
end

% futási idő megállapítása
vektor10 = randi(5,1,10000000);
tic;
darabszam1 = sum(vektor10 == 3.);
elso_modszer = toc;

darab2 = 0;
tic;
for i = 1:length(vektor10)
    if vektor10(i) == 3
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

% while ciklus
h = 100;
while h > 75
    disp(h);
    h = h - 1;
end

% egyetlen görbe ábrázolása egyetlen grafikonon egyetlen ábrán
x1 = linspace(0,5,100);
y1 = -(x1 - 3.).^2 + 10;
figure(1);
plot(x1,y1,'*');
title('y1 görbe');
ylabel('y');
xlabel('x');

% több görbe ábrázolása egyetlen grafikonon egyetlen ábrán
x2 = linspace(-10,10,100);
y2 = -(x2 - 3.).^2 + 10;
y3 = -(x2 - 3.).^2 + 15;
y4 = -(x2 - 5.).^2 + 10;
figure(2);
plot(x2,y2,'ms');
xlabel('x');
ylabel('y');
title('y2, y3, y4 görbék');
grid on
hold on
plot(x2,y3,'bv');
hold on
plot(x2,y4,'g+');
legend('y2','y3','y4');

% több görbe ábrázolása több grafikonon egyetlen ábrán
figure(3);
subplot(3,1,1);
plot(x2,y2,'ms');
xlabel('x');
ylabel('y');
title('y2 görbe');
grid on
subplot(3,1,2);
plot(x2,y3,'bv');
xlabel('x');
ylabel('y');
title('y3 görbe');
grid on
subplot(3,1,3);
plot(x2,y4,'g+');
xlabel('x');
ylabel('y');
title('y4 görbe');
grid on

% 3D ábra ábrázolása
% definiáljunk egy x3 és egy y5 változót, melynek értéke egy vektor, 
% melynek elemei a következőek: -7 és 7 közötti számok 0.05 lépésközzel
x3 = [-7:0.05:7];
y5 = x3;
% sík létrehozása az x3 és y5 bemenő paraméterekkel
[X,Y] = meshgrid(x3,y5);
% definiáljunk egy R és egy Z változót, melynek értékét kiszámoljuk
R = sqrt(X.^2+Y.^2)+eps;
Z = sin(R)./R;
% ábra megjelenítése
figure(4);
mesh(Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('3D ábra');