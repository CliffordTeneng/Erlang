-module (exercise1).
-export ([sum/1, sum5/2, create/1]).

sum(1) -> 1;
sum(N) -> N + sum(N-1).

sum5(N,M) -> if
	N>=M ->
		'fuck off';
	true ->
		M + sum(M-N)
end.

create(1) ->1;
create(T) ->
	NewList = [create(T-1)] ++ [T],
	NewList.