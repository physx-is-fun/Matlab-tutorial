function y = fuggveny(x)
% definiáljuk az y változót és a függvény kimenete megy az y-ba
% a függvény neve fuggveny
% a függvény paramétere az x
% ha az x helyéve vektort rakunk, akkor a pont operátor el fog vele bánni
% a potosvessző a sor végén jelzi, hogy nem szeretnénk kiírni az eredményt
y = 1./((x-0.3).^2+0.01) + 1./((x-0.9).^2+0.04) - 6;
end