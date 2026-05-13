#!/bin/bash

RUN=librelane/system_detect2/runs/RUN_2026-05-12_11-53-22

FINAL_NETLIST=$RUN/final/nl/system_detect.nl.v
FINAL_SDF=$RUN/final/sdf/nom_tt_025C_1v80/system_detect__nom_tt_025C_1v80.sdf

SKY130_DIR=/home/salma/.ciel/ciel/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130B/libs.ref/sky130_fd_sc_hd/verilog
SKY130_V=$SKY130_DIR/sky130_fd_sc_hd.v
SKY130_PRIMS=$SKY130_DIR/primitives.v

rm -f sim_system_detect sdf_system_detect.log verilog.log verilog.dump wave_system_detect_tt.dump

cvc64 \
  -o sim_system_detect \
  +dumpvars \
  +typdelays \
  +sdf_annotate "$FINAL_SDF"+tb.dut \
  +sdf_log_file sdf_system_detect.log \
  +sdfverbose \
  "$SKY130_PRIMS" \
  -v "$SKY130_V" \
  "$FINAL_NETLIST" \
  tb/cvc/tb_system_detect.v

./sim_system_detect

gtkwave verilog.dump
