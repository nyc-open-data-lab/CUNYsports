# data-raw/build_catalogs.R

library(readxl)

table_catalog <- read_xlsx("data-raw/cuny-sports-catalog.xlsx", sheet = 1)
column_catalog <- read_xlsx("data-raw/cuny-sports-catalog.xlsx", sheet = 2)

usethis::use_data(table_catalog, column_catalog, overwrite = TRUE)
