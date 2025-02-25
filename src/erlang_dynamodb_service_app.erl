%%%-------------------------------------------------------------------
%% @doc erlang_dynamodb_service public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_dynamodb_service_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    erlang_dynamodb_service_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
