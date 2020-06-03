:- use_module(library(chr)).

/*
 *  CHR syntax, since Anne can never remember it, and probably I can't either:
 *  name @ retained \ discarded <=> guard | head,body.    Simpagation
 *  name @ discarded <=> guard | head, body.              Simplification
 *  name @ retained ==> guard | head, body.               Propagation
 *
*/

:- chr_constraint
    car/2,
    work_form/2,
    record/2,
    work_done/1,
    pay/1,
    pickup/1,
    work/0.

car(Owner, Work) ==> work_form(Owner, Work).
work_form(Owner, Work), work <=> work_done(Owner), record(Owner, Work).
car(Owner, _), work_done(Owner), pay(Owner) <=> pickup(Owner).