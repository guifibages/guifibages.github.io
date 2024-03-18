TOP := $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY: all serve

all: serve

serve:
	docker run --name=gb-hugo --rm --volume=$(CURDIR):/src -it -p 127.0.0.1:1313:1313 hugomods/hugo:base-0.124.0 hugo server --bind 0.0.0.0
