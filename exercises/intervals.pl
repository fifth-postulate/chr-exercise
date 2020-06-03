:- use_module(library(chr)).

/*
 *  CHR syntax, since Anne can never remember it, and probably I can't either:
 *  name @ retained \ discarded <=> guard | head,body.    Simpagation
 *  name @ discarded <=> guard | head, body.              Simplification
 *  name @ retained ==> guard | head, body.               Propagation
 *
*/

:- chr_constraint
    interval/2.

interval(High, Low) <=> Low < High | interval(Low, High).
interval(Lowest, Highest) \ interval(Low, High) <=> Lowest =< Low, High =< Highest | true.
interval(A_low, A_high), interval(B_low, B_high) <=> A_low =< B_low, A_high =< B_high | interval(A_low, B_high).
interval(A_low, A_high), interval(B_low, B_high) <=> B_low =< A_low, B_high =< A_high | interval(B_low, A_high).

