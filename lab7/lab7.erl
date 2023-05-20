-module(lab7).
-export([find_brothers/1]).

-record(person, {name, parent, gender}).

find_brothers(Data) ->
    Brothers = [ {Person1, Person2} || {Person1, Parent, _} <- Data,
                                   {Person2, Parent, _} <- Data,
                                   Person1 /= Person2,
                                   Person1#person.gender == male,
                                   Person2#person.gender == male,
                                   Person1#person.parent == Person2#person.parent ],
    Brothers.
