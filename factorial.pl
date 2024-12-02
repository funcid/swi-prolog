% Правосторонняя рекурсия
factorial_right(0, 1).
factorial_right(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial_right(N1, SubResult),
    Result is N * SubResult.

% Левосторонняя рекурсия
factorial_left(N, Result) :- factorial_left(N, 1, Result).
factorial_left(0, Acc, Acc).
factorial_left(N, Acc, Result) :-
    N > 0,
    NewAcc is Acc * N,
    N1 is N - 1,
    factorial_left(N1, NewAcc, Result). 