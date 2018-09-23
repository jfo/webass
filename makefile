default: build
	grep -v '#' src/min.hex | xxd -r -p > build/min.wasm

build:
	mkdir build

PHONY: clean
clean:
	rm -r build
