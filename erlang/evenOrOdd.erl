-module (evenOrOdd).
-export ([even/1,odd/1]).
even(N)->
	if N rem 2 =:= 0 ->
		true;
		true -> false
	end.
odd(N)->
	if
		N rem 2 =/= 0->
			true;
			true->false
	end.