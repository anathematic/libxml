ERL_INCLUDE_PATH = $(shell erl -eval 'io:format("~s", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)
LIBXML2_VERSION = 2.9.4
LIBXML2_SHA256 = "ffb911191e509b966deb55de705387f14156e1a56b21824357cdf0053233633c"
SHASUM = $(shell if which shasum > /dev/null 2>&1; then echo "shasum -a 256"; else echo "sha256sum"; fi)
CURL = $(shell if which curl > /dev/null 2>&1; then echo "curl -LO"; else echo "wget"; fi)

ifeq ($(shell uname),Darwin)
	LDFLAGS += -undefined dynamic_lookup
endif

