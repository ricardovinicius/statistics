## Distribuição Normal

# Representada por uma curva em forma de sino, simétrico em torno da média,
# que recebe o nome de curva normal ou de Gauss

# A área total limitada pela curva e pelo eixo das abcissas é igual a 1,
# correspondendo a probabilidade da varável aleatória X

# Definida por apenas dois parâmetros (média e desvio padrão)

# A probabilidade P(a <= x <= b) é a área sob a curva no intervalo (a, b)

## Padronizada:

# Através do uso de uma nova variável definida por:
# z = (x - mean) / sd

# transformamos todas distribuições normais em uma dist. normal
# reduzida ou padronizada, de média zero e sd 1, com valores de z tabelados

# Exemplo 1: Os resultados do experimento formam uma VA com
# distribuição normal, com média 40 e desvio padrão 10, N (μ= 40,σ= 10). 

# a) Qual a probabilidade de um resultado ser menor ou igual a 50?

pnorm(50, mean = 40, sd = 10)

# Encontrando z para tabela padronizada: 
# z = (50 - 40) / 10 = 1

pnorm(1)

# b) Qual a probabilidade de um resultado do experimento ser maior ou igual a 35?

1 - pnorm(35, mean = 40, sd = 10)
pnorm(35, mean = 40, sd = 10, lower.tail = FALSE)

# z = (35 - 40) / 10 = -1/2

pnorm(-1/2, lower.tail = FALSE)

# Como é simétrico podemos:

pnorm(1/2) # Considere imaginar que a área pode ser espelhada na curva

# c) Qual a probabilidade de um resultado do experimento estar no intervalo
# (25,60)

pnorm(60, mean = 40, sd = 10) - pnorm(25, mean = 40, sd = 10)

# z1 = (60 - 40) / 10 = 2, z2 = (25 - 40) / 10 = -1.5

pnorm(2) - pnorm(-1.5)

# d) Qual a probabilidade de um resultado do experimento ser maior ou igual
# que 55 ou menor ou igual do que 30?

pnorm(30 , 40, 10) + pnorm(55, 40, 10, FALSE) 


# Exemplo 2.
# Considere uma situação em que se estudou a durabilidade de um certo tipo de
# pneu. Verificou-se que esta durabilidade seguia uma distribuição normal com
# duração média 60.000 km e desvio-padrão 10.000 km. Procurou-se, então,
# responder os seguintes questionamentos:

# e) O fabricante deseja fixar prazo de garantia, em quilômetros, de tal
# modo que, se a duração do pneu for inferior a garantia, o pneu seja
# trocado. De quantos quilômetros deve ser este prazo, para que
# somente 1% dos pneus sejam trocados?

# z = -2.3 para prob. 0.01
# -2.3 = (x - 60000) / 10000
# x ~= 37000

qnorm(0.01, mean = 60000, sd = 10000)


# Exemplo 4. O diâmetro do eixo principal de um disco rígido segue
# a distribuição Normal com média 25,08 cm e desvio padrão 0,05
# cm. Se as especificações para esse eixo são 25,00 ± 0,15 cm.
# Determine o percentual de unidades produzidas em
#conformidades com as especificações.

(pnorm(25.15, mean = 25.08, sd = 0.05) - pnorm(24.85, mean = 25.08, sd = 0.05)) * 100

# Exemplo 5. Em uma universidade as notas da disciplina de Estatística
# distribuem-se normalmente com média 6,4 e desvio padrão de 0,8. Em uma
# turma com 80 alunos, quantos terão ?

# Nota inferior a 5?

pnorm(5, mean = 6.4, sd = 0.8) * 80

# Exemplo 6. Suponha que a variável aleatória “retornos do contrato futuro de
# soja na bolsa de Chicago” (100 retornos) possui distribuição normal com média
# 0,18 % ao dia e desvio padrão igual a 1,17 % ao dia.

# Qual a probabilidade de se obter retorno entre 0,18% e 2% ao dia?
pnorm(2, mean = 0.18, sd = 1.17) - pnorm(0.18, mean = 0.18, sd = 1.17)
