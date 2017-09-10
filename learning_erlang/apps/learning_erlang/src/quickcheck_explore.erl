
-module(quickcheck_explore).

-include_lib("eqc/include/eqc.hrl").
-compile(export_all).

sort_idempotent(Xs) ->
    lists:sort(Xs) =:= lists:sort(lists:sort(Xs)).

prop_sort_idempotent() ->
    ?FORALL(Xs, list(int()),
            sort_idempotent(Xs)).


main() ->
    io:format("=====Result  ====="),
    eqc:quickcheck(prop_sort_idempotent()),
    io:format("====End =====").

