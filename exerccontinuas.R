# 1
# a)
(pnorm(4250, 4000, 200) - pnorm(3600, 4000, 200)) * 100

# 2
# a)
pnorm(990, 1000, 10) * 100

# b)
pnorm(1000 + (2 * 10), 1000, 10) * 100

# c)
prob_ser_maior_que_1002 = pnorm(1002, 1000, 10, lower.tail = FALSE)
pbinom(4, size = 10, prob = prob_ser_maior_que_1002) * 100


# 3

prob_maior_50 = pnorm(50, 45, 20, lower.tail = FALSE)
prob_menor_30 = pnorm(30, 45, 20)

prob_maior_50 + prob_menor_30

50 * (prob_maior_50 + prob_menor_30)

# 4 
pnorm(2.03, mean = 2, sd = 0.01, lower.tail = FALSE) + pnorm(1.97, 2, 0.01)


# 5 
qnorm(0.05, mean = 8, sd = 1.8)

# 7 
qnorm(0.95, mean = 129, sd = 14)

# 8
pnorm(312, 600, 100) * 10000

# 9 
pnorm(105, 100, 10) - pnorm(95, 100, 10)

# 13 
qnorm(0.002, 150000, 5000)

# 14
pnorm(850, 855, 22.86, lower.tail = FALSE)

# 15

# a)
pnorm(500, 490, 26.45, lower.tail = FALSE)

# b)
pnorm(500, 420, 24.5, lower.tail = FALSE)

# 16

# b)
pnorm(50, 48, 19.62, lower.tail = FALSE)

