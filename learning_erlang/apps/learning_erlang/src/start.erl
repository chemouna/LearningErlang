
-module(start).
-export([start/0]).

-define(MAX_NO_VENT, 5)

start() ->
    %% send prng
    <<A:32, B:32, C:32>> = crypto:rand_bytes(12),
    random:seed(A,B,C),
    wait_any_key().

wait_any_key() ->
    io:getLine("To Start, Press any key.\n> ").
    first_core_check().

%% https://howistart.org/posts/erlang/1
%% http://ferd.ca/erlang-s-tail-recursion-is-not-a-silver-bullet.html


