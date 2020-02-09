-module (fourthexercise).
-export ([leapYear/1]).

leapYear(Y) ->
	if	((Y rem 4 =:= 0) and (Y rem 100 =/= 0) or (Y rem 400 =:= 0)) ->
			io:fwrite("its a leap year");
	true ->
		io:fwrite("its not a leap year")
	end.