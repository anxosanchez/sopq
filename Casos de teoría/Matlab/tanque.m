function dT_dt = tanque(t,T)

global W UA M Cp T_vapor T_cero

calculo = (W*Cp*(T_cero-T) + UA*(T_vapor-T))/(M*Cp);

dT_dt = calculo;
