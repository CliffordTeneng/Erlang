-module(exam).
-export([welcome_to_cot/0, mystery1/1, mystery2/1, mystery3/1, isa_leapyear/1, number/0, addlist/1]).

welcome_to_cot() -> "Welcome to The College of Technology, University of Buea".

mystery1(X) -> mystery2(X) - mystery3(X).

mystery2(X) -> P = mystery4(X), P * P.

mystery4(0) -> 0;
mystery4(X) -> mystery4(X-1) + X.

mystery3(0) -> 0;
mystery3(X) -> mystery3(X-1) + X * X.

isa_leapyear(Y) ->
    if (Y rem 4 =:= 0) andalso (Y rem 100 =/= 0) orelse (Y rem 400 =:= 0) ->
        true; 
    true ->
        false
    end.

addlist([]) -> 0;
addlist([H|T]) -> [H + addlist(T)].


number() -> [X || X <- lists:seq(1,100), X rem 3==0, X rem 5==0, X rem 6==0].

number() -> lists:foreach(fun(X) -> io:format("Element: ~p~n", [X]) end, [X || X <- lists:seq(1,100), (X rem 3==0) and (X rem 5==0) and (X rem 6==0)]).
