bin/test: test.v
	mkdir -p bin
	iverilog -o bin/test test.v
