-module(lab1).
-export([classify_ship/1]).

classify_ship(FlagNumber) ->
    case FlagNumber of
        1 -> io:format("Admiral-class battlecruiser~n");
        2 -> io:format("Queen Elizabeth-class battleship~n");
        3 -> io:format("Renown-class battlecruiser~n");
        4 -> io:format("Revenge-class battleship~n");
        5 -> io:format("Royal Sovereign-class battleship~n");
        6 -> io:format("Nelson-class battleship~n");
        7 -> io:format("King George V-class battleship~n");
        8 -> io:format("Tribal-class destroyer~n");
        9 -> io:format("C-class destroyer~n");
        10 -> io:format("D-class destroyer~n");
        _ -> io:format("Unknown ship class~n")
    end.
