library(ggplot2)
library(tidyverse)
library(readxl)

data <- read_excel("datasheetsch02.xls")
Trees <- data |> select(HEIGHT, VOLUME) 

Trees |> ggplot(aes(x = HEIGHT, y = VOLUME))+
  geom_point(shape = 1, size = 2, stroke = 1)+
  xlim(c(60,90))+
  ylim(c(10,80))+
  theme_classic()+
  labs(title = "Observed relationship between timber volume and height",
       x = "Height", y = "Volume")+
  theme(plot.title = element_text(hjust = 0.5))

reg <- lm(Trees$VOLUME~Trees$HEIGHT)

summary(reg)
anova(reg)

