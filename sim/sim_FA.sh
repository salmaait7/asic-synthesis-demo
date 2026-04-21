#!/bin/bash
set -e

mkdir -p ../waves

iverilog -o simv -c filelist.f
vvp simv
gtkwave wave.vcd
