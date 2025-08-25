% 3. numero_par(X) /* X e um numero natural par */
numero_par(X) :- X mod 2 =:= 0.

% 4. numero_impar(X) /* X e um numero natural impar */
numero_impar(X) :- X mod 2 =:= 1.

% 5. soma(X,Y,Z) /* Z e a soma dos numeros naturais X e Y */
soma(X, Y, Z) :- Z is X + Y.

% 6. fatorial(X,F) /* O fatorial de X e F */
fatorial(0, 1).  % O fatorial de 0 e 1
fatorial(X, F) :-
    X > 0,
    X1 is X - 1,
    fatorial(X1, F1),
    F is X * F1.

% 7. minimo(N1,N2,Min) /* O minimo de N1 e N2 e Min */
minimo(N1, N2, Min) :-
    (N1 =< N2 -> Min = N1 ; Min = N2).

% 8. mod(X,Y,Z) /* Z e o resto da divisao inteira de X por Y */
mod(X, Y, Z) :- Z is X mod Y.
