-module(db).
-export([new/0, destroy/1, write/3, delete/2, read/2, match/2, search/3, sum/2, sumAll/1, sumN/1, add_one/1]).

new() -> [].

destroy(_) -> ok.

write(Key, Element, Db) -> Db ++ [{Key, Element}].

delete(Key, Db) ->
    {R, Element} = read(Key, Db),
    if R == error -> R;
       R == ok -> Db -- [{Key, Element}]
    end.

search(Key, {Key, Element}, _) -> {ok, Element};
search(_, _, []) -> {error, not_found};
search(Key, {_, _}, Db) ->
    [{Key2, Element2} | T] = Db,
    search(Key, {Key2, Element2}, T).

read(Key, Db) -> search(Key, {false, false}, Db).

match(_, []) -> [];
match(Element, Db) ->
    [{Key2, Element2} | T] = Db,
    if Element == Element2 -> [Key2] ++ match(Element, T);
       true -> match(Element, T)
    end.

sum(X,Y) ->
    if X==Y -> X;
       X=<Y -> X + sum(X+1,Y)
    end.

sumAll(X) ->
    if X==0 -> 0;
       X>0 -> X + sumAll(X-1)
    end.

sumN(N) -> 
    if  N==1 -> 1;
        N>1 -> N + sumN(N-1)
    end.

add_one([]) -> [];
add_one([H|T]) -> [H+1 | add_one(T)].



