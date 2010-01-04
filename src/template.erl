-module (template).
-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _Args) ->
    Args = lists:map(
        fun (Var) -> {ok, Value} = application:get_env(?MODULE, Var), Value end,
        []
    ),
    test_server_sup:start_link(Args).

stop(_State) -> ok.
