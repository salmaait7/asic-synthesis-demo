
This project demonstrates a simple **ASIC design flow** using open-source tools

###  Tools Used
- **Yosys + GHDL** → for synthesis (RTL → gate-level)
- **Icarus Verilog (iverilog)** → for simulation
- **GTKWave** → for waveform visualization

###  Project Structure

asic-synthesis_folw/
├── src/ # RTL VHDL source file
├── tb/ # Testbenche
├── synth/ # Yosys synthesis
├── sim/ # Simulation outputs and script
└── libs/ # Standard cell libraries (Nangate45)

### How to use

# Synthesis
 yosys -m ghdl -s synth/run.ys

# Simulation

./sim/run_sim.sh

