clc;
clear;

global W UA M Cp T_vapor numero_de_tanques T_cero

numero_de_tanques = 3;
W = 100;                            %   kg/min
UA = 10;                            %   kJ/min.C
M = 1000;                           %   kg
Cp = 2.0;                           %   kJ/kg
T_vapor = 250;                      %   C
T_cero = 20;                            %   C

T_inicial = ones(1,numero_de_tanques)*T_cero;

tempo_comenzo = 0;                      %   min
tempo_remate = 90;                      %   min
intervalo_de_tempo = [tempo_comenzo tempo_remate];
[t,T] = ode45(@tanques,intervalo_de_tempo,T_inicial);
%[t,T] = ode45('tanques',tempo_comenzo,tempo_remate,T_inicial);

% Imos a face-lo grafico
plot(t,T(:,1),'ko-',t,T(:,2),'bd-',t,T(:,3),'r^-');
title('Temperatura en cada Tanque Axitado');
xlabel('tempo (min)');
ylabel('T ({^\circ}C)');
grid on;
legend('Tanque 1','Tanque 2','Tanque 3',0);
saida = [t T];

% Imos sacar un listado por pantalla medianamente decente
cabeceira = [sprintf('%s\t','t (min)  ') sprintf('%s\t','T_1 (ºC)') sprintf('%s\t','T_2 (ºC)') sprintf('%s','T_3 (ºC)')];
texto_da_fila = [sprintf('%8.5f\t %9.6f\t %9.6f\t %9.6f\n',saida)];
clc;
disp(cabeceira)
disp(texto_da_fila);

% Salvamo-los datos nun ficheiro de disco chamado tempos.dat
save tempos.dat saida -ascii;

% Se o quixeramos salvar con formato posturero fariamo-los os ficheiro 'a pelo'
nome_do_ficheiro = 'postureo.dat';
% o nome poderia leva-lo path completo 'c:\....\postureo.dat
identificador_do_ficheiro = fopen(nome_do_ficheiro,'w');
fprintf(identificador_do_ficheiro,'%-13.8e %-13.8e %-13.8e %13.8e\n',saida);
fclose(identificador_do_ficheiro);
return
