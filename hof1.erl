-module(hof1).
-import(lists, [reverse/1]).
-export([revAll/1, doubleAll/1, help_me/2, evens/1, palins/1, evensodd/1, palin/1, filter/2, foreach/2, print/1, times/1, bar/0, foo/0, small/2]).

doubleAll([]) -> [];
doubleAll([X|Xs])->[X*2 | doubleAll(Xs)].

revAll([]) -> [];
revAll(L) -> reverse(L).

evens([]) -> [];
evens([X|Xs]) -> 
    case X rem 2 == 0 of
        true -> [X|evens(Xs)];
        _ -> evens(Xs)
    end.


evensodd(A) when A rem 2 == 0 -> even;
evensodd(_) -> odd.

palin(X) -> X == reverse(X).

palins([]) -> [];
palins([X|Xs]) -> 
    case palin(X) of
        true -> [X|palins(Xs)];
        _ -> palins(Xs)
    end.

filter(P,[]) -> [];
filter(P, [X|Xs]) -> 
    case P(X) of
        true -> [X|filter(P, Xs)];
        _ -> filter(P, Xs)
    end.

foreach(F, []) -> ok;
foreach(F, [X|Xs]) -> 
    F(X), foreach(F,Xs).

print(1) -> 1;
print(N) -> foreach(fun(X) -> io:format("Element: ~p~n", [X]) end, lists:seq(1,N)).

times(X) -> fun(Y) -> X * Y end.
% doubleAll(Xs) -> map(times(2), Xs).

bar() -> X=3,
Add = fun(Y) -> X+Y end,
Add(10).

foo() -> X=3,
Toto = fun(X) -> X+1 end,
Toto(10).

small([], A) -> [];
small([X|Xs], A) ->
    if X > A -> small(Xs, A);
        X =< A -> [X | small(Xs,A)]
    end.

help_me(Animal, B) ->
        Talk = if Animal == cat  -> "meow";
            Animal == beef -> "mooo";
            Animal == dog  -> "bark";
            Animal == tree -> "bark";
            true -> "fgdadfgna"
        end,
    {Animal, "says " ++ Talk ++ "!", B}.

% small([], A) -> [];
% small([X|Xs], A) ->
%     if X > A -> small(Xs, A);
%         X =< A -> [X | small(Xs,A)]
%     end.