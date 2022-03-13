# Titorial 09. Intercambio de calor non estacionario entres tanqes en serie

MÉTODO NUMÉRICO

Solución dun sistema de ecuación diferenciais ordinarias simultáneas.

CONCEPTOS USADOS

Balances de enerxía en estado non estacionario, resposta dinámica de unha serie de
tanques axitados de mestura perfecta.

## Enunciado

Se usan tres tanques en serie para requentar unha mestura multicompoñente de disolventes antes de metela coma alimentación duna columna de destilación, tal como se amosa na figura 1. Cada tanque contén, inicialmente, 1000 kg da mestura a 20 °C. En cada serpentín de cada tanque condensa un vapor saturado á temperatura de 250 °C. A mestura entra no primeiro tanque a razón de 100 kg/min e desborda no segundo e no terceiro tanque co mesmo fluxo. A temperatura á que a mestura entra no primeiro tanque é de 20 °C. Os tanque son de mestura perfecta, polo que a temperatura dentro deles pódese considerar constante e á súa vez igual á temperatura de saída da mestura do tanque en cuestión.

![image-20200420121358190](image-20200420121358190.png)

<center>
	<small>
        Figura 1. Quentamento dunha mestura nunha serie de tres tanque.
	</small> 
</center>



A capacidade calorífica da mestura, $C_p$, é de 2.0 kJ<sup>.</sup>kg<sup>-1</sup>. Para cada tanque en particular, a velocidade á que o calor é transferido do vapor á mestura de disolventes ven dada pola expresión:
$$
Q = UA \left ( T_{vapor} -T \right )
$$

onde: 

$UA$ = 10 kJ<sup>.</sup>min<sup>-1</sup><sup>.</sup>°C<sup>-1</sup> é o produto do coeficiente de transmisión de calor e o área do serpentín de cada tanque,
$T$ = temperatura da mestura de disolventes no tanque, en °C e
$Q$ = velocidade de transmisión de calor en  kJ<sup>.</sup>kg<sup>-1</sup>.

Pódese realizar un balance individual de materia e enerxía para cada tanque. Nestes balances, o fluxo másico  permanece constante, polo que $F$ = $F_1$ = $F_2$ = $F_3$. A masa de cada tanque pódese supor constante así coma o volume do tanque e a densidade da mestura de disolventes. Deste xeito, $M$ = $M_1$ = $M_2$ = $M_3·. Para cada tanque, o balance de enerxía xenérico pódese representar por:

<center>
ACUMULACIÓN = ENTRADA - SAÍDA
</center>

polo que:
$$
M C_{p} \frac{d T_{1}}{d t}=W C_{p} T_{0}+U A\left(T_{\text {vapor}}-T_{1}\right)-W C_{p} T_{1}
$$
Obsérvese que o balance de materia en estado non estacionario non é necesario para ningún dos tanques xa que a masa neles non cambia co tempo. A ecuación anterior se pode arranxar e resolver explicitamente e expresala no xeito habitual das ecuacións diferenciais ordinarias:

Primeiro tanque:
$$
\frac{d T_{1}}{d t}=\frac{W C_{p}\left(T_{0}-T_{1}\right)+U A\left(T_{\text {rapor }}-T_{1}\right)}{M C_{p}}
$$
Segundo tanque:

$$
\frac{d T_{2}}{d t}=\frac{W C_{p}\left(T_{1}-T_{2}\right)+U A\left(T_{\text {vapor}}-T_{2}\right)}{M C_{p}}
$$
Terceiro tanque:
$$
\frac{d T_{2}}{d t}=\frac{W C_{p}\left(T_{2}-T_{2}\right)+U A\left(T_{\text {rapor }}-T_{3}\right)}{M C_{p}}
$$

1. Determinar a temperatura do primeiro tanque en réxime estacionario.
2. Determina as temperaturas de cada tanque en réxime estacionario.
3. Que tempo descorre para que a temperatura do tanque 3 acade un valor do 99% da estacionaria durante o quentamento?.