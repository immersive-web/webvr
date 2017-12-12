.PHONY: all spec/1.1/index.html

all: 1.1

1.1: spec/1.1/index.html

spec/1.1/index.html: spec/1.1/index.bs
	curl https://api.csswg.org/bikeshed/ -F file=@spec/1.1/index.bs -F output=err
	curl https://api.csswg.org/bikeshed/ -F file=@spec/1.1/index.bs -F force=1 > spec/1.1/index.html | tee
