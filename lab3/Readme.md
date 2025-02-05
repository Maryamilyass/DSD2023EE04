# LAB 3: Combinational Circuits

## Overview
This lab focuses on designing and implementing combinational circuits using RTL (Register Transfer Level) coding in SystemVerilog. The given RTL code describes a simple combinational logic circuit with three inputs (`a`, `b`, `c`) and two outputs (`x`, `y`).

## RTL Code
The provided module `lab2` implements the following logic:

```verilog
module lab2(
    input a,
    input b,
    input c,
    output x,
    output y
    );
     assign x=(~c^(a|b));
     assign y=((a|b)&((~(a&b))^(a|b)));
endmodule
### Logic Description
1. **Output `x`**:
   - It is assigned the value of `(~c) XOR (a OR b)`. 
   - This means `x` depends on the negation of `c` and the OR operation of `a` and `b`, followed by an XOR operation.

2. **Output `y`**:
   - It is assigned the value of `(a OR b) AND (~(a AND b) XOR (a OR b))`.
   - This expression involves a combination of AND, OR, and XOR gates, ensuring the correct implementation of the desired combinational logic.

## Constraints and FPGA Implementation
A constraints file is included in the lab repository to map the RTL code to an FPGA. The constraints file defines the pin assignments and clock constraints necessary for synthesis and implementation on the FPGA board.

### FPGA Constraints File
- The constraints file is written in **Xilinx Constraint Format (XDC)**.
- It includes:
  - Pin assignments for the FPGA board.
  - Clock constraints to ensure proper timing.
  - Input and output specifications for physical connections.

### Simulation and Implementation in Vivado
This circuit was simulated and implemented using **Xilinx Vivado**:
1. **RTL Simulation**:
   - The design was tested using the **Vivado Simulator**.
   - Input waveforms were applied to verify logical correctness.
2. **Synthesis**:
   - The RTL code was synthesized to generate the corresponding hardware description.
3. **Implementation**:
   - The synthesized design was implemented and routed on the FPGA.
4. **Bitstream Generation**:
   - A bitstream file was generated and uploaded to the FPGA for testing.

## Lab Repository Structure
Our lab repository contains the following files:

- **RTL Code (SystemVerilog)**: Contains the implementation of combinational circuits.
- **Constraints File (FPGA-Specific, XDC)**: Defines FPGA pin mappings and configurations.
- **Lab Manual (`.docx`)**: Includes detailed explanations, implementation steps, and expected results.
- **Vivado Project Files**: Includes project settings, synthesis results, and simulation outputs.

## Objective
The goal of this lab is to:
- Understand how Boolean algebra is implemented using RTL coding.
- Use FPGA constraints to properly map logic to physical hardware.
- Simulate and validate the combinational circuit using Vivado.
- Implement the design on an FPGA and analyze its functionality.

---


