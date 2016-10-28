%% This question concerns lists of elements. Define the following relations:
%% a. last(X,Xs) is true if X is the last element in the list Xs.
%% b. adjacent(X,Y,Zs) is true if the elements X and Y are adjacent in the list Zs.
%% c. substitute(X,Y,Xs,Ys) is true if the list Ys is the result of substituting Y for all occurrences of X
%% in the list Xs.
%%For each, run a few examples in Prolog. Show what Prolog returns (also include 12 screenshots).

last(X,[X]).
last(X,[_|Xs]) :- last(X,Xs).

adjacent(X, Y, [X,Y|_]).
adjacent(X, Y, [Y,X|_]).
adjacent(X, Y, [_|Zs]) :- adjacent(X, Y, Zs).
adjacent(X, Y, [_|Zs]) :- adjacent(Y, X, Zs).

subs(_, _, [], []).
subs(X, Y, [X|T1], [Y|T2]) :- subs(X, Y, T1, T2), !.
subs(X, Y, [H|T1], [H|T2]) :- \+ is_list(H), subs(X, Y, T1, T2), !.
subs(X, Y, [H1|T1], [H2|T2]) :- subs(X, Y, H1, H2), subs(X, Y, T1, T2).
