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
- **Key Reference**: *V-OSEM Project Guidelines*: Comparative analysis and design choice.

### Power Management: e-peas AEM10941
- **Choice**: **AEM10941 Energy Harvesting PMIC**.
- **Key Features**:
    - **Ultra-Low Startup**: 380 mV cold-start (ideal for organic solar cells in shaded environments).
    - **Dual Outputs**: Dedicated 1.8V rail for sensors and a high-burst 80mA rail for Bluetooth Mesh radio.
    - **Efficiency**: 400 nA standby current and periodic MPPT sampling.
- **Rationale**: Specifically selected to handle the "bursty" power demands of Bluetooth Mesh gossip while maintaining a stable voltage for the sensitive OPD sensing front-end.

## 3. Communication Subsystem (The "Language")
### Bluetooth Mesh (Multi-Tiered Architecture)
- **Selection**: **Bluetooth Low Energy (BLE) Mesh**.
- **Topology**: Multi-hop "leaf-to-leaf" Managed Flooding to ensure network self-healing in dense canopies.
- **Architecture**: A multi-tiered approach using localized **Tree Relay Nodes** and a central **Forest Gateway** (Sink).
- **Details**: See `table.md` for the full comparison and architectural diagram.
- **Key Reference**: *Leonardi (2018)*: "Multi-Hop Real-Time Communications over BLE Mesh."

## 4. Electromagnetics Subsystem (The "Mouth")
... (unchanged) ...

## 5. Next Steps: MATLAB Simulation Plan (WP2 Focus)
### TIA Optimization and Power Budget Analysis
1. **Sensor Model**: Model the OPD as a current source $I_{photo}$ with high shunt capacitance $C_s$.
2. **Circuit Simulation**: Implement and optimize the **Transimpedance Amplifier (TIA)** design.
3. **Noise Analysis**: Perform noise modeling to determine the achievable **Signal-to-Noise Ratio (SNR)**.
4. **Power Budget**: Integrate BLE Mesh energy profiles and energy harvesting (TENG/TOPV) data into the system model.
5. **Autonomy Goal**: Calculate the minimum harvesting required for sustainable continuous operation.



---
*Created on: April 8, 2026 (Updated: Smart Leaf Pivot)*
