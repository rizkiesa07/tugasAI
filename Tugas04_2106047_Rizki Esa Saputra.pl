orang_tua(david, liza).
orang_tua(david, john).
orang_tua(amy, liza).
orang_tua(amy, john).
orang_tua(jack, susan).
orang_tua(jack, rey).
orang_tua(karen, susan).
orang_tua(karen, rey).
orang_tua(john, peter).
orang_tua(jhon, mary).
orang_tua(susan, peter).
orang_tua(susan, mary).

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(rey).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

is_orang_tua(X, Y):- orang_tua(X, Y).
saudara(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X\=Y.
anak(Y, X) :- orang_tua(X, Y).
kakek(X, Z) :- orang_tua(X, Y), orang_tua(Y, Z), laki_laki(X).
nenek(X, Z) :- orang_tua(X, Y), orang_tua(Y, Z), perempuan(Y).
