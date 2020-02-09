-module (hof1).
-import (lists, [reverse/1, foreach/2, seq/2, foldl/3]).
-compile(export_all).

% customReverse(L) -> customReverse(L,[]).
% customReverse([],R)-> R;
% customReverse([Head|Tail], R)-> customReverse(Tail,[Head|R]).

doubleAll([]) -> [];
doubleAll([Head|Tail]) ->
	[Head * 2|doubleAll(Tail)]. 

revAll([]) -> [];
revAll(L) -> reverse(L).

evens([]) ->[];
evens([Head|Tail]) -> case Head rem 2 == 0 of
 	true -> [Head| evens(Tail)]; 
	_ -> evens(Tail)
	end.
 
palin(L) -> L == reverse(L).
palins([]) -> [];
palins([Head|Tail]) -> case palin(Head) of
	true -> [Head| palins(Tail)];
	_ -> palins(Tail)
	end. 	

% the predicates are map, foreach and filter because they return true or false
map(F,[]) ->[];
map(F,[Head|Tail]) ->
	[F(Head) | map(F,Tail)].

filter(P,[]) ->[];
filter(P,[Head|Tail]) ->
	case P(Head) of
	true ->	[Head| filter(P,Tail)];
	_ -> filter(P,Tail)
	end.

% custom for eachd
% forEach(F,[]) -> ok;
% forEach(F,[Head|Tail]) ->
% F(Head),
% forEach(F,Tail).

doubleAllWithMap(List) -> map( times(2) , List).
palinsWithFilter(List) -> filter( fun(X) -> X == reverse(X) end , List).
evensWithFilter(List) -> filter(fun(X) -> X rem 2 == 0 end , List).
displayEachElementWithForEach(List) -> foreach(fun(X) -> io:format("Element: ~p~n",[X]) end, List).
times(X) -> fun(Y) -> X*Y end.

sequence(N) -> 
	List = seq(1,N), 
	foreach(fun(X) -> io:format("Element: ~p~n",[X]) end, List).

smaller(List,Number)-> 
	filter(fun(X) -> X =< Number end, List).

evenSequence(N) ->
	List = lists:seq(1,N),
	NewList = filter(fun(X) -> X rem 2 == 0 end , List),
	foreach(fun(X) -> io:format("Element: ~p~n",[X]) end, NewList).

concatenateList([]) -> [];
concatenateList(List) ->
	lists:concat(List).


sumList(List) ->
	foldl(fun(Element,Accumulator) -> Element + Accumulator end , 0 , List).

evenSequence2(N) ->
	List = lists:seq(1,N),
	NewList = [L ||  L <- List, L rem 2 ==0],
	foreach(fun(X) -> io:format("Element: ~p~n",[X]) end, NewList).