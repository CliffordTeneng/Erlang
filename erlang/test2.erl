-module (test2).
-export([pi/0, circle/1, rectangle/2, triangle/3]).
-include ("circle_record.hrl").

circle(Radius) when Radius =< 0 -> io:fwrite("The radius of the circle should be a Natural Number. ~n");
circle(Radius) when Radius > 0 ->
	P = #circle{radius = Radius},
	Area = pi() * P#circle.radius * P#circle.radius,
	Perimeter = 2 * pi() * P#circle.radius,
	io:fwrite("Area of circle: ~.2f~n",[Area]),
	io:fwrite("Perimeter of circle: ~.2f~n",[Perimeter]).

rectangle(Length, Width) ->
	P = #rectangle{length = Length, width = Width},
	Area = P#rectangle.length * P#rectangle.width,
	Perimeter = 2 * (P#rectangle.length + P#rectangle.width),
	io:fwrite("Area of rectangle: ~p~n",[Area]),
	io:fwrite("Perimeter of rectangle: ~p~n",[Perimeter]).

triangle(Hyponenus, Base, Height) ->
	P = #triangle{hyponenus = Hyponenus, base = Base, height = Height},
	Area = (P#triangle.base * P#triangle.height) / 2,
	Perimeter = P#triangle.base + P#triangle.height,
	io:fwrite("Area of triangle: ~.2f~n",[Area]),
	io:fwrite("Perimeter of triangleh: ~p~n",[Perimeter]).