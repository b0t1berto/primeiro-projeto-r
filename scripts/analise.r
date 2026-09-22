library(ggplot2)
library(dplyr)

dados <- mtcars

resumo <- dados |>
  group_by(cyl) |>
  summarise(
    consumo_medio <- mean(mpg),
    potencia_media <- mean(hp)
  )

print(resumo)

grafico <- ggplot(
  dados,
  aes(
    x = factor(cyl),
    y = mpg,
    fill = factor(cyl)
  )
  ) +
    geom_boxplot() +
    labs(
      title = "Consumo de combustível por cilindrada",
      x = "Número de cilindros",
      y = "Consumo por galão(milhas)"
    ) +
    theme_minimal()

ggsave("graficos/consumo_por_cilindro.png", plot = grafico)

grafico





