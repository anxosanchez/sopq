# Columna de destilación simplificada
## Obxectivos
1. Especificar en forma simplificada unha columna de destilación.
2. Estimar un tamaño e desempeño simplificado dunha columna de destilación mediante o procedemento de Fenske-Underwood-Gililand.

## Introdución

Un dos procedementos máis usualmente utilizados para obter estimativos simplificados de número de etapas teóricas requiridas nunha separación por destilación es o proposto por **Fenske**, **Underwood** e **Gililand**.

### Correlación de Gililand

**Gililand** desenvolve unha correlación empírica para estimar o número de etapas teóricas requiridas nunha destilación, en función do número mínimo de etapas a refluxo total, $N_m$, a relación de refluxo mínimo, $R_m$, e a relación de refluxo de operación, $R$.

Posteriormente, **H. E. Eduljee**, enunciou unha ecuación axustada á correlación gráfica de
**Gililand** que foi publicada na revista [Hydrocarbon Processing](https://www.hydrocarbonprocessing.com/) de setembro de 1975 e que ten a seguinte forma:

$$
\frac { N - N_m } { N + 1 } = 0.75 \left[ 1 - \left ( \frac { R - R_m } { R + 1 } \right )^{0.5688} \right]
$$

### Ecuación de Fenske para calcular o número mínimo de pratos

Para sistemas de volatilidade relativa constante, $\alpha$, **Fenske** demostrou unha ecuación para o número mínimo de etapas, a refluxo total, nunha columna de destilación. Para unha mestura multicomponente, a ecuación de **Fenske** exprésase en termos das concentracións no destilado, $D$, e nos fondos, $W$, dos compoñentes escollidos como chave lixeiro, **LK** e chave pesado, **HK**, e, ademais, da volatilidad relativa do compoñente chave lixeiro con respecto ó chave pesado. A ecuación de **Fenske** é:

$$
N_m = \frac { ln \left[ \left ( \frac { x_{D,LK} } { x_{D,HK} } \right ) \left ( \frac { x_{W,HK} } { x_{W,LK} } \right ) \right ] } { ln \alpha_{LK/HK} }
$$

Escollendo os compoñentes chave, especificando as súas concentracións ou fraccións de recuperación no destilado e elixindo unha presión no tope da columna para o cálculo da volatilidade relativa do compoñente chave lixeiro con respecto ó chave pesado se pode calcular o número mínimo de etapas coa ecuación (2). Coñecido este, pódense calcular as  concentracións ou recuperacións para os outros compoñentes cas súas respectivas volatilidades con respecto ao chave pesado, coa mesma ecuación.

### Ecuacións de Underwood para calcular a relación de refluxo mínima

Para mesturas multicomponentes con volatilidade relativa constante, a relación de refluxo mínima nunha columna de destilación pódese calcular mediante dúas ecuacións demostradas por **Underwood**. 

Para o caso de separacións puntuais, a primeira ecuación (3) se utiliza para calcular a variable $\theta$, e tómase como solución o valor que se atopa entre as volatilidades relativas do compoñente chave lixeiro e o compoñente chave pesado.

$$
\sum_{i=1}^n \frac { \alpha _i x_{i,F} } { \alpha _i - \theta } - q
$$

Sendo $n$, o número de compoñentes na mestura e $q$, é a condición ou calidade do alimento.

A segunda ecuación de **Underwood** (4) utiliza o valor de $\theta$, calculado coa ecuación (3) para estimar a relación de refluxo mínimo.

$$
\sum_{i=1}^n \frac { \alpha _i x_{i,D} } { \alpha _i - \theta } = 1 + R_m
$$

Unha solución exacta deste par de ecuacións require un procedemento de ensaio e erro.

### Relación de refluxo de operación

Hai unha relación de refluxo óptimo para unha separación desexada, porque cando é maior que a mínima diminúe o número de etapas requiridas e, polo tanto, o costo da columna pero se aumenta o caudal da fase vapor a través da columna, o que aumenta os custos do condensador, fervedor, auga de refrixeración e vapor de aquecido. A experiencia ten  demostrado que o valor óptimo da relación de refluxo se atopa nun intervalo dado por:

$$
1.03 < \frac { R } { R_m } < 1.3
$$

Unha regla de deseño suxire que se asigna, para unha separación desexada, unha relación de
refluxo de 1.2 a 1.3 veces a mínima.

## Desempeño simplificado dunha columna de destilación

Os simuladores de procesos soen dispor dunha columna de destilación sinxela con refluxo denominada "Short Cut", "Simple" ou asi, que se calcula co procedemento corto de **Fenske-Underwood-Gililand**. Coa ecuación de **Fenske** se calcula o número mínimo de pratos para unha separación desexada, expresada en termos das fraccións de recuperación dos compoñentes chave e das presións no tope e no fondo da columna e coa ecuación de **Underwood** se calcula o refluxo mínimo coñecendo a especificación completa do alimento.

Especificando unha razón de refluxo para a operación da columna, se calculan os caudais de vapor e líquido nas seccións de rectificación e esgotamento, as cargas calóricas no condensador e fervedor, o número de pratos ideais e a localización óptima do prato de alimentación.

As columnas atallo ou simplificadas son unha aproximación do comportamento da columna e o seu uso está restrinxido a columnas simples con refluxo. Para resultados máis reais debes usar a operación **Columna de Destilación rigorosa**. Esta operación pode suministrar estimativos iniciais para a maioría das columnas simples.

## Simulación dunha columna depropanizadora dunha mestura de hidrocarburos

1. Abre un novo caso e define o seguinte:

* Ecuación: Peng Robinson
* Compoñentes: C2 , C3 , i-C4 , n-C4 , i-C5 , n-C5 y n-C6
* Unidades: Field

2. Instala unha corrente co nome **Alimentación** coas seguintes especificacións:

* Temperatura: 200 °F
* Presión: 100 psia
* Caudal molar: 1300 lbmol/h
* Composición (Fracción Molar)
  * Etano: 0.0148
  * Propano: 0.7315
  * i-Butano: 0.0681 
  * n-Butano: 0.1462
  * i-Pentano; 0.0173
  * n-Pentano: 0.0150
  * n-hexano: 0.0071
* * Compoñente chave lixeiro: Propano
  * Compoñente chave pesado: i-butano
  * Compoñente chave lixeiro en colas: 0.025 (fracción molar)
  * Compoñente chave pesado en cabezas: 0.020 (fracción molar)

1. Resolve as ecuacións (2), (4) e (5).