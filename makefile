default: compile
	wasm2wat build/min.wasm

compile: builddir
	grep -v '#' minimal-wasm.hex | xxd -r -p > build/min.wasm 

builddir:
	mkdir -p build

PHONY: clean
clean:
	rm -r build
