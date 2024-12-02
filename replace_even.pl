% 8. Замена чётных элементов константой
replace_even_positions(List, Result) :- 
    replace_even_positions(List, 1, Result).

replace_even_positions([], _, []).
replace_even_positions([H|T], Pos, [H|Result]) :-
    1 is Pos mod 2,
    NextPos is Pos + 1,
    replace_even_positions(T, NextPos, Result).
replace_even_positions([_|T], Pos, [x|Result]) :-
    0 is Pos mod 2,
    NextPos is Pos + 1,
    replace_even_positions(T, NextPos, Result). 