-module(lab4).
-export([filter_even/1]).

filter_even(List) ->
    lists:filter(fun(X) -> X rem 2 =:= 0 end, List).
