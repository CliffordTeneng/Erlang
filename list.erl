-module(list).
-export([create_list/1, reverse_create_list/1, print_integer/1, print_even_integer/1, prints/1]).


% create_list(1) -> [1];
% create_list(A) -> create_list(A-1) ++ [A].

create_list(A) -> 
    if  A=:=1 -> [1];
        A > 1 -> create_list(A-1) ++ [A]
    end.

reverse_create_list(1) -> [1];
reverse_create_list(A) -> [A] ++ reverse_create_list(A-1).

print_integer(1) -> io:format("Number: ~p~n", [1]);
print_integer(N) -> io:format("Number: ~p~n", [print_integer(N-1)]),
                    io:format("Number: ~p~n", [N]).

print_even_integer(1) -> io:format("Number: ~p~n", [1]);
print_even_integer(N) -> io:format("Number: ~p~n", [print_integer(N-1)]),
                    io:format("Number: ~p~n", [N]).

prints(N) when is_integer(N)->prints(N,1).
prints(N,M) when M=<N ->
	io:format("Number:~p~n",[M]),prints(N,M+1);
prints(_,_)->ok.

