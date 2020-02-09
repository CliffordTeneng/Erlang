-module (add_acc_one).
-export ([add_acc_one/2,sum/1,sum_acc/2]).

sum([])-> [];
sum([Head|Tail])-> Head + sum(Tail). 

sum_acc([],Sum)->Sum;
sum_acc([Head|Tail],Sum)->sum_acc(Tail, Head + Sum).

add_acc_one(L,[])->L;
add_acc_one([],Acc)->Acc;
add_acc_one(Acc,[Head|Tail])->add_acc_one(Tail,[Head + 1|Acc]).