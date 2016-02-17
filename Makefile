# See LICENSE for licensing information.

PROJECT = routerl
PROJECT_DESCRIPTION = Erlang Message router
PROJECT_VERSION = 0.1.0

DEPS = ranch
dep_ranch = git https://github.com/ninenines/ranch 1.1.0

# Compile options.
ERLC_OPTS += +warn_export_all +warn_missing_spec +warn_untyped_record
TEST_ERLC_OPTS += +'{parse_transform, eunit_autoexport}'

# Dialyzer Options
DIALYZER_OPTS = -Werror_handling -Wunmatched_returns

# Standard targets.
include erlang.mk

# Generate rebar.config on build.
app:: rebar.config