run: compile
	node ./nodedemo.js

compile: builddir
	wat2wasm ./test.wat -o ./build/out.wasm

builddir:
	mkdir -p build

PHONY: clean
clean:
	rm -r build
