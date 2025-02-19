# Combinational Circuit Design using K-Maps

## Experiment Overview
This experiment involves designing a combinational circuit using Karnaugh Maps (K-Maps) and implementing it using Verilog. The goal is to create a circuit that processes two 2-bit inputs (`a` and `b`) and produces three outputs (`r`, `g`, `bl`) based on the given logic expressions.

## RTL Module
Below is the Verilog RTL code for the circuit:

```verilog
module lab4(
    input logic[1:0] a,
    input logic[1:0] b,
    output logic r,
    output logic g,
    output logic bl
);
  
  wire r1, r2, r3, r4, r5;
  wire g1, g2, g3, g4, g5;
  wire bl1, bl2, bl3, bl4;
  
  assign r1 = (~b[0]) & (~b[1]);
  assign r2 = (a[1] & (~b[0]));
  assign r3 = (a[0] & (~b[0]));
  assign r4 = (a[0] & (~b[1]));
  assign r5 = (a[0] & a[1]);
  assign r = r1 | r2 | r3 | r4 | r5;
  
  assign g1 = (~a[0]) & (~a[1]);
  assign g2 = (b[1] & (~a[0]));
  assign g3 = (b[0] & (~a[0]));
  assign g4 = (b[0] & (~a[1]));
  assign g5 = (b[0] & b[1]);
  assign g = g1 | g2 | g3 | g4 | g5;
  
  assign bl1 = (b[1] & (~a[1]));
  assign bl2 = (b[0] & (~a[0]));
  assign bl3 = (a[1] & (~b[1]));
  assign bl4 = (a[0] & (~b[0]));
  assign bl = bl1 | bl2 | bl3 | bl4;
  
endmodule
```

## Procedure

1. **K-Map Simplification:**
   - Construct Karnaugh Maps (K-Maps) for each output (`r`, `g`, `bl`).
   - Minimize Boolean expressions to simplify logic implementation.
   
2. **Circuit Design:**
   - Convert minimized Boolean expressions into logic gates.
   - Draw the circuit diagram using logic gates.
   
3. **Verilog Implementation:**
   - Write the Verilog module based on the Boolean expressions.
   - Define the input and output logic.
   
4. **Testbench Creation:**
   - Write a testbench (`lab4_tsb.sv`) to simulate the circuit.
   - Apply all possible input combinations and observe outputs.
   
5. **Simulation and Debugging:**
   - Use a simulator (ModelSim, Quartus, or Xilinx Vivado) to run the testbench.
   - Debug any errors in logic or syntax.
   
6. **Hardware Implementation (Optional):**
   - Implement the design on an FPGA .
   
   
## Expected Outcomes
- The circuit correctly maps inputs `a` and `b` to the respective outputs `r`, `g`, and `bl`.
- The testbench confirms the correctness of the design through waveform analysis.
- The implementation follows the minimized Boolean expressions obtained from K-Maps.

## Tools Required
- Verilog HDL
- Draw.io (for circuit diagrams)
- ModelSim/Quartus/Vivado for simulation
- FPGA (if implementing on hardware)

## Conclusion
This experiment demonstrates how to use Karnaugh Maps to simplify logic expressions and implement a combinational circuit using Verilog. The design is tested through simulation, ensuring the correctness of logic before hardware implementation.
