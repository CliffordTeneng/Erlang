-module(records).
-compile(export_all).
 
-record(user, {id, name, group, age}).

-record(dog, {name,
				type=sherpherd,
				hobbies,
				details=[]}).

first_dog() ->
	#dog{name="kiki",
		type=hunter,
		details=["Catches three rats daily"]}.

dog_factory(CorpName) ->
		#dog{name=CorpName,
			   hobbies="Chasing visitors"}.

%% use pattern matching to filter
admin_panel(#user{name=Name, group=admin}) ->
Name ++ " is allowed!";
admin_panel(#user{name=Name}) ->
Name ++ " is not allowed".
 
%% can extend user without problem
adult_section(U = #user{}) when U#user.age >= 18 ->
%% Show stuff that can't be written in such a text
allowed;
adult_section(_) ->
%% redirect to sesame street site
forbidden.


% other record functions in the erlang shell. 

% rd(R,D)    -- define a record
% rf()       -- remove all record information
% rf(R)      -- remove record information about R
% rl()       -- display all record information
% rl(R)      -- display record information about R
% rp(Term)   -- display Term using the shell's record information
% rr(File)   -- read record information from File (wildcards allowed)
% rr(F,R)    -- read selected record information from file(s)
% rr(F,R,O)  -- read selected record information with options