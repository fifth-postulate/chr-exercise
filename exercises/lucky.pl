:- use_module(library(chr)).

/*
 *  CHR syntax, since Anne can never remember it, and probably I can't either:
 *  name @ retained \ discarded <=> guard | head,body.    Simpagation
 *  name @ discarded <=> guard | head, body.              Simplification
 *  name @ retained ==> guard | head, body.               Propagation
 *
*/

:- chr_constraint
    lucky/1,
    added/1.

lucky(N) ==> added(N).
lucky(N) \ added(N) <=> is_lucky(N).

is_lucky(8).
is_lucky(N) :-
    R is N mod 10,
    R == 8,
    Q is N div 10,
    is_lucky(Q).