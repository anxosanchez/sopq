%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                            %
% ficheiro Problema_5.m                                                      %
%                                                                            %
% Curso de doutoramento 2001-2002: M�todos num�ricos ns Enxe�er�a Qu�mica    %
%                                                                            %
% Anxo S�nchez Berm�dez (2001)                                               %  
%                                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	                                                                          %
%   Un balance de forzas simple para unha part�cula esf�rica que acada a     %
%   velodicade terminal nun fluido ven dada por:                             %
%                                                                            %
%	 v_t=sqrt[(4g(rho_p-rho)D_p)/(3C_D*rho)]                                  %
%                                                                            %
%   onde:                                                                    %
%   v_t	:	� a  the velodicade terminal en m/s                              %
%   g		:	� a aceleraci�n da gravedade (9.80665 m/s^2)                     %
%   rho_p:	� a densidade da part�cula en kg/m^3                             %
%   rho	:	� a densidade do fluido en kg/m^3                                %
%   D_p	:	� o di�metro da part�cula esf�rica en m                          %
%   C_D	:	� un coeficiente adimensional                                    %
%                                                                            %
%   O coeficiente de arrastre da part�cula � velocidade terminal var�a co    %
%   n�mero de Reynolds(Re) do seguinte xeito:                                %
%                                                                            %
%			C_D=24/Re 		 				para Re<0.1                              %		
%			C_D=24*(1+0.14Re^0.7)/Re 	para 0.1<Re<1000                         %
%			C_D=0.44 		 				para 1000<Re<350000                      %
%			C_D=0.19-80000/Re 	 		para 350000<Re                           %
%                                                                            %
%   onde Re = D_p*v_t*rho/mu e mu � a viscosidade en Pa*s.                   %
%                                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;


rho_p=1800;				%kg/m^3
D_p=0.208*10^(-3);	%m
T=298.15;				%K
rho=994.6;				%kg/m^3
mu=8.931*10^(-4);		%kg/m/s
g=9.80665;				%m/s^2

% Entramos valores de v_t e V-T-g diferentes
v_t = 10;				%m/s
v_t_g = 20;			%m/s

% Rearranxamo-la ecuaci�n para resolver a zero ca funci�n fzero
%
%	f(v_t)=v_t^2*(3C_D*rho)-4g(rho_p-rho)D_p=0

% Facemos un bucle para resolver
tae = 0;
while tae == 0

% Calculate Re from the guessed v_t_g
Re = D_p*v_t_g*rho/mu;

% Determinamos C_D con unha secuencia de if's
 if Re<0.1
	C_D=24/Re;
 elseif Re<1000 
	C_D=24*(1+0.14*Re^0.7)/Re;
 elseif Re<350000
	C_D=0.44;
 else
	C_D=0.19-80000/Re;
 end

% Calculamos v_t
v_t=sqrt((4*g*(rho_p-rho)*D_p)/(3*C_D*rho));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                            %
% Este bucle corresponde � iteraci�n de punto fixo: se  v_t � igual �        %
% calculado no bucle anterior, paramos facendo tae = 1 e saimos do while     %
% se non sustituimo-lo valor de v_t_g polo anterior e seguimos               %                                   %
%                                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 if (v_t == v_t_g)
	tae = 1;
 else
	v_t_g = v_t;
 end

end

disp('Apartado a)');

v_t		%0.0158 m/s
Re		%3.6556
C_D		%8.8427

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                            %
% Para resolve-lo apartado (b) ter�amos que sustitui-lo valor de g polo de   %
% 30.0g que � a aceleraci�n na centr�fuga.                                   %
%                                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rho_p=1800;				%kg/m^3
D_p=0.208*10^(-3);	%m
T=298.15;				%K
rho=994.6;				%kg/m^3
mu=8.931*10^(-4);		%kg/m/s
g=30*9.80665;				%m/s^2

% Entramos valores de v_t e V-T-g diferentes
v_t = 10;				%m/s
v_t_g = 20;			%m/s

% Rearranxamo-la ecuaci�n para resolver a zero ca funci�n fzero
%
%	f(v_t)=v_t^2*(3C_D*rho)-4g(rho_p-rho)D_p=0

% Facemos un bucle para resolver
tae = 0;
while tae == 0

% Calculate Re from the guessed v_t_g
Re = D_p*v_t_g*rho/mu;

% Determinamos C_D con unha secuencia de if's
 if Re<0.1
	C_D=24/Re;
 elseif Re<1000 
	C_D=24*(1+0.14*Re^0.7)/Re;
 elseif Re<350000
	C_D=0.44;
 else
	C_D=0.19-80000/Re;
 end

% Calculamos v_t
v_t=sqrt((4*g*(rho_p-rho)*D_p)/(3*C_D*rho));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                            %
% Este bucle corresponde � iteraci�n de punto fixo: se  v_t � igual �        %
% calculado no bucle anterior, paramos facendo tae = 1 e saimos do while     %
% se non sustituimo-lo valor de v_t_g polo anterior e seguimos               %                                   %
%                                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 if (v_t == v_t_g)
	tae = 1;
 else
	v_t_g = v_t;
 end

end

disp('Apartado b)');

v_t		%0.2060
Re    %47.723
C_D   %1.5566
