# V-OSEM (ASEMN) Technical Research & Design Specifications

This project focuses on the design of a **Vegetation-Overlayed Smart Environmental Monitoring (V-OSEM)** node, a bio-mimetic "Smart Leaf" for autonomous environmental sensing.

## 1. Optical Subsystem (The "Skin")
### Organic Photodetectors (OPD)
- **Component**: Flexible OPDs printed on transparent PET/PEN films.
- **Spectrum**: UV (240-380 nm) and Visible (400-700 nm).
- **Design Choice**: 360° coverage via multi-sensor layout on a flexible substrate.
- **Key Reference**: *Yang (2026)*: "Non-fullerene acceptor-based flexible organic photodetectors."

## 2. Power & Electronics Subsystem (The "Brain")
### Hybrid Energy Harvesting
- **Triboelectric Nanogenerator (TENG)**: Harvesting energy from **raindrop impacts** and **wind-induced fluttering**.
- **Transparent Organic Photovoltaics (TOPV)**: Harvesting **solar energy** while remaining semi-transparent to allow plant photosynthesis.
- **Key Reference**: *Ruiz-Gonzalez (2025)*: "Transparent PEDOT:PSS/PDMS Leaf Tattoos for Energy Harvesting."

### Signal Conditioning: CSA vs. TIA
- **Choice**: **Charge-Sensitive Amplifier (CSA)**.
- **Rationale**: Higher power efficiency and lower noise floor for organic sensors with high intrinsic capacitance.
- **Key Reference**: *Zaki (2022)*: "High Time Resolution, Low-Noise, Power-Efficient, CSA."

## 3. Communication Subsystem (The "Language")
### Bluetooth Mesh (Multi-hop)
- **Protocol**: Bluetooth Low Energy (BLE) Mesh.
- **Method**: "Leaf-to-leaf" data hopping to reach a remote gateway.
- **Optimization**: **Compressive Sensing** to reduce transmission data volume by ~90%, extending node battery life.
- **Key Reference**: *Leonardi (2018)*: "Multi-Hop Real-Time Communications over BLE Mesh."

## 4. Electromagnetics Subsystem (The "Mouth")
### Bionic Fractal Vein Antenna
- **Design**: Fractal geometry (e.g., Minkowski) that mimics natural leaf venation.
- **Features**: Multi-band operation, compact flexible footprint, and high gain in small areas.
- **Key Reference**: *Zhang (2022)*: "DESIGN OF A NOVEL FRACTAL UWB ANTENNA WITH BIONIC STRUCTURE."

## 5. Next Steps: MATLAB Simulation Plan (WP2 Focus)
### TIA vs. CSA Efficiency Comparison (Next Session)
1. **Sensor Model**: Model the OPD as a current source $I_{photo}$ with high shunt capacitance $C_s$ (typical for large-area organic sensors).
2. **Circuit Simulation**: Implement both a standard Op-Amp TIA and a **Charge-Sensitive Amplifier (CSA)** using a feedback capacitor $C_f$.
3. **Noise Analysis**: Compare the **Signal-to-Noise Ratio (SNR)** and **Power Dissipation ($P_{diss}$)** for both designs.
4. **Energy Harvesting**: Model the **TENG** and **TOPV** energy inputs to calculate the system's power budget.
5. **Goal**: Validate the selection of the CSA and the hybrid power harvesting strategy as the optimal design for the "Smart Leaf" environment.

---
*Created on: April 8, 2026 (Updated: Smart Leaf Pivot)*
