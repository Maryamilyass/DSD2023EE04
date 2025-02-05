# LAB 3: Combinational Circuits

## Overview
This lab focuses on designing and implementing combinational circuits using RTL (Register Transfer Level) coding in SystemVerilog. The given RTL code describes a simple combinational logic circuit with three inputs (`a`, `b`, `c`) and two outputs (`x`, `y`).

## RTL Code Explanation
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
```
### Logic Description:
1. **Output `x`**:
   - It is assigned the value of `(~c) XOR (a OR b)`. 
   - This means `x` depends on the negation of `c` and the OR operation of `a` and `b`, followed by an XOR operation.

2. **Output `y`**:
   - It is assigned the value of `(a OR b) AND (~(a AND b) XOR (a OR b))`.
   - This expression involves a combination of AND, OR, and XOR gates, ensuring the correct implementation of the desired combinational logic.

## Lab Repository Structure
Our lab repository contains the following files:

- **RTL Code (SystemVerilog)**: Contains the implementation of combinational circuits.
- **Constraint File (FPGA-Specific)**: Defines FPGA pin mappings and configurations.
- **Lab Manual (`.docx`)**: Includes detailed explanations, implementation steps, and expected results.

## Objective
The goal of this lab is to understand how basic Boolean algebra is implemented using RTL and to test the designed circuit on an FPGA.g

---


