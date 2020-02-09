-module (oreily).
-export ([create/1, reverse_create/1, prints/1, prints/2, prints_even/1]).

% create(N) when N == 0 -> [];
% create(N) when N > 0 -> create(N-1)++[N].

create(N) ->
	if
		N == 0 -> [];
		N > 0 -> create(N-1)++[N];
		true -> false
	end.

% reverse_create(N) when N == 0 -> [];
% reverse_create(N) when N > 0 -> [N]++reverse_create(N-1).

reverse_create(N) ->
	if
		N == 0 -> [];
		N > 0 -> [N]++reverse_create(N-1);
		true -> false
	end.

prints(N) when is_integer(N)->prints(N,1).
prints(N,M) when M=<N ->
	io:format("Number:~p~n",[M]),prints(N,M+1);
prints(_,_)->ok.

prints_even(N)->prints_even(N,1).
prints_even(N,M) when M=< N, M rem 2 =:= 0->
	io:format("Number:~p~n",[M]),prints_even(N,M+1);
prints_even(N,M) when M=<N -> prints_even(N,M+1);
prints_even(_,_)->ok.
