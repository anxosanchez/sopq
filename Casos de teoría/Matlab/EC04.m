clear all
clc
global Cao Cbo Kci Kcii Kciii vector_c

% definimos constantes
Cao = 1.5; Cbo=1.5; Kci= 1.06; Kcii= 2.63; Kciii= 5;

% Estimación inicial e tolerancia
err=1.; 
iteracions=0;
% Quitar os comentarios en función da estimación inicial desexada

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Apartado 1                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vector_c=[1.5 1.5 0 0 0 0 0]; 				% Estimación inicial, apartado 1
estimacion=vector_c;

while err > 1e-4 & iteracions < 200
   x= prob4(vector_c);
   J= jac4(vector_c);
   errr= -J\x';
   vector_c=vector_c+errr';
   errr=abs(errr);
   err= sqrt(sum(errr));
   iteracions=iteracions+1;
end

disp('Estimacion')
disp(estimacion)
disp('Erro')
disp(err)
disp('   A          B         C         D         X        Y       Z');
disp(vector_c);
disp('IteraciÃ³ns')
disp(iteracions)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Apartado 2                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Estimación inicial e tolerancia
err=1.; 
iteracions=0;
% Quitar os comentarios en función da estimación inicial desexada

vector_c=[-.5 -1.5 -1 1 1 2 1];  			% Estimación inicial, apartado 2

estimacion=vector_c;

while err > 1e-4 & iteracions < 200
   x= prob4(vector_c);
   J= jac4(vector_c);
   errr= -J\x';
   vector_c=vector_c+errr';
   errr=abs(errr);
   err= sqrt(sum(errr));
   iteracions=iteracions+1;
end

disp('Estimacion')
disp(estimacion)
disp('Erro')
disp(err)
disp('   A          B         C         D         X        Y       Z');
disp(vector_c);
disp('IteraciÃ³ns')
disp(iteracions)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Apartado 3                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Estimación inicial e tolerancia
err=1.; 
iteracions=0;

% Quitar os comentarios en función da estimación inicial desexada
vector_c=[-18.5 -28.5 -10 10 10 20 10]; 	% Estimación inicial, apartado 3

estimacion=vector_c;

while err > 1e-4 & iteracions < 200
   x= prob4(vector_c);
   J= jac4(vector_c);
   errr= -J\x';
   vector_c=vector_c+errr';
   errr=abs(errr);
   err= sqrt(sum(errr));
   iteracions=iteracions+1;
end

disp('Estimación')
disp(estimacion)
disp('Erro')
disp(err)
disp('   A          B         C         D         X        Y       Z');
disp(vector_c);
disp('Iteracións')
disp(iteracions)


function f = prob4(vector_c)
  global Cao Cbo Kci Kcii Kciii
  % vector_c son as concentracións das sete especies.
  % vector_c(1) é a concentración da especie a,
  % vector_c(2) é a concentración de b etc.

  f(1)= vector_c(3)*vector_c(4)-Kci*vector_c(1)*vector_c(2);
  f(2)= vector_c(6)*vector_c(5)-Kcii*vector_c(2)*vector_c(3);
  f(3)= vector_c(7)- Kciii*vector_c(1)*vector_c(5);
  f(4)= Cao - vector_c(1) - vector_c(4) - vector_c(7);
  f(5)= Cbo - vector_c(2) - vector_c(4) - vector_c(6);
  f(6)= vector_c(4) - vector_c(6) - vector_c(3);
  f(7)= vector_c(6) - vector_c(5)- vector_c(7);
endfunction