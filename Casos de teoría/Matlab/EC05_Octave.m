clc;
clear;

global W UA M Cp T_vapor T_cero
W = 100;       % kg/min
UA = 10;       % kJ/min.C
M = 1000;      % kg
Cp = 2.0;      % kJ/kg
T_vapor = 250; % ºC
T_cero = 20;   % ºC

tempo_comenzo = 0;                      %   min
tempo_remate = 90;                      %   min
intervalo_de_tempo = [tempo_comenzo tempo_remate];

C_P     = 2.0;    # 
UA      = 10.0;   # kJ min-1 C-1
W       = 100.0; # kg/min
M       = 1000.0;  # kg
T_vapor = 250;

[t,T] = ode45(@(t,T) ( W * C_P * (T_cero - T ) + UA * (T_vapor - T) ) / ( M * C_P ), intervalo_de_tempo, T_cero);[t,T] = ode45(@untanque,intervalo_de_tempo,T_cero);

% Imos a face-lo grafico
plot(t,T,'ko-');
title('Temperatura do Tanque Axitado');
xlabel('tempo (min)');
ylabel('T ({^\circ}C)');
grid on;
return
