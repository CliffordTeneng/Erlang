-module (recursion).
-import (lists, [reverse/1]).
-export ([bump/1, sum/1, even/1, member/2, sum_acc/2, bump_acc/2]).

bump([])->[];
bump(Original_list)->bump_acc(Original_list, []).

sum([])->[];
sum(List)->sum_acc(List,0).

even([])->[];
% when the head of the list is even
even([Head|Tail]) when Head rem 2 == 0 ->[Head|even(Tail)];
% when the head of the list is odd
even([_|Tail])-> even(Tail).

member(_, [])-> false;
% when the head of the list matches the element
member(Head, [Head|_])-> true;
% when the head of the list does not match the element
member(Head, [_|Tail])-> member(Head,Tail).

sum_acc([],Sum)->Sum;
sum_acc([Head|Tail],Sum)->sum_acc(Tail, Head + Sum).

bump_acc([], New_constructed_list)-> reverse(New_constructed_list);
bump_acc([Original_list_head|Original_list_tail], New_constructed_list)-> 
	bump_acc(Original_list_tail, [Original_list_head + 1 | New_constructed_list]).