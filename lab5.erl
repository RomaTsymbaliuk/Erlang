-module(lab5).
-export([rearrange_list/1]).

rearrange_list(List) when length(List) rem 4 =:= 0 ->
    FirstQuarter = lists:sublist(List, 1, length(List) div 4),
    Rest = lists:nthtail(length(List) div 4 + 1, List),
    lists:reverse(FirstQuarter) ++ Rest;
rearrange_list(List) ->
    List.
