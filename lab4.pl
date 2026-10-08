%Caso de un solo digito 1-9
store(N, [N]) :-
    N < 10, !.

%Caso mas de un digito
store(N, [X|Y]) :-
    X  is N mod 10,
    N1 is N // 10,
    store(N1, Y).