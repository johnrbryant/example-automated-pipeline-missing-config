library(readxl)

measurements <- read_excel("data/measurements.xlsx")
saveRDS(measurements, file = "out/measurements.rds")
