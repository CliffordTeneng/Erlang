-module (sort2).
-export ([reverse_sort/1, sort/1]).
-import (lists, [reverse/1]).

reverse_sort(L)->
	reverse(sort(L)).
sort(L)->
	lists:sort(L).
