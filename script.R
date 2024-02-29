## Distribuição Binomial

## Ex 1. Considere uma questão objetiva com 5 alternativas, qual a probabilidade, no chute,
## de acertar 3 das 4 questões dadas?

# usaremos dbinom({qtd. de acertos}, size={qtd. total de tentativas}, prob={prob. de sucesso})

prob_1 = dbinom(3, size=4, prob=1/5)
print(prob_1)

# Para gerar função distribuição de probabilidade:

dist_prob_1 = dbinom(0:4, size=4, prob=1/5)
print(dist_prob_1)

# Calcular valor esperado de acertos:
# E(X) = Sum(probabilidade * qtd de acertos)

qtd_de_acertos_possiveis_1 = 0:4
valor_esperado_1 = sum(qtd_de_acertos_possiveis * dist_prob_1)
print(valor_esperado_1)

# Calcular desvio padrão:
# Var(X) = E(X^2) - E(X)^2
# DP(X) = sqrt(Var(X))

var_1 = sum(qtd_de_acertos_possiveis^2 * dist_prob_1) - valor_esperado_1^2
dp_1 = sqrt(var_1)

# Var(X) = n * p * q
4 * 1/5 * 4/5

# DP(X) = sqrt(Var(X))
sqrt(4 * 1/5 * 4/5)

## Ex.2 A probabilidade de ocorrência de turbulência em um voo é de 0.4 por dia. 
## Seja X o número de voos com turbulência em um total de 7 voos. Qual a prob. que:

# Não haja turb. em nenhum dos voos?
dbinom(0, size = 7, prob = 0.4)

# Haja turb. em pelo menos 3 deles?
sum(dbinom(3:7, size = 7, prob = 0.4))
pbinom(2, size = 7, prob = 0.4, lower.tail = FALSE)

# Diferença entre o sum e o pbinom
## "Pelo menos 3 sucessos" inclui 3, 4, 5, 6 e 7 sucessos.
## "Mais de 3 sucessos" inclui 4, 5, 6 e 7 sucessos, excluindo o caso de 3 sucessos.

## Um gerente de uma loja estima que de dez vendas
## realizadas, três são microcomputadores e sete equipamentos
## eletrônicos. Qual a probabilidade de que uma das próximas
## quatro vendas seja um microcomputador? 

dbinom(1, size = 4, prob = 3/10)

## Exemplo 4 – Vasco e Botafogo jogam entre si 6 vezes.

# Encontre a probabilidade do Vasco ganhar 4 jogos

dbinom(4, size = 6, 1/3) # prob de vencer 1/3, de empatar 1/3, de perder 1/3
                        # logo o sucesso é 1/3

# Probabilidade do Vasco ganhar no máximo duas partidas

pbinom(2, size = 6, prob = 1/3)

# Probabilidade do Vasco ganhar pelo menos três partidas

pbinom(2, size = 6, prob = 1/3, lower.tail = FALSE)
