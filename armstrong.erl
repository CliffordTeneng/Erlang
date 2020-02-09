-module(armstrong).
-export([is_armstrong/1]).

digits(0, Acc) -> Acc;
digits(Num, Acc) -> digits(Num div 10, [Num rem 10 | Acc]).

is_armstrong(N) ->
    Digits = digits(N, []),
    N == lists:foldl(fun(X, Sum) -> Sum + math:pow(X, 3) end, 0, Digits).

