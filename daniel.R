library(readODS)
library(tidyverse)
library(httr)
data <- read_ods('Zoose_Osint_v2.ods')

#Fixing missing column names with placeholders
colnames(data)[(which((colnames(data) == '')))] <- paste('Column_',(which((colnames(data) == ''))))

#Parse list of all URLS
sort(unique(data$URL))[1]

#Making get request to first url in list
request <- GET(url=sort(unique(data$URL))[1])

#List status code
request$status_code



