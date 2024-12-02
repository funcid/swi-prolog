% 6. Удаление нечётных чисел
remove_odd([], []).
remove_odd([H|T], [H|Result]) :-
    0 is H mod 2,
    remove_odd(T, Result).
remove_odd([H|T], Result) :-
    1 is H mod 2,
    remove_odd(T, Result). 