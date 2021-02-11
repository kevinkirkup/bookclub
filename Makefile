IMAGE_TAG     = dev

.PHONY: check clean compile deps
.PHONY: test-dev test-ci

check:
	mix check

deps:
	mix deps.get

clean:
	mix clean

compile:
	mix compile

test-dev:
	MIX_ENV=test make
	mix test.dev

test-ci:
	MIX_ENV=test make
	mix test.ci
