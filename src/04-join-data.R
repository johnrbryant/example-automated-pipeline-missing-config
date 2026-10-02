library(dplyr)

people <- readRDS("out/people.rds")
measurements <- readRDS("out/measurements-modified.rds")

combined <- people |>
  left_join(measurements, by = "id")

write.csv(combined, file = "out/combined.csv", row.names = FALSE)
