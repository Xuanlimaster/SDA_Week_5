library(ggplot2)
library(tidyverse)
library(readxl)

data <- read_excel("datasheetsch01.xls") 
data$Level <- as.factor(data$FERTIL)

lmdata <- lm(data$YIELD~data$Level)

summary(lmdata)
anova(lmdata)

fitted.values(lmdata)
residuals(lmdata)
contrasts(data$Level)
