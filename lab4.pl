%Caso de un solo digito 1-9
almacenar(N, [N]) :-
    N < 10, !.

%Caso mas de un digito
almacenar(N, [X|Y]) :-
    X  is N mod 10,
    Z is N // 10,
    almacenar(Z, Y).