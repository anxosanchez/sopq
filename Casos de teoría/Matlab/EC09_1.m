clear
global W UA M Cp T_vapor numero_de_tanques T_cero

W = 12;                            %   kg/min
UA = 111.5;                            %   kJ/min.C
M = 760;                           %   kg
Cp = 2.3;                           %   kJ/kg
T_vapor = 150;                      %   C
T_cero = 25;                            %   C

T_inicial = T_cero;

tempo_comenzo = 0;                      %   min
tempo_remate = 100;                      %   min
intervalo_de_tempo = [tempo_comenzo tempo_remate];
[t,T] = ode45('tanque',intervalo_de_tempo,T_inicial);

% Ou, se o Matlab � a versi�n 4.X usar
%[t,T] = ode45('tanques',tempo_comenzo,tempo_remate,T_inicial);

% Imos a face-lo grafiqui�o
plot(t,T,'ko-');
title('Temperatura');
xlabel('tempo (min)');
ylabel('T (�C)');
grid on;
saida = [t T];

% Imos sacar un listado por pantalla medianamente decente
cabeceira = [sprintf('%s\t','t (min)  ') sprintf('%s\t','T (�C)') ];
texto_da_fila = [sprintf('%8.5f\t %9.6f\t\n',saida)];
clc;
disp(cabeceira)
disp(texto_da_fila);

% Salvamo-los datos nun ficheiro de disco chamado tempos.dat
save tempos.dat saida -ascii;

% Se o quix�ramos salvar con formato posturero far�amo-los os ficheiro 'a pelo'
nome_do_ficheiro = 'postureo.dat';
% o nome poder�ia leva-lo path completo 'c:\....\postureo.dat
identificador_do_ficheiro = fopen(nome_do_ficheiro,'w');
fprintf(identificador_do_ficheiro,'%-13.8e %-13.8e %-13.8e %13.8e\n',saida);
fclose(identificador_do_ficheiro);
return