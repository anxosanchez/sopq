% Diagrama Txy para n-hexano-n-octano a 1.5 bar
% 
P=1.5; % bar
A=[4.00266 4.04867]; B=[1171.53 1355.126]; C=[-48.784 -63.633];
% Boling point at 1.5 bar
Tb=B./(A-log(P))-C;
fprintf('Temperatura de fervura do n-hexano a P = %g, Tb = %6.2f C\n',P,Tb(1))
fprintf('Temperatura de fervura do n-hexano a P = %g, Tb = %6.2f C\n',P,Tb(2))
T=linspace(Tb(1),Tb(2),50);
K1=exp(A(1)-B(1)./(T+C(1)))/P;
K2=exp(A(2)-B(2)./(T+C(2)))/P;
x=(1-K2)./(K1-K2); y = K1.*x;
ymin=round(Tb(1)-1);ymax=round(Tb(2)+1); 
4-4
% Solve for x and y at T = 400 K
T1=400;
K1=exp(A(1)-B(1)./(T1+C(1)))/P;
K2=exp(A(2)-B(2)./(T1+C(2)))/P;
x1=(1-K2)/(K1-K2); y1 = K1*x1;
plot(x,T,y,T,'b-',[0 y1],[T1 T1],'r-',[x1 x1],[ymin T1],'--',[y1 y1],[ymin T1],'--')
axis([0 1 ymin ymax]);
grid on
title('Diagrama T-x-y para o sistema n-hexano n-octano a 1,5 bar')
xlabel('x,y');ylabel('T(K)')
legend('Líquido saturad0','Vapor saturad0o')