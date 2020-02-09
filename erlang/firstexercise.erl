-module (firstexercise).
-export ([func1/1]).

func1(X) -> 
	if X rem 2 == 0 ->
			io:fwrite("the numberis even \n");
	true ->
		io:fwrite("the number is odd \n")	
	end.
	