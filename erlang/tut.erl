-module (tut).

-export ([fac/1, len/1, duplicate/2, reverse/1]).

fac(N) when N==0 -> 1;
fac(N) when N>0 -> N*fac(N-1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

duplicate(0,_) -> [];
duplicate(N,Term) when N > 0 ->
	[Term|duplicate(N-1,Term)].

reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].