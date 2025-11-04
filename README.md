
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

### Ressources
- Standard-cell libraries derived from the FreePDK45 / Nangate Open Cell Library, provided for research and educational purposes: **https://github.com/mflowgen/freepdk-45nm** <br>
- Yosys “CMOS” Example: Useful for understanding how RTL logic is mapped to CMOS structures and for verifying synthesis results; **https://github.com/YosysHQ/yosys/tree/main/examples/cmos**
