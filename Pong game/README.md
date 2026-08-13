# Parity Generator using Verilog

## Description

A Parity Generator is a combinational digital circuit used to generate a parity bit for a given binary data input. The parity bit helps detect single-bit errors during data transmission and storage.

This project implements a **4-bit even parity generator** using Verilog HDL and verifies its functionality through a testbench simulation.

## Features

* 4-bit binary data input
* Generates an even parity bit
* Written in Verilog HDL
* Includes a self-checking testbench
* Simulation-ready

## Working Principle

For even parity, the generated parity bit is selected so that the total number of 1s in the data and parity bit is even.

The parity bit is generated using the XOR operation:

```text
Parity = D3 ^ D2 ^ D1 ^ D0
```

## Input and Output

| Signal | Direction | Description       |
| ------ | --------- | ----------------- |
| data   | Input     | 4-bit binary data |
| parity | Output    | Even parity bit   |

## Files

```text
src/parity_generator.v
```

Contains the main Verilog design.

```text
testbench/parity_generator_tb.v
```

Contains the testbench used to verify the design.

```text
simulation/expected_output.txt
```

Contains the expected simulation results.

## Simulation

The testbench applies different 4-bit input combinations and displays the corresponding parity bit.

Example:

```text
Data = 0000  Parity = 0
Data = 0001  Parity = 1
Data = 0011  Parity = 0
Data = 0111  Parity = 1
Data = 1111  Parity = 0
```

## Applications

* Error detection
* Digital communication systems
* Data transmission
* Memory systems
* Computer networking

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave (for waveform visualization)

## Author

Created as a Verilog HDL digital design project for GitHub.
