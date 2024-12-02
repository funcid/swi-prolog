remove_duplicates([], []).
remove_duplicates([H|T], [H|Result]) :-
    delete(T, H, Temp),
    remove_duplicates(Temp, Result). 