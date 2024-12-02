% 7. НОД двух чисел
gcd(A, 0, A) :- A > 0.
gcd(A, B, Result) :-
    B > 0,
    R is A mod B,
    gcd(B, R, Result). 