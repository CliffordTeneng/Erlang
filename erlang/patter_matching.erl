-module (patter_matching).
-export ([part1/1, part2/1]).


part1(Student) ->
	[{Name}||{Name, Sex, Age} <- Student, Sex =:= $M, Age>21].

part2(Student) ->
	[{Name}||{Name, Sex, Age} <- Student, Sex =:= $M orelse Age>20].
