-module (addone).
-export ([add_one/1]).
-import (add_acc_one, [add_acc_one/2]).

add_one([])->[];
add_one([Head|Tail])->[Head+1|add_one(Tail)];

add_one(L)->add_acc_one(L,[]).