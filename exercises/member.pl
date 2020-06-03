
:- use_module(library(chr)).

/*
 *  CHR syntax, since Anne can never remember it, and probably I can't either:
 *  name @ retained \ discarded <=> guard | head,body.    Simpagation
 *  name @ discarded <=> guard | head, body.              Simplification
 *  name @ retained ==> guard | head, body.               Propagation
 *
*/

:- chr_constraint
    backtrack/1.

backtrack(X) ==> member(X, [a, b, c]).