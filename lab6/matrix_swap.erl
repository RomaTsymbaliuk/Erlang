-module(matrix_swap).
-export([swap_diagonal/1]).

swap_diagonal(Matrix) ->
    Size = length(Matrix),
    swap_diagonal(Matrix, Size, 1, []).

swap_diagonal(_, Size, Row, Result) when Row > Size ->
    lists:reverse(Result);

swap_diagonal(Matrix, Size, Row, Result) ->
    RowElements = lists:nth(Row, Matrix),
    SwappedRowElements = swap_elements(RowElements, Row),
    UpdatedMatrix = lists:sublist(Matrix, Row - 1) ++ [SwappedRowElements] ++ lists:sublist(Matrix, Row + 1),
    NextRow = Row + 1,
    swap_diagonal(UpdatedMatrix, Size, NextRow, [SwappedRowElements | Result]).

swap_elements([Element | Rest], N) ->
    SwappedElement = lists:nth(N, Rest),
    SwappedRest = lists:sublist(Rest, N - 1) ++ [Element] ++ lists:sublist(Rest, N + 1),
    [SwappedElement | swap_elements(SwappedRest, N + 1)];
swap_elements([], _) -> [].
