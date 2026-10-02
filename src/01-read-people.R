library(readxl)

people <- read_excel("data/people.xlsx")
saveRDS(people, file = "out/people.rds")
