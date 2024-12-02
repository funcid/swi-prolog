% 9. Железнодорожные маршруты
% Примеры фактов
ft(moscow, petersburg).
ft(petersburg, helsinki).
ft(helsinki, stockholm).
ft(stockholm, oslo).

% Предикат для проверки маршрута с двумя или более пересадками
needs_two_transfers(From, To) :-
    \+ direct_route(From, To),
    \+ one_transfer(From, To).

direct_route(From, To) :- ft(From, To).
one_transfer(From, To) :-
    ft(From, X),
    ft(X, To). 