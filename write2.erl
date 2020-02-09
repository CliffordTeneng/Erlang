-module(write2).
-export([even/1,odd/1,sum/1,sum/2]).

even(X) ->
    if X rem 2 == 0 -> true;
       X rem 2 == 1 -> false
    end.
odd(X) ->
    if (X rem 2 == 0)-> false;
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
