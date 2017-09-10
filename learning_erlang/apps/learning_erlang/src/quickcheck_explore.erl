
-module(quickcheck_explore).
-export([quickcheck_explore/0]).

sort_idempotent(Xs) ->
    lists:sort(Xs) =:= lists:sort(lists:sort(Xs)).

prop_sort_idempotent() ->
    ?FORALL(Xs, list(int()),
            sort_idempotent(Xs)).

eqc:quickcheck(prop_sort_idempotent()).

