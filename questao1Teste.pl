% Consultas exemplo
% ?- mae(X, jose).   % Consulta para encontrar a mae de jose
% Resposta esperada: X = maria.

% ?- pai(X, ana).    % Consulta para encontrar o pai de ana
% Resposta esperada: X = joao.

% ?- e_mae(maria).   % Consulta para verificar se maria e mae
% Resposta esperada: true.

% ?- e_pai(joao).    % Consulta para verificar se joao e pai
% Resposta esperada: true.

% ?- filho(carlos, X). % Consulta para encontrar o progenitor de carlos
% Resposta esperada: X = jose.

% ?- filha(julia, X).  % Consulta para encontrar o progenitor de julia
% Resposta esperada: X = ana.

% ?- irmao(pedro, Y).  % Consulta para encontrar os irmaos de pedro
% Resposta esperada: false (Pedro nao tem irmaos na base de dados fornecida).

% ?- irma(clara, Y).   % Consulta para encontrar as irmas de clara
% Resposta esperada: false (Clara nao tem irmas na base de dados fornecida).

% ?- avo(X, carlos).   % Consulta para encontrar o avo de carlos
% Resposta esperada: X = joao.

% ?- avo(X, clara).    % Consulta para encontrar a avo de clara
% Resposta esperada: X = maria.

% ?- bisavo(X, pedro). % Consulta para encontrar o bisavo de pedro
% Resposta esperada: X = joao.

% ?- trisavo(X, julia). % Consulta para encontrar o trisavo de julia
% Resposta esperada: false (nao ha trisavo na base de dados fornecida).

% ?- antepassado(joao, Y). % Consulta para encontrar todos os descendentes de joao
% Resposta esperada: 
% Y = jose ;
% Y = ana ;
% Y = carlos ;
% Y = clara ;
% Y = pedro ;
% Y = julia ;

% ?- tio(X, clara).    % Consulta para encontrar o tio de clara
% Resposta esperada: X = ana.

% ?- sobrinho(pedro, X). % Consulta para encontrar o sobrinho de X
% Resposta esperada: false (Pedro nao e sobrinho de ninguem na base de dados fornecida).

% ?- primos(X, Y).     % Consulta para encontrar os primos
% Resposta esperada: 
% X = carlos, Y = pedro ;
% X = carlos, Y = julia ;
% X = clara, Y = pedro ;
% X = clara, Y = julia ;