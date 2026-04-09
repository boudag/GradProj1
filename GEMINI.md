# ASEMN: Autonomous Smart Environmental Monitoring Node
## Project Context & Objectives
This project is for the **ECE 391s: Graduation Studies ELCE (Spring 2026)** course at Ain Shams University, Faculty of Engineering.

### Why this Project?
The goal is to design a conceptual **Autonomous Smart Environmental Monitoring Node (ASEMN)** capable of:
1.  **Sensing**: Collecting environmental data (pollution, UV, light, etc.).
2.  **Processing**: Conditioning and analyzing signals locally.
3.  **Transmission**: Sending data wirelessly to a remote station.

### Selected Application: V-OSEM (Vegetation-Overlayed Smart Environmental Monitoring)
We have chosen a **Bio-mimetic "Smart Leaf"** scenario to ensure the design is "real-world" and technically challenging across all four required specializations:
-   **Optics**: Flexible **Organic Photodetectors (OPD)** printed on film for 360° light and UV sensing.
-   **Electronics**: Hybrid energy harvesting (**TENG** for rain/wind + **TOPV** for solar) and **Charge-Sensitive Amplifiers (CSA)** for low-noise signal conditioning.
-   **Electromagnetics**: **Bionic Fractal Vein Antennas** that mimic natural leaf patterns for multi-band flexible connectivity.
-   **Communications**: **Bluetooth Mesh** for ultra-low power, multi-hop "leaf-to-leaf" data transmission in dense urban or forest canopies.

### Current Status
- [x] Application selection (V-OSEM Smart Leaf).
- [x] Optical subsystem definition (Flexible Organic Photodetectors).
- [x] Communication protocol selection (Bluetooth Mesh).
- [x] Power harvesting strategy (Hybrid TENG + TOPV).
- [x] Antenna design concept (Bionic Fractal Vein).
- [ ] MATLAB Signal Conditioning Simulation: Comparative analysis of TIA vs. CSA front-ends for high-capacitance organic sensors. (Next Priority)
- [ ] Power Budget Modeling: Integrating TENG and TOPV harvesting data into the system model.
- [ ] Technical Design Report (Pending).

**Note**: The "Wildfire Warning Node" has been pivoted to the "Smart Leaf" concept based on the V-OSEM PDF. Do not request the project PDF again; all requirements are summarized here and in the root `project.pdf`.
