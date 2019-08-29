library(tidyverse)
library(modelr)

sim1

model_lm <- lm(y ~ x, data = sim1)
coef <- coef(model_lm)
coef

ggplot(sim1, aes(x, y)) +
  geom_point() +
  geom_abline(intercept = coef[1],
              slope = coef[2])
