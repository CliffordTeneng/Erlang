-module(armstrong).
-export([elipse_soln/0,is_armstrong/1, notSquare/2,pel_equation/2, armstrong/1, triangle_sides_p/1,circle_soln/0]).

digits(0, Acc) -> Acc;
digits(Num, Acc) -> digits(Num div 10, [Num rem 10 | Acc]).

is_armstrong(N) ->
    Digits = digits(N, []),
    N == lists:foldl(fun(X, Sum) -> Sum + math:pow(X, 3) end, 0, Digits).

armstrong(N) -> 
    B = lists:seq(1,N),
    [X || X<-B, is_armstrong(X)].


notSquare([], Acc) -> Acc;
notSquare([H|T], Acc) ->
    A = math:pow(H, 0.5),
    B = A - trunc(A),
    if(B ==0 ) -> notSquare(T, Acc);
    true -> notSquare(T, [H|Acc]) end.


pel_equation(N, A) ->
    B = notSquare(lists:seq(1,N), []),
    [{X,Y}|| X <- lists:seq(1,A), Y <- lists:seq(1,A), N<-B, (X*X-(N*Y*Y))==1].


triangle_sides_p(A) ->
    B = lists:seq(1,A),
     [{X,Y,Z}|| X <- B, Y <- B, Z <- B, (X*X +Y*Y)==Z*Z].

circle_soln() ->
    B = lists:seq(-100,100),
     [{X,Y}|| X <- B, Y <- B, (X*X +Y*Y)==8].

elipse_soln() ->
    B = lists:seq(-8,8),
     C = [{X,Y}|| X <- B, Y <- B, (X*X +(Y*Y)/4)==1],
     D = [{X,Y}|| X <- B, Y <- B, ((X*X)/4 +Y*Y)==1],
     [C,D].


% pel_equation(A) ->
%     [{X,Y}|| X <- lists:seq(1,A), Y <- lists:seq(1,A), ((X*X)-(2*Y*Y))==1].
    
% [{X,Y}|| X <- lists:seq(1,100), Y <- lists:seq(1,100), ((X*X)+(Y*Y))==25].