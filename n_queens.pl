:- use_module(library(clpfd)).

% 10. Расстановка n ферзей
n_queens(N, Queens) :-
    length(Queens, N),
    Queens ins 1..N,
    queens(Queens, N),
    all_cells_attacked(Queens, N).

queens([], _).
queens([Queen|Others], N) :-
    queens(Others, N),
    safe(Queen, Others, 1).

safe(_, [], _).
safe(Queen, [Y|Others], Dist) :-
    noattack(Queen, Y, Dist),
    Dist1 is Dist + 1,
    safe(Queen, Others, Dist1).

noattack(X, Y, Dist) :-
    X #\= Y,
    X #\= Y + Dist,
    X #\= Y - Dist.

all_cells_attacked(Queens, N) :-
    findall(Pos, (between(1, N, Row), between(1, N, _Col), Pos = Row), AllCells),
    forall(member(Pos, AllCells), attacked(Pos, Queens, 1)).

attacked(Row, [Queen|_], Dist) :-
    (Queen #= Row ; Queen #= Row + Dist ; Queen #= Row - Dist).
attacked(Row, [_|Queens], Dist) :-
    NextDist is Dist + 1,
    attacked(Row, Queens, NextDist). 