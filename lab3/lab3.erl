-module(lab3).
-export([calculate_f/3]).

calculate_f(N, XStart, XEnd) ->
    calculate_f(N, XStart, XEnd, []).

calculate_f(N, XStart, XEnd, Acc) when XStart =< XEnd ->
    I = N - (XEnd - XStart),
    F = ((math:pow(I, 2) + XStart) * math:pow(XStart, 2)),
    calculate_f(N, XStart + 1, XEnd, [F | Acc]);
calculate_f(_, _, _, Acc) ->
    lists:reverse(Acc).
