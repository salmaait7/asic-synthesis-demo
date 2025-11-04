
This project demonstrates a simple **ASIC design flow** using open-source tools

###  Tools Used
- **Yosys + GHDL** → for synthesis (RTL → gate-level)
- **Icarus Verilog (iverilog)** → for simulation
- **GTKWave** → for waveform visualization

###  Project Structure

asic-synthesis_folw/<br>
├── src/ # RTL VHDL source file<br>
├── tb/ # Testbenche<br>
├── synth/ # Yosys synthesis<br>
├── sim/ # Simulation outputs and script<br>
└── libs/ # Standard cell libraries (Nangate45)<br>

### How to use

-**Synthesis**<br>
 yosys -m ghdl -s synth/run.ys

-**Simulation**<br>
./sim/run_sim.sh

