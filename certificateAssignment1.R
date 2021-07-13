#help(rnorm)

#Question1
x1 <- rnorm(10, mean = 0, sd = 1)
x2 <- rnorm(100, mean = 0, sd = 1)
x3 <- rnorm(1000, mean = 0, sd = 1)

mean1 = mean(x1)
mean2 = mean(x2)
mean3 = mean(x3)

var1 = var(x1)
var2 = var(x2)
var3 = var(x3)

meanVec = c(mean1, mean2, mean3)
varVec = c(var1, var2, var3)

meanVec
varVec

#Question2
plot(density(x1), main="Densities")
lines(density(x2), col=2)
lines(density(x3), col=3)

abline(v = 0)
abline(v = .5, col=2)
abline(v = 1, col=3)

help(abline)