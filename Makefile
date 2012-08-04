NODE_PATH ?= ./node_modules
JS_COMPILER = $(NODE_PATH)/uglify-js/bin/uglifyjs
JS_BEAUTIFIER = $(NODE_PATH)/uglify-js/bin/uglifyjs -b -i 2 -nm -ns

all: \
	ZeroClipboard.min.js

ZeroClipboard.min.js: Makefile
	@rm -f $@
	$(JS_COMPILER) ./src/javascript/ZeroClipboard.js > $@