.PHONY: all
all: bin/test bin/clock

bin/test: test.v
	mkdir -p bin
	iverilog -o bin/test test.v

bin/clock: clock.v
	mkdir -p bin
	iverilog -o bin/clock clock.v
