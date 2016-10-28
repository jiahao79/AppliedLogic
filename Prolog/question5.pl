%% There are 16 white boxes in the following chart, each of which should be filled with a letter, so
%% that all the white boxes in the same row or column will form a word that is among [“dog”, “run”,
%% “top”, “five”, “four”, “lost”, “mess”, “unit”, “baker”, “forum”, “green”, “super”, “prolog”, “vanish”,
%% “wonder”, “yellow”].
%% Suppose we use L1~L16 to represent these unknown letters, just as shown in the chart. Please
%% write a Prolog program to solve this problem. In your program, you should declare some facts,
%% and then define a rule for solving this problem. Load your program in Prolog, and ask Prolog a
%% query to get the solution. Write down what Prolog returns (also include 1-2 screenshots).

word(dog,d,o,g).
word(run,r,u,n).
word(top,t,o,p).

word(five,f,i,v,e).
word(four,f,o,u,r).
word(lost,l,o,s,t).
word(mess,m,e,s,s).
word(unit,u,n,i,t).

word(bake,b,a,k,e,r).
word(forum,f,o,r,u,m).
word(green,g,r,e,e,n).
word(super,s,u,p,e,r).

word(prolog,p,r,o,l,o,g).
word(wonder,w,o,n,d,e,r).
word(vanish,v,a,n,i,s,h).
word(yellow,y,e,l,l,o,w).
