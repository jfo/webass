default: build
	xxd -r -p src/min.hex > build/min.wasm

build:
	mkdir build

PHONY: clean
clean:
	rm -r build
