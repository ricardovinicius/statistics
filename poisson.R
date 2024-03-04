## Distribuição Poisson
# Busca encontrar a probabilidade de um número designado de sucessos por unidade
# de intervalo
# Média = lambda
# Valor esperado (esperança) = lambda
# Var = lambda
# DP = sqrt(lambda)

# Consiste em calcular o número de vezes que um evento ocorre em um dado intervalo 
# -- taxa média (lambda)

# P(X = x) = (e^-lambda * lambda^x) / x!

# lambda - taxa média de ocorrência por unidade considerada
# x - num de ocorrências sucessos procurado
# X ~~ Poisson (lambda)

# Exemplo 1: O número médio de colisões ocorrendo em uma semana durante os meses
# de verão em um cruzamento é de 2.

# a) Qual a prob de que não ocorra nenhuma colisão em uma semana em particular? 

euler <- 2.7182

lambda_1 <- 2
x_1 = 0

prob_1 = (euler^(-lambda_1) * lambda_1^x_1) / factorial(x_1)

# Em R temos:
dpois(0, lambda = lambda_1)

# b) Prob de duas colisões
dpois(2, lambda = lambda_1)

# c) Prob de duas colisões em duas semanas
dpois(2, lambda = lambda_1 * 2)

# d) Prob de encontrar não mais que duas colisões em uma semana
sum(dpois(0:2, lambda = lambda_1))
ppois(2, lambda = lambda_1)

# Exemplo 2: Numa central telefônica chegam 300 telefonemas por hora e pode
# processar no máximo 10 ligações por minuto. Qual a probabilidade de que:

# a) Num minuto não haja nenhum chamado? 
# lambda = 300/60 -- total em hr / minutos em uma hora 

lambda_2 = 300/60

dpois(0, lambda = lambda_2)

# b) Em dois minutos haja duas chamadas?
dpois(2, lambda = lambda_2 * 2)

# c) Qual a prob da capacidade da mesa ser ultrapassada?
1 - ppois(10, lambda = lambda_2)

# Chegam caminhões a um depósito à razão de 2,8
# caminhões/hora, segundo uma distribuição de Poisson. Determine
# a probabilidade de chegarem dois ou mais caminhões.

# Em um período de 1 hora
1 - ppois(1, lambda = 2.8)
ppois(1, lambda = 2.8, lower.tail = FALSE)

# Exemplo 3: 
# O Corpo de Bombeiros de uma determinada cidade recebe, em média, 3 chamadas por dia.
 
# Qual a probabilidade de receber:
# 20 chamadas em uma semana.

lambda_3 = 3*7
dpois(20, lambda_3)

