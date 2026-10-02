library(ggplot2)

combined <- read.csv("out/combined.csv")

plot <- ggplot(combined, aes(x = name, y = value_modified)) +
  geom_col(fill = "#2C7FB8", width = 0.7) +
  labs(
    title = "Modified value by person",
    x = NULL,
    y = "Modified value"
  ) +
  theme_minimal(base_size = 12)

ggsave(
  "out/values.png",
  plot = plot,
  width = 6,
  height = 4,
  dpi = 150
)
