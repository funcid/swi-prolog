% Вариант 1: добавление второго списка в конец первого
merge_lists1([], L2, L2).
merge_lists1([H|T], L2, [H|Result]) :-
    merge_lists1(T, L2, Result).

% Вариант 2: добавление первого списка в конец второго
merge_lists2(L1, [], L1).
merge_lists2(L1, [H|T], [H|Result]) :-
    merge_lists2(L1, T, Result). 