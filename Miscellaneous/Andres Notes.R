
Z <- rbinom(1e6, size = 20, prob = 1/3)

sum(Z == 2)
mean(Z == 2)

dbinom(x = 2, size = 20, prob = 1/3)

pbinom(2, size = 20, prob = 1/3)
mean(Z <= 2)
mean(Z %in% c(0, 1, 2))
mean(Z == 0 | Z == 1 | Z == 2)

dbinom(0, size = 20, prob = 1/3) +
  dbinom(1, size = 20, prob = 1/3) +
    dbinom(2, size = 20, prob = 1/3)

pbinom(5, size = 20, prob = 1/3)
sum(dbinom(0:2, size = 20, prob = 1/3))

## Pr(X <= 5 | size = 20, prob = 1/3)
pbinom(50, size = 200, prob = 1/3)
qbinom(0.006682621, size = 200, prob = 1/3)

x <- rbinom(10e3, size = 200, prob = 1/3)
quantile(x, prob = 0.006682621)


library(tidyverse)

p <- pbinom(0:20, size = 20, prob = 1/3)
tibble(x = 0:20, p) |> 
  ggplot(aes(x, p)) + geom_col()
