
-module(funs).
-export([foo/0, bar/0]).

foo() -> X = 2,
Toto = fun(X) -> X+1 end.
Toto(10).

bar() -> X = 3,
Add = fun(Y) -> X+Y end.
Add(10).