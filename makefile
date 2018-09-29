default: build
	grep -v '#' src/min.hex | ruby xxd.rb 

build:
	mkdir build

PHONY: clean
clean:
	rm -r build
