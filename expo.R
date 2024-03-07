## Distribuição Exponencial

# Utilizada para descrever as probabilidades envolvidas no tempo que decorre para
# que um determinado evento aconteça

# Função Densidade de Probabilidade:
# f(x) = lambda * e^(-lambda * x)

# Função de Distribuição Cumulativa:
# F(x) = P(X <= x) = 1 - e^(-lambda * x)

# Valor esperado
# E(X) = 1 / lambda
# Valor esperado é a média, então se uma variável tem como média digamos
# 3 dias para o evento ocorrer, então o valor esperado é 3
# por outro lado, a variável lambda é 1/3, pois é o inverso 
# compreender lambda como algo: "1 evento a cada 3 dias"

# Variância
# V(X) = 1 / lambda^2

# Exemplo 1 - Suponha que a duração de um telefonema, em minutos, em uma
# cabine telefônica, seja uma variável aleatória exponencial com parâmetro =
#  1/5. Se alguém chega logo na sua frente em uma cabine telefônica, determine a
# probabilidade de que você tenha que esperar mais de 10 minutos.

pexp(10, rate = 1/5, lower.tail = FALSE)

# Exemplo 2 – Suponha que o tempo de espera para realizar um exame qualquer em
# uma determinada clinica tenha distribuição exponencial, com média de três dias.

lambda_2 = 1/3

# b) Qual a probabilidade de alguém esperar entre 2 e 4 dias?

pexp(4, rate = lambda_2) - pexp(2, rate = lambda_2)

# Exemplo 3 - Suponha que X tenha uma distribuição exponencial, com λ=2. Determine:

# e) Encontre o valor de x tal que a P(X < x) = 0.05

qexp(0.05, rate = 2)

# Exemplo 4 - Os defeitos de um tecido seguem a distribuição de Poisson com
# média de um defeito a cada 400 m. Qual a probabilidade de que o intervalo
# entre os dois defeitos consecutivos seja:

# a) No mínimo de 1.000 m?

lambda_4 = 1/400

pexp(1000, rate = lambda_4, lower.tail = FALSE)

# Exemplo 5 - Uma companhia fabrica lâmpadas especiais com uma duração
# média de 100 horas e com distribuição exponencial.

lambda_5 = 1/100

# a) Qual deve ser a garantia do fabricante para repor apenas 5% da
# produção?

qexp(p = 0.05, rate = lambda_5)
