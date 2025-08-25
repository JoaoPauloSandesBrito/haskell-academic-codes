% Testes de unificação e comparação

% 1. 1+2 == +(1,2)
?- 1+2 == +(1,2).
% Resultado: true

% 2. 1+2 == 2+1
?- 1+2 == 2+1.
% Resultado: false

% 3. 1+2 == 1+X
?- 1+2 == 1+X.
% Resultado: false

% 4. 1+2 = 1+X
?- 1+2 = 1+X.
% Resultado: X = 2

% 5. 1+2 = X
?- 1+2 = X.
% Resultado: X = 3

% 6. 1+2 =:= 2+1
?- 1+2 =:= 2+1.
% Resultado: true

% 7. 1+2 =:= 2+X
?- 1+2 =:= 2+X.
% Resultado: X = 1

% 8. X is 1+2
?- X is 1+2.
% Resultado: X = 3

% 9. 1+2 is X
?- 1+2 is X.
% Resultado: Erro de execução