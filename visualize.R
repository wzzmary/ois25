# 🌟 On charge les packages nécessaires
library(ggplot2)
library(dplyr)

# 🎲 Génération de données simulées avec des groupes
set.seed(123)
data <- data.frame(
  x = rnorm(300),
  y = rnorm(300),
  group = sample(c("Groupe A", "Groupe B", "Groupe C"), 300, replace = TRUE)
)

# 🌈 Visualisation améliorée avec dégradé, transparence, formes et titre stylé
ggplot(data, aes(x = x, y = y, color = group, shape = group)) +
  geom_point(size = 4, alpha = 0.8) +
  labs(
    title = "✨ Nuage de points stylé selon les groupes",
    subtitle = "Chaque groupe a sa couleur et sa forme",
    x = "Valeur X",
    y = "Valeur Y",
    color = "Groupe",
    shape = "Groupe"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(color = "#2E86C1", face = "bold", size = 16),
    plot.subtitle = element_text(face = "italic", size = 12),
    legend.position = "top"
  )
