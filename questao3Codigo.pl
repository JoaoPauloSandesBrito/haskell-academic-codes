% 10. member(X,L) /* X e um elemento da lista L */
member(X, [X|_]).        % X e o cabeca da lista
member(X, [_|Tail]) :-   % X e na cauda da lista
    member(X, Tail).

% 11. not_member(X,L) /* X nao e um elemento da lista L */
not_member(X, L) :- 
    \+ member(X, L).

% 12. prefix(Prefix,List) /* Prefix e um prefixo de List */
prefix([], _).           % Lista vazia e prefixo de qualquer lista
prefix([H|T1], [H|T2]) :- % Prefixo e igual ao cabeca da lista
    prefix(T1, T2).

% 13. sufix(Sufix,List) /* Sufix e um sufixo de List */
sufix(List, List).        % Lista e sufixo dela mesma
sufix(Sufix, [_|Tail]) :- % Sufixo pode ser na cauda da lista
    sufix(Sufix, Tail).

% 14. append(L1,L2,List) /* List e o resultado da concatenacao de L1 e L2 */
append([], L, L).         % Lista vazia concatenada com L e L
append([H|T1], L2, [H|T2]) :- % Concatena cabeca e cauda
    append(T1, L2, T2).

% 15. reverse(List,Rev) /* Rev e o resultado de reverter List */
reverse([], []).          % Lista vazia reverte para lista vazia
reverse([H|T], Rev) :-    % Reverte a lista
    reverse(T, RevT),     % Reverte a cauda
    append(RevT, [H], Rev). % Adiciona a cabeca ao resultado

% 16. length(List,N) /* N e o numero de elementos de List */
length([], 0).           % Lista vazia tem comprimento 0
length([_|Tail], N) :-   % Comprimento da lista e 1 + comprimento da cauda
    length(Tail, N1),
    N is N1 + 1.

% 17. first(X,List) /* X e o primeiro elemento de List */
first(X, [X|_]).         % Primeiro elemento e o cabeca da lista

% 18. last(X,List) /* X e o ultimo elemento de List */
last(X, [X]).            % Lista com um unico elemento tem X como ultimo
last(X, [_|Tail]) :-     % Recorre a lista ate encontrar o ultimo elemento
    last(X, Tail).

% 19. nth(X,N,List) /* X e o N-esimo elemento de List */
nth(X, 1, [X|_]).        % N-esimo elemento com N = 1 e o cabeca da lista
nth(X, N, [_|Tail]) :-   % Recorre a lista para encontrar o N-esimo elemento
    N > 1,
    N1 is N - 1,
    nth(X, N1, Tail).

% 20. double(L, LL) /* Cada elemento de L aparece em LL em duplicado */
double([], []).              % Lista vazia duplicada e lista vazia
double([H|T], [H,H|T2]) :-   % Duplicar o cabeca e continuar com a cauda
    double(T, T2).

% 21. sum(Xs,Sum) /* Sum e a soma dos elementos de Xs */
sum([], 0).                  % Soma de lista vazia e 0
sum([H|T], Sum) :-           % Soma da cabeca e da cauda
    sum(T, SumT),
    Sum is H + SumT.
