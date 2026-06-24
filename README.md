# 32-bit RISC-V Inspired Single-Cycle CPU

## Overview

This project implements a simplified 32-bit RISC-V inspired single-cycle CPU using Verilog HDL. The processor performs instruction fetch, decode, execution, and write-back operations and supports arithmetic and logical instructions.

The design was simulated and verified using Icarus Verilog and GTKWave.

## Features

* 32-bit architecture
* Program Counter (PC)
* Instruction Memory
* Control Unit
* Register File (32 Registers)
* Arithmetic Logic Unit (ALU)
* Write-Back Stage
* GTKWave Verification

## Supported Instructions

| Instruction | Operation   |
| ----------- | ----------- |
| ADD         | Addition    |
| SUB         | Subtraction |
| AND         | Bitwise AND |
| OR          | Bitwise OR  |
| XOR         | Bitwise XOR |

## Architecture

Instruction Memory → Control Unit → Register File → ALU → Register File

## Verification

The processor was verified using a custom testbench and waveform analysis in GTKWave.

Example execution:

* ADD x3, x1, x2
* SUB x4, x1, x2
* AND x5, x1, x2
* OR  x6, x1, x2
* XOR x7, x1, x2

Initial register values:

* x1 = 10
* x2 = 5

Verified outputs:

* x3 = 15
* x4 = 5
* x5 = 0
* x6 = 15
* x7 = 15

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave



Architecture diagram

             +----------------+
             | Program Counter|
             +-------+--------+
                     |
                     v
             +----------------+
             | Instruction    |
             | Memory         |
             +-------+--------+
                     |
                     v
             +----------------+
             | Control Unit   |
             +-------+--------+
                     |
                     v
             +----------------+
             | Register File  |
             +-------+--------+
                     |
                     v
             +----------------+
             |      ALU       |
             +-------+--------+
                     |
                     v
             +----------------+
             | Write Back     |
             +----------------+
