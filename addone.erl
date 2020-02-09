-module(addone).
-export([add_one/1,add_acc_one/2]).

add_acc_one(L, []) -> L;
add_acc_one([],Acc) -> Acc;
add_acc_one([H|T],Acc) -> add_acc_one(T,[H+1,Acc]).


add_one(L) -> add_acc_one(L,[]).