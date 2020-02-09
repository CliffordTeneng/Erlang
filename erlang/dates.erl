-module(dates).
-export ([classify_day/1]).
classify_day(saturday)->
	weekend;
classify_day(sunday)->
	weekend;
classify_day(_)->
	workday.