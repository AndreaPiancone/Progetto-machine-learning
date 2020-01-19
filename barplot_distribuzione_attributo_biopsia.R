library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/AndreaPiancone/Progetto_machine_learning/master/kag_risk_factors_cervical_cancer.csv")

df <- df <- data %>%
  group_by(Biopsy) %>%
  summarise(counts = n())

ggplot(df, aes(x = Biopsy, y = counts)) +
  geom_bar(fill = "#0073C2FF", stat = "identity") +
  geom_text(aes(label = counts), vjust = -0.3) + 
  theme_bw()
