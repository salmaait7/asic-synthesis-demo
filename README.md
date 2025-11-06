
This project demonstrates a simple **ASIC design flow** using open-source tools

###  Tools Used
- **Yosys + GHDL** → for synthesis (RTL → gate-level)
- **Icarus Verilog (iverilog)** → for simulation
- **GTKWave** → for waveform visualization <br>
All these tools were used through the **OSS CAD Suite**, which provides an integrated open-source environment for digital design, synthesis, and simulation.
To set up the environment after installation, run the following command in your terminal:
source ~/oss-cad-suite/environment

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


### Results:
<img width="983" height="266" alt="image" src="https://github.com/user-attachments/assets/7663d1c1-5e29-4a60-b046-81657de5b482" />


### Ressources
- To install OSS CAD Suite: **https://github.com/YosysHQ/oss-cad-suite-build/releases**
- Standard-cell libraries derived from the FreePDK45 / Nangate Open Cell Library, provided for research and educational purposes: **https://github.com/mflowgen/freepdk-45nm** <br>
- Yosys “CMOS” Example: Useful for understanding how RTL logic is mapped to CMOS structures and for verifying synthesis results; **https://github.com/YosysHQ/yosys/tree/main/examples/cmos**
