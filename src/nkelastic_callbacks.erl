%% -------------------------------------------------------------------
%%
%% Copyright (c) 2017 Carlos Gonzalez Florido.  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

%% @doc NkELASTIC callbacks

-module(nkelastic_callbacks).
-author('Carlos Gonzalez <carlosj.gf@gmail.com>').

-export([elastic_get_indices/2, elastic_get_mappings/3, elastic_get_aliases/3, elastic_get_templates/2]).

-include("nkelastic.hrl").
-include_lib("nkservice/include/nkservice.hrl").



%% ===================================================================
%% Types
%% ===================================================================

% -type continue() :: continue | {continue, list()}.




%% ===================================================================
%% Offered callbacks
%% ===================================================================

-type index_map() :: #{Index::binary() => map()}.
-type type_map() :: #{Type::binary() => map()}.
-type alias_map() :: #{Name::binary() => map()}.
-type template_map() :: #{Name::binary() => map()}.


%% @doc Will be called on plugin start to get indices to create or update
-spec elastic_get_indices(index_map(), nkservice:service()) ->
    {ok, index_map()}.

elastic_get_indices(Acc, _Service) ->
    {ok, Acc}.


%% @doc Will be called on plugin start to get mappings to create or update
-spec elastic_get_mappings(Index::binary(), type_map(), nkservice:service()) ->
    {ok, type_map()}.

elastic_get_mappings(_Index, Acc, _Service) ->
    {ok, Acc}.


%% @doc Will be called on plugin start to get aliases
-spec elastic_get_aliases(Index::binary, alias_map(), nkservice:service()) ->
    {ok, alias_map()}.

elastic_get_aliases(_Index, Acc, _Service) ->
    {ok, Acc}.


%% @doc Will be called on plugin start to get templates
-spec elastic_get_templates(template_map(), nkservice:service()) ->
    {ok, type_map()}.

elastic_get_templates(Acc, _Service) ->
    {ok, Acc}.


