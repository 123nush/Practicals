

cricketer(sachin).
batsman(cricketer).


check(Name,Profession):-
batsman(Profession),
cricketer(Name).


1 ?- check(hardik,cricketer).
false.

2 ?- check(hardik,cricketer).
false.

3 ?- check(sachin,cricketer).
true.

4 ?- check(A,cricketer).
A = sachin.

5 ?- check(sachin,B).
B = cricketer.
