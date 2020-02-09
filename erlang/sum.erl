-module (sum).
-export ([sum/1, add/2]).
sum(N) when N == 0->0;
sum(N) when N > 0 -> N + sum(N-1).
add(N,M) when N=<M-> M + sum(M-N).