% Testes para numero_par/1
?- numero_par(4).
% Esperado: true.

?- numero_par(7).
% Esperado: false.

% Testes para numero_impar/1
?- numero_impar(4).
% Esperado: false.

?- numero_impar(7).
% Esperado: true.

% Testes para soma/3
?- soma(3, 5, Z).
% Esperado: Z = 8.

?- soma(10, 20, Z).
% Esperado: Z = 30.

% Testes para fatorial/2
?- fatorial(0, F).
% Esperado: F = 1.

?- fatorial(5, F).
% Esperado: F = 120.

?- fatorial(3, F).
% Esperado: F = 6.

% Testes para minimo/3
?- minimo(4, 7, Min).
% Esperado: Min = 4.

?- minimo(10, 5, Min).
% Esperado: Min = 5.

?- minimo(8, 8, Min).
% Esperado: Min = 8.

% Testes para mod/3
?- mod(10, 3, Z).
% Esperado: Z = 1.

?- mod(20, 4, Z).
% Esperado: Z = 0.

?- mod(15, 6, Z).
% Esperado: Z = 3.