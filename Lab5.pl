% Facts
male(abraham).
male(herb).
male(homer).
male(bart).
male(clancy).
 
female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).
 
parent(abraham, herb).
parent(abraham, homer).
parent(mona, homer).
parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).
parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).
parent(selma, ling).
 
% Rules
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
brother(X, Y) :- parent(P, X), parent(P, Y), male(X), X \= Y.
sister(X, Y) :- parent(P, X), parent(P, Y), female(X), X \= Y.
grandfather(X, Y) :- father(X, P), parent(P, Y).
aunt(X, Y) :- parent(P, Y), sister(X, P).
uncle(X, Y) :- parent(P, Y), brother(X, P).
cousin(X, Y) :- parent(P, X), parent(Q, Y), P \= Q, parent(G, P), parent(G, Q).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
