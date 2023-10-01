# Variables
IVERILOG = iverilog
VVP = vvp
OUTPUT = alu_tb
SRC = and_gate.v adder.v subtractor.v alu.v alu_tb.v

# Targets
all: compile run

compile:
	$(IVERILOG) -o $(OUTPUT) $(SRC)

run:
	$(VVP) $(OUTPUT)

clean:
	rm -f $(OUTPUT) *.vcd

.PHONY: all compile run clean
