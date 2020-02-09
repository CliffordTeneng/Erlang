-module (myster1).

-compile(export_all).

myster1(L) ->
	Unpaired = [N||N<-L,N rem 2 == 1],
	Paired = [N||N<-L,N rem 2 == 0],
	[Unpaired,Paired].
	