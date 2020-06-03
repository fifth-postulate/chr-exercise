:- use_module(library(chr)).

/*
 *  CHR syntax, since Anne can never remember it, and probably I can't either:
 *  name @ retained \ discarded <=> guard | head,body.    Simpagation
 *  name @ discarded <=> guard | head, body.              Simplification
 *  name @ retained ==> guard | head, body.               Propagation
 *
*/

:- chr_constraint salt/0, water/0, salt_water/0, stir/0, time/0.

stir\salt,water <=> salt_water.
salt_water,time <=> salt,time.
water,time <=> true.
stir <=> true.
time <=> true.

:- chr_constraint salt/1, water/1, salt_water/1.

salt(N),water(N) <=> salt_water(N).
