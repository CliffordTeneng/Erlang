-module (survey).
-export ([maximum/1, maximum/2]).
maximum(list) -> maximum(list,0);
maximum([],N) -> N;
maximum([H/T],N) when H > N ->
	maximum(T,H);
maximum([H|T],N) when H=<N ->
	maximum(T,N).