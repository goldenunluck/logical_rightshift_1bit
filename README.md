# 8-Bit Logical Right Shifter

A Verilog implementation of an 8-bit logical right shifter with a 1-bit shift margin. The module accepts an 8-bit input, shifts all bits down by one index position, pads the Most Significant Bit (MSB) with a `0`, and outputs the dropped Least Significant Bit (LSB) as a carry-out (`cout`).

## Hardware Specifications
- **Input:** `in` (8-bit)
- **Outputs:** 
  - `out` (8-bit shifted result: `{1'b0, in[7:1]}`)
  - `cout` (1-bit dropped bit from `in[0]`)

## Project Structure
```text
├── logical_rshift.v      # Design module containing shifter logic
├── tb_logical_rshift.v   # Testbench module driving simulation vectors
└── README.md             # Documentation
```

## Simulation and Verification

### Prerequisites
Ensure you have `iverilog` (Icarus Verilog) and `gtkwave` installed on your machine.
```bash
sudo apt update
sudo apt install iverilog gtkwave
```

### Compilation & Execution Pipeline
Run the following commands in your terminal to compile the Verilog source files, execute the compiled design, and visually analyze the waveforms:

```bash
# 1. Compile design and testbench files
iverilog -o design_logical_rshift *.v

# 2. Run simulation to generate the VCD waveform file
vvp design_logical_rshift

# 3. View the timing diagrams
gtkwave sim_output.vcd
```
