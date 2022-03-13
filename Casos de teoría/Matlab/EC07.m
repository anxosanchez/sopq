% Resolve o modelo de Lotka-Voltera depredador-presa.
% Presa = alpha*x(1) - beta*x(1)*x(2); %presa
% Depredador = delta*x(1)*x(2) - gamma*x(2); %depredadores
% alpha & delta = velocidade de crecemento
% beta & gamma = interdependenca das especies


%Función depredador-presa
function LV = f2(t,x)
  LV = [0;0];
  alpha = 0.4;
  beta = 0.4;
  delta = 0.09;
  gamma = 2.0;
  LV(1) = alpha*x(1) - beta*x(1)*x(2); %presas
  LV(2) = delta*x(1)*x(2) - gamma*x(2); %depredadores
endfunction




clc
clear all
%poboación inital
y0 = [100;8];
x = 0.5;
soln = ode45(@f2,[0 100],y0)
t = linspace(0,50,100);
y(:,1) = deval(soln,t,1); %presa
y(:,2) = deval(soln,t,2); %depredador
figure
plot(t,y(:,1),'-o',t,y(:,2),'--');
grid on;
legend('Presa','Depredador');
xlabel('Tempo');
ylabel('PoboaciÃ³n');


