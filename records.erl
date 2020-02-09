-module(records).
-export([birthday/1, peter/0, showPerson/1, showStudent/1, student/0, admin_panel/1, adult_section/1, insertStudent/1]).
-record(person, {name,age=0,phone}).
-record(student, {name,phone,marks}).
-record(user,{id,name,group,age}).

%%%%use pattern matching to filter 
admin_panel(#user{name=Name, group=admin}) ->
    Name ++ " is allowed!";
admin_panel(#user{name=Name}) ->
    Name ++ " is not allowed".

%%%%you can extend user without problem
adult_section(U = #user{}) when U#user.age >=18 -> allowed;
adult_section(_) -> forbidden.

birthday(#person{age=Age} = P) ->
            P#person{age=Age+1}.

peter() -> #person{
    name="peter",
    age=25,
    phone="677827231"
    }.

student() -> #student{
    name="Natacha",
    phone="695736972",
    marks=25
}.

showPerson(#person{age=Age,phone=Phone,name=Name}) ->
        io:format("name: ~p ~n age: ~p ~n phone: ~p~n", [Name,Age,Phone]).

showStudent(#student{name=Name,phone=Phone,marks=Marks}) ->
        io:format("name: ~p ~n phone: ~p ~n marks: ~p~n", [Name,Phone,Marks]).

insertStudent([]) 