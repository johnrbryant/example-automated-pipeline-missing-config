library(dplyr)
library(yaml)

measurements <- readRDS("out/measurements.rds")
config <- read_yaml("config.yaml")

multiplier <- config$multiplier

measurements_modified <- measurements |>
  mutate(value_modified = multiplier * value)

saveRDS(measurements_modified, file = "out/measurements-modified.rds")
