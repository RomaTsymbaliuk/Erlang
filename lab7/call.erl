
Data = [
    {person1, parent1, male},
    {person2, parent1, male},
    {person3, parent2, female},
    {person4, parent2, male},
    {person5, parent3, female},
    {person6, parent3, male}
],
Brothers = lab7:find_brothers(Data),
io:format("~p~n", [Brothers]).
