-module (db).
-export ([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

new()->[].

destroy(X) when is_list(X)-> ok.

write(Key, Element, Db)-> [{Key, Element}|delete(Key, Db)].

delete(Key, [{Key, _}| Rest])-> Rest;
delete(Key, [X| Rest])-> [X|delete(Key, Rest)];
delete(_, [])->[].

read(_, [])->{error, instance};
read(Key, [{Key,Element}|_])->{ok, Element};
read(Key, [_|Rest])-> read(Key, Rest).

match(Element, [{Key, Element}|Rest])-> [Key|match(Element, Rest)];
match(Element, [_|Rest])->match(Element, Rest);
match(_,[])-> [].