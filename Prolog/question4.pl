%% Tic-Tac-Toe Example

ordered_line(1,2,3).
ordered_line(4,5,6).
ordered_line(7,8,9).
ordered_line(1,4,7).
ordered_line(2,5,8).
ordered_line(3,6,9).
ordered_line(1,5,9).
ordered_line(3,5,7).

line(A,B,C) :- ordered_line(A,B,C).
line(A,B,C) :- ordered_line(A,C,B).
line(A,B,C) :- ordered_line(B,A,C).
line(A,B,C) :- ordered_line(B,C,A).
line(A,B,C) :- ordered_line(C,A,B).
line(A,B,C) :- ordered_line(C,B,A).

move(A) :- good(A), empty(A).
full(A) :- x(A).
full(A) :- o(A).
empty(A) :- not(full(A)).

%% strategy
good(A) :- win(A).
good(A) :- block_win(A).
good(A) :- spilt(A).
good(A) :- block_split(A).
good(A) :- build(A).

win(A) :- x(B),x(C),line(A,B,C).
block_win(A) :- o(B),o(C),line(A,B,C).
split(A) :- x(B),x(C),different(B,C),line(A,B,D),line(A,C,E),empty(D),empty(E)/
same(A,A).
different(A,B) :- not(same(A,B)).
block_split(A) :- o(B),o(C),different(B,C),line(A,B,D),line(A,C,E),empty(D),empty(E).
build(A) :- x(B),line(A,B,C),empty(C).

good(5).
good(1).
good(3).
good(7).
good(9).
good(2).
good(4).
good(6).
good(8).
