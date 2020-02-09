-module (add).
-export ([sum/1, sum/2]).

sum(N)-> sum(0,N).
sum(N,M) when N=<M -> sum(M,N,M).
sum(M,M,X)->X;
sum(M,N,X)->sum(M,N+1,X+N).