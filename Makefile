TOP := $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY: all build sync serve

all: serve

build:
	@$(HOME)/.rbenv/shims/jekyll build

serve:
	docker run --rm --label=jekyll --volume=$(CURDIR):/srv/jekyll -it -p 127.0.0.1:4000:4000 jekyll/jekyll jekyll s
