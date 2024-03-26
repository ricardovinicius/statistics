## Intervalo de Confiança - Variância Desconhecida

# Quando a variância é desconhecida, estimar desvio padrão com base na
# amostra

# Usar Distribuição t de student
# Para n > 30 pode usar a distribuição normal

# Graus de Liberdade: dimensão da amostra - nº de param. avaliados 

# Exemplo 05: Em um processo para obtenção de compostos químicos de tintas, obteve-se os
# seguintes tempos: 90, 92, 92, 95, 98, 99, 100, 100, 100 e 117 segundos.

# a) Construir um intervalo com nível de confiança de 95%

amostra_5 = c(90, 92, 92, 95, 98, 99, 100, 100, 100, 117)
media_amostral_5 = mean(amostra_5)
var_amostral_5 = var(amostra_5)
dp_amostral_5 = sd(amostra_5)
gl_5 = 10 - 1
alpha = 0.05

tc_5 = qt(p = 1- alpha/2, df = gl_5)
tc_5 = round(tc, 3)
tc_5

erro_5 = tc * dp_amostral_5 / sqrt(10)
erro_5 = round(erro_5, 3)

cat("[", media_amostral_5 - erro_5, ",", media_amostral_5 + erro_5, "]")

t.test(amostra_5, conf=0.95)

# b) Calcular o número de elementos para estimar a média com 95% de confiança e erro
# amostral de 0,4 seg.

amostra_5 = c(90, 92, 92, 95, 98, 99, 100, 100, 100, 117)
media_amostral_5 = mean(amostra_5)
var_amostral_5 = var(amostra_5)
dp_amostral_5 = sd(amostra_5)
gl_5 = 10 - 1
alpha = 0.05

tc_5 = qt(p = 1- alpha/2, df = gl_5)
tc_5 = round(tc, 3)
tc_5

n = (tc * dp_amostral_5 / 0.4)^2
n

## Intervalo de Confiança para Proporção Amostral

# Exemplo 09 – Considere testes de vazamentos identificados em dois municípios A e B. 
# No município A foram examinados 500 edifícios e em 100 apresentaram falhas. No B foram 
# examinados 1000 edifícios e em 300 apresentaram falhas. Construir um intervalo com 
# nível confiança de 95% para o município A.

# Mun. A

alfa_9 = 0.05
n_9 = 500
p_9 = 100/500

zc_9 = qnorm(1 - alfa_9/2)
zc_9 = round(zc_9, 2)
zc_9

erro_9 = zc_9 * sqrt(p_9 * (1 - p_9) / n_9)

erro_9 = round(erro_9, 5)
erro_9

cat("[", p_9 - erro_9, ",", p_9 + erro_9, "]")

prop.test(x = 100, n = 500, conf.level = 0.95)

## Intervalo de Confiança para Variância

# Exemplo 13 – Foi observado pacientes de uma determinada clínica para tratamento de
# sobrepeso. A variável aleatória peso do paciente, supõe ter distribuição Normal. Pretende-
# se estudar a variabilidade do peso dos referidos pacientes. Para isso, uma amostra, cujos
# valores em Kg são: 98, 97, 102, 100, 98, 101, 102, 105, 95, 102, 100. Gerar o IC para a
# Variância com nível de confiança de 95%.

amostra_13 = c(98,97,102,100,98,101,102,105,95,102,100)
alpha_13 = 0.05
var_13 = var(amostra_13)
n_13 = length(amostra_13)

q1 = qchisq(1 - alpha_13/2, n_13 - 1)
q2 = qchisq(alpha_13/2, n_13 - 1)

cat("[", (n_13 - 1) * var_13 / q1, ",", (n_13 - 1) * var_13 / q2, "]")
