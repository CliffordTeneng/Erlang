-module (hof).
-import (lists, [reverse/1]).
-export ([doubleAll/1, revAll/1, evens/1, palins/1, palin/1, returnList/1, listAcc/2]).

doubleAll([])->[];
doubleAll([X|Xs])->[X*2|doubleAll(Xs)].

revAll([])->[];
revAll(L)->reverse(L).	

evens([])->[];
evens([X|Xs])->
	case X rem 2 == 0 of
		true-> [X|evens(Xs)];
		_->evens(Xs)
	end.

palins([])->[];
palins([X|Xs])->
	case palin(X) of
		true ->[X|palins(Xs)];
		_->palins(Xs)
	end.

palin(X)->X==reverse(X).

% filter(P,[])->[];
% filter(P,[X|Xs])->
% 	case P(X) of
% 		true ->[X|filter(Xs)];
% 		_->filter(P,Xs)
% 	end.


% forEach(F,[])->ok;
% forEach(F,[X|Xs])->F(X),
% 	forEach(F,Xs).


% sequence(N)->X=N,
% 	 Seq = fun(X)->lists:seq(1,X) end,
% 	 Seq(X).

% smaller([],_)->[];
% smaller([H|T],Y)->if
% 	H=<Y -> [H|smaller(T)];
% 	true-> false
% end.

% smaller([],Y)-> [];
% smaller([H|T],Y)->lists:forEach(fun([H|T],N) when H=<N->[H|smaller([T],Y)] end).


% bar()-> X=3,
% Add = fun(Y)->X+Y end,
% Add(10).
listAccAddA(0, B, Acc) -> Acc;
listAccAddA(A, B, Acc) -> if(A == 1) -> listAcc(A,Acc); true -> [B]++listAcc(A,Acc) end.

listAcc(0, Acc) -> Acc;
listAcc(A, Acc) ->
	 if (A == 1) -> listAcc(A-1, Acc++[trunc(A)]); 
	true -> if(A rem 2 == 0) -> listAcc(A-1, Acc++[trunc(A/2)]);
			true -> listAcc(A-1, Acc++[trunc((A*3)+1)])
			end
	end.

returnList(0) -> [];
returnList(A) -> listAccAddA(A,A,[]).