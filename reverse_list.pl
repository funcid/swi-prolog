reverse_list([], []).
reverse_list([H|T], Reversed) :- 
    reverse_list(T, ReversedTail),
    append(ReversedTail, [H], Reversed). 