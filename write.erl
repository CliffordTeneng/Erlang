-module(write).
-export([even/1,odd/1,sum/1,sum/2,add/1]).

even(X) ->
    if X rem 2 =:= 0 -> true;
       X rem 2 =:= 1 -> false
    end.
odd(X) ->
    if (X rem 2 == 0) or (X rem 3 == 0) -> false;
       X rem 2 == 1 -> true
    end.
sum(X) ->
    if X==0 -> 0;
       X>0 -> X + sum(X-1)
    end.
sum(X,Y) ->
    if X==Y -> X;
       X=<Y -> X + sum(X+1,Y)
    end.
add(X) ->
    if X==1 -> 1;
       X>1 -> X + add(X-1)
    end.