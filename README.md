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

### Signal Conditioning: Transimpedance Amplifiers (TIA)
- **Choice**: **Transimpedance Amplifier (TIA)**.
- **Rationale**: Final selection based on design constraints for organic photodetector signal conditioning.
- **Implementation**: See `WP2_TIA_Simulation.m` for the MATLAB noise model and bandwidth analysis.

## 3. Communication Subsystem (The "Language")
### Bluetooth Mesh (Multi-Tiered Architecture)
- **Selection**: **Bluetooth Low Energy (BLE) Mesh**.
- **Topology**: Multi-hop "leaf-to-leaf" Managed Flooding to ensure network self-healing in dense canopies.
- **Architecture**: A multi-tiered approach using localized **Tree Relay Nodes** and a central **Forest Gateway** (Sink).
- **Details**: See `table.md` for the full comparison and architectural diagram.

## 4. Electromagnetics Subsystem (The "Mouth")
- **Antenna Type**: Bionic Fractal Vein Antenna.
- **Design**: Flexible substrate following leaf venation patterns for multi-band connectivity.

## 5. Current Implementation: MATLAB Simulation (WP2)
### TIA Noise & Performance Modeling (`WP2_TIA_Simulation.m`)
The initial simulation addresses the critical challenge of **high-capacitance organic sensors** ($C_{sh} \approx 500 \text{ pF}$).
- **Noise Analysis**: Models thermal noise, current noise, and the characteristic voltage noise gain peaking.
- **Compensation**: Utilizes feedback capacitance ($C_f$) to stabilize the TIA and optimize bandwidth.
- **Next Step**: Expand to include Power Budget Modeling based on TENG/TOPV harvesting profiles.

---
*Created on: April 8, 2026 (Updated: April 12, 2026 - Simulation V1.0)*
