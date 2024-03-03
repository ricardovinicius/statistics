## Comb. Linear de Dist. Normal 

# Teorema:
# Uma variável obtida por combinação linear de variáveis aleatórias normais 
# independentes é uma variável aleatória com distribuição normal

# Cálculo:
# X ~ N(mean-x, var-x)
# Y ~ N(mean-y, var-y)

# W = aX + bY + c
# E(W) = a(mean-x) + b(mean-y) + c = mean-w
# Var(W) = (a^2)*var-x + (b^2)*var-y = sd-w^2

# W ~ N(mean-w, Var(W))


# Exemplo 1: Em uma empresa, a montagem de certa peça é feita em duas
# etapas. Os tempos para essas etapas são independentes e tem as
# seguintes distribuições:

# X_1 ~ N(75s, 16.81^2)
# X_1 ~ N(129s, 106.09^2)

# Qual a probabilidade de se montar a peça em menos de 200 segundos?

# E(X) = 75 + 129 = 204
# Var(X) = 16.81 + 106.09 = 112.9

# T ~ N(204, 112.90) -> mean_t = 204 e sd = sqrt(112.9)

pnorm(200, 204, 10.63)

# Exemplo 2: Uma máquina automática enche latas baseada em pesos brutos. O
# peso bruto tem distribuição normal com = 1.000 g e = 20 g. As latas tem
# peso bruto distribuídos normalmente , com = 90 g e = 10 g.

# Qual a probabilidade de que uma lata tenha de peso liquido:

# a) < 850g

mean_l = 1000 - 90
sd_l = sqrt(20^2 + 10^2)

pnorm(850, mean_l, sd_l)

# Exemplo 3: Um elevador foi projetado com resistência ao peso dado por uma V.A. de
# média 300 kg e desvio padrão 10 kg. Se a carga do elevador superar a
# resistência um freio é acionado e o elevador para. Numa viagem 4 pessoas
# com média 70 Kg e desvio 13 Kg.

# Qual a probabilidade de ser acionado o freio de emergência?

# T = W - X 
# T: Total Ultrapassado da Resistência
# W: Peso total
# X: Resistência

pnorm(0, -20, 27.86, lower.tail = FALSE)


# Exemplo 4: Um criador possui 5.000 cabeças de vaca leiteira. Sabendo-se que cada vaca produz
# em média 3 litros de leite por dia, obedecendo a uma distribuição normal, com
# variância de 0,25 litros, calcular a probabilidade de produzir, diariamente:

# Mais de 15.110L 

# X = 5000(E(3L), Var(0.25L))
# X = (E(15000L), Var(1250L))

# mean_x = 15000L
# sd_x = sqrt(1250L)

pnorm(15110, 15000, sqrt(1250), FALSE)
