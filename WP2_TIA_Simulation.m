%% V-OSEM WP2: TIA Noise & Performance Simulation
% Model: Organic Photodetector (OPD) -> Transimpedance Amplifier (TIA)
% Goal: Analyze noise gain peaking and SNR for high-capacitance sensors.

clear; clc; close all;

%% Parameters
Rf = 1e6;           % Feedback Resistance (1 MOhm)
Cf = 2e-12;         % Compensation Capacitance (2 pF)
Csh = 500e-12;      % OPD Shunt Capacitance (500 pF) - HIGH CAPACITANCE
en = 5e-9;          % Op-amp Input Voltage Noise (5 nV/rtHz)
in = 10e-15;        % Op-amp Input Current Noise (10 fA/rtHz)
f = logspace(0, 7, 1000); % Frequency range (1 Hz to 10 MHz)
w = 2*pi*f;

%% Transfer Functions
% Ideal Signal Gain: Vout/Iin = -Rf / (1 + jw*Rf*Cf)
Zf = Rf ./ (1 + 1j*w*Rf*Cf);
A_signal = abs(Zf);

% Noise Gain: Gn = 1 + Zf/Zin (where Zin = 1 / jw*Csh)
Zin = 1 ./ (1j*w*Csh);
Gn = 1 + Zf./Zin;
A_noise = abs(Gn);

%% Noise Components
% 1. Thermal Noise of Rf (V^2/Hz)
V_thermal = sqrt(4 * 1.38e-23 * 300 * Rf) * ones(size(f));

% 2. Current Noise Contribution (V^2/Hz)
V_in = in * abs(Zf);

% 3. Voltage Noise Contribution (V^2/Hz) - THE NOISE PEAK
V_en = en * A_noise;

% Total Output Noise (V/rtHz)
V_total = sqrt(V_thermal.^2 + V_in.^2 + V_en.^2);

%% Plots
figure('Color', 'w');

subplot(2,1,1);
loglog(f, A_signal, 'LineWidth', 2);
grid on; hold on;
xlabel('Frequency (Hz)'); ylabel('Signal Gain (V/A)');
title('TIA Signal Gain (Bandwidth)');

subplot(2,1,2);
loglog(f, V_total, 'r', 'LineWidth', 2); hold on;
loglog(f, V_en, '--k');
loglog(f, V_thermal, '--b');
grid on;
xlabel('Frequency (Hz)'); ylabel('Output Noise (V/\surdHz)');
legend('Total Output Noise', 'Op-amp Voltage Noise (Peaking)', 'Rf Thermal Noise');
title('Noise Spectral Density and Peaking');

%% Insights
[max_noise, idx] = max(V_total);
fprintf('Noise Peak: %.2e V/rtHz at %.2e Hz\n', max_noise, f(idx));
fprintf('Bandwidth (3dB): %.2e Hz\n', 1/(2*pi*Rf*Cf));
