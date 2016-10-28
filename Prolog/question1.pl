%% Think of a family of three or four generations (it could be yours, some famous people, or a
%% hypothetical family). Name all the members, and provide facts on the gender (such as:
%% male(john).), and parent relation (such as: parent(john, sue).). Declare these facts in a Prolog
%% program. Now, define and add the following relations in Prolog: father, mother, brother, sibling,
%% grandson, cousin, mother in law, and descendant. Any reasonable and common definition of those
%% relations is accepted.
%% For each relation you have defined, ask Prolog a few queries which return “true” or “false”, and
%% several queries with variables (and get all answers). Write down what Prolog returns (also
%% include 12 screenshots).

male(perry).
male(pearson).
male(dinis).
male(denis).
male(nathan).
male(anthony).

female(delainha).
female(isabel).
female(maria).
female(alana).

parent(perry, pearson).
parent(perry, delainha).
parent(isabel, pearson).
parent(isabel, delainha).
parent(dinis, isabel).
parent(dinis, denis).
parent(maria, isabel).
parent(maria, denis).
parent(denis, nathan).
parent(denis, anthony).
parent(alana, nathan).
parent(alana, anthony).

father(X,Y) :- parent(X,Y), male(X).
mother(Y,X) :- parent(Y,X), female(Y).
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\=Y.
sibling(X,Y) :- parent(Z,X), parent(Z,Y), X\=Y.
grandson(X,Y) :- parent(Y,Z), parent(Z,X), male(X).
cousin(X,Y):-parent(A,X),	parent(B,Y), parent(W,A),	parent(W,B),	A\=B.
motherinlaw(X,Y) :- parent(X,W), parent(W,Z), parent(Y,Z), not(parent(X,Y)), female(X).
descendant(X,Y) :- parent(Y,X).
descendant(X,Y) :- parent(Y,Z), parent(Z,X).
