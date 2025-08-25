homem(X). /* X é um homem */
mulher(X). /* Y é uma mulher */
progenitor(X,Y). /* X é progenitor de Y */

% Regras

% X e mae de Y se X for uma mulher e progenitor de Y
mae(X, Y) :- mulher(X), progenitor(X, Y).

% X e pai de Y se X for um homem e progenitor de Y
pai(X, Y) :- homem(X), progenitor(X, Y).

% X e mae se X for mae de alguem
e_mae(X) :- mae(X, _).

% X e pai se X for pai de alguem
e_pai(X) :- pai(X, _).

% X e filho de Y se X for homem e Y for progenitor de X
filho(X, Y) :- homem(X), progenitor(Y, X).

% X e filha de Y se X for mulher e Y for progenitor de X
filha(X, Y) :- mulher(X), progenitor(Y, X).

% X e irmao de Y se X for homem, X e Y compartilharem o mesmo progenitor, e X nao for igual a Y
irmao(X, Y) :- homem(X), progenitor(Z, X), progenitor(Z, Y), X \= Y.

% X e irma de Y se X for mulher, X e Y compartilharem o mesmo progenitor, e X nao for igual a Y
irma(X, Y) :- mulher(X), progenitor(Z, X), progenitor(Z, Y), X \= Y.

% X e avo de Y se X for homem e progenitor de Z, e Z for progenitor de Y
avo(X, Y) :- homem(X), progenitor(X, Z), progenitor(Z, Y).

% X e avo de Y se X for mulher e progenitor de Z, e Z for progenitor de Y
avo(X, Y) :- mulher(X), progenitor(X, Z), progenitor(Z, Y).

% X e bisavo de Y se X for homem e progenitor de Z, e Z for avo de Y
bisavo(X, Y) :- homem(X), progenitor(X, Z), avo(Z, Y).

% X e trisavo de Y se X for homem e progenitor de Z, e Z for bisavo de Y
trisavo(X, Y) :- homem(X), progenitor(X, Z), bisavo(Z, Y).

% X e antepassado de Y se X for progenitor de Y, ou se X for progenitor de Z e Z for antepassado de Y
antepassado(X, Y) :- progenitor(X, Y).
antepassado(X, Y) :- progenitor(X, Z), antepassado(Z, Y).

% X e tio de Y se X for irmao de Z e Z for progenitor de Y
tio(X, Y) :- irmao(X, Z), progenitor(Z, Y).

% X e sobrinho de Y se X for filho de Z e Z for irmao de Y
sobrinho(X, Y) :- filho(X, Z), irmao(Z, Y).

% X e Y sao primos se os progenitores de X e Y forem irmaos
primos(X, Y) :- progenitor(Z, X), progenitor(W, Y), irmao(Z, W).
