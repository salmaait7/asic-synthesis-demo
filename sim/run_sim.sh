#!/bin/bash

cd "$(dirname "$0")/.."

rm -f sim/sim.vvp dump.vcd

# Compile
iverilog -gspecify -o sim/sim.vvp \
  libs/stdcells.v \
  synth/top_netlist.v tb/tb_top.v

# Simulation
vvp sim/sim.vvp

gtkwave sim/dump.vcd
