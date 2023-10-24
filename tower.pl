hanoi(N) :-
    hanoi(N, 'A', 'B', 'C').

hanoi(0, _, _, _) :- !.
hanoi(N, A, B, C) :-
    M is N - 1,
    hanoi(M, A, C, B),
    move(A, C),
    hanoi(M, B, A, C).

move(From, To) :-
    write('Move a disk from peg '), write(From),
    write(' to peg '), write(To), nl.