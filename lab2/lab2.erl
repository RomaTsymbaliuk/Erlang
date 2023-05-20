-module(lab2).
-export([calculate_f/2]).

calculate_f(X, K) when X < 10 ->
    K * math:pow(X, K);
calculate_f(X, K) when X > 10, K >= 1, K =< 8 ->
    K * X.
