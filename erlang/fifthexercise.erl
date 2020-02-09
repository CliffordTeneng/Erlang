-module (fifthexercise).
-export([power/2, power/3]).
%% math:log/1 and math:sqrt/1.
-define(DIGITS, 300).

%% computing X ^ Y

power(X, Y) when Y >= 0 ->
    power(X, Y, 1).

power(_, 0, Acc) ->
    Acc;
power(X, Y, Acc) when Y rem 2 =:= 1 ->
    power(X, Y - 1, Acc * X);
power(X, Y, Acc) ->
    power(X * X, Y div 2, Acc).