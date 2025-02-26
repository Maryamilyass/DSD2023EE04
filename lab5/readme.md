# Seven-Segment Display System

## Overview
This project implements a **seven-segment display driver** using **SystemVerilog** for an FPGA. It includes:
- A **decoder** to convert a 4-bit input (0-F) into segment signals (A-G).
- A **selector** to activate one of eight displays.

## How It Works
- **Decoder:** Converts `num[3:0]` to segment outputs.
- **Selector:** Activates one display using `sel[2:0]`.
- **Integration:** Displays a hexadecimal digit (0-F) on any of 8 displays.

## FPGA Implementation
- **`num[3:0]`** → Switches `SW3-SW0`
- **`sel[2:0]`** → Switches `SW6-SW4`
- **`segment[6:0]`** → Seven-Segment Display Pins
- **`anode[7:0]`** → Anode Control Pins

## Simulation
```bash
vlog SevenSegmentDisplay.sv SevenSegmentDisplay_TB.sv
vsim SevenSegmentDisplay_TB
add wave *
run -all
