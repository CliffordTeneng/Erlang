-module(temp1).
-export([armstrong/1, main/1, leapyear/1, ones/2, power/2, duplicated/1]).


    digits(0, Acc) -> Acc;
    digits(Num, Acc) -> 
        digits(Num div 10, [Num rem 10 | Acc]).

armstrong(N) -> 
    Digits = digits(N, []),
    lists:foldl(fun(X, Sum) -> Sum + math:pow(X, 3) end, 0, Digits).


leapyear(Y) ->
    if (Y rem 4 =:= 0) and (Y rem 100 =/= 0) or (Y rem 400 =:= 0) ->
        io:fwrite("Its a leapyear"); 
    true ->
        io:fwrite("Its not a leapyear")
    end.

ones(0, Acc) -> Acc;
ones(A, Acc) -> 
    if(A>0) ->
        ones(A - 1, [1|Acc]);
    true ->
       ones((-A) - 1, [1|Acc])
    end.

power(A, B) -> 
            Ones = ones(B , []),
            Ans = lists:foldl(fun(X, P) -> P*A end, 1, Ones),
            if(B>=0) -> 
                io:fwrite("Answer: ~p~n",[Ans]);
            true -> 
                io:fwrite("Answer: ~.2p~n",[1/Ans])
            end.



duplicated([]) -> [],
duplicated(A) -> lists:foldl(fun(X, P) -> P = X,
    if(P==X) end, 0, A).


main(A) ->
    if A=<10 -> 
        io:format("Good morning")
    
    ; A>=10 -> 
        'Good night'
    end.