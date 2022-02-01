library(readODS)
library(tidyverse)

data <- read_ods('Zoose_Osint_v2.ods')

#Fixing missing column names with placeholders
colnames(data)[(which((colnames(data) == '')))] <- paste('Column_',(which((colnames(data) == ''))))

