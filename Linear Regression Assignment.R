library(tidyverse)

honda_sales <- read_csv('train.csv')

# a

model_1 <- lm(data = honda_sales,
              Sales ~ Unemployment + CPI_All + CPI_Energy + Queries)

summary(model_1)

# b

model_2 <- lm(data = honda_sales,
              Sales ~ Unemployment + CPI_All +
                CPI_Energy + Queries + Year + Month)

summary(model_2)
