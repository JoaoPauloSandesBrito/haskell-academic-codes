% Testes para member/2
?- member(a, [a, b, c]).
% Esperado: true.

?- member(d, [a, b, c]).
% Esperado: false.

% Testes para not_member/2
?- not_member(a, [b, c, d]).
% Esperado: true.

?- not_member(b, [a, b, c]).
% Esperado: false.

% Testes para prefix/2
?- prefix([a, b], [a, b, c, d]).
% Esperado: true.

?- prefix([b, c], [a, b, c, d]).
% Esperado: false.

% Testes para sufix/2
?- sufix([c, d], [a, b, c, d]).
% Esperado: true.

?- sufix([b, c], [a, b, c, d]).
% Esperado: false.

% Testes para append/3
?- append([a, b], [c, d], List).
% Esperado: List = [a, b, c, d].

?- append([1, 2, 3], [], List).
% Esperado: List = [1, 2, 3].

% Testes para reverse/2
?- reverse([1, 2, 3], Rev).
% Esperado: Rev = [3, 2, 1].

?- reverse([], Rev).
% Esperado: Rev = [].

% Testes para length/2
?- length([a, b, c, d], N).
% Esperado: N = 4.

?- length([], N).
% Esperado: N = 0.

% Testes para first/2
?- first(a, [a, b, c]).
% Esperado: a.

?- first(X, [x, y, z]).
% Esperado: X = x.

% Testes para last/2
?- last(d, [a, b, c, d]).
% Esperado: d.

?- last(X, [1, 2, 3]).
% Esperado: X = 3.

% Testes para nth/3
?- nth(b, 2, [a, b, c]).
% Esperado: true.

?- nth(X, 3, [1, 2, 3, 4]).
% Esperado: X = 3.

% Testes para double/2
?- double([a, b], LL).
% Esperado: LL = [a, a, b, b].

?- double([1, 2, 3], LL).
% Esperado: LL = [1, 1, 2, 2, 3, 3].

% Testes para sum/2
?- sum([1, 2, 3, 4], Sum).
% Esperado: Sum = 10.

?- sum([], Sum).
% Esperado: Sum = 0.