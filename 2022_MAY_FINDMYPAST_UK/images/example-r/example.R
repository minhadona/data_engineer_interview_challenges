#!/usr/bin/env Rscript

library(tidyverse)
library(jsonlite)
library(DBI)

# connect to the database
database <- dbConnect(RMySQL::MySQL(), user = 'codetest', password = 'swordfish', dbname = 'codetest', host = 'database')

# read the CSV data file into the table
example_data <- read_csv('/data/example.csv')
apply(example_data, c(1, 2), function(x) dbSendQuery(database, paste0("insert into examples(name) values('", x, "')")))

# output the table to a JSON file
res <- dbSendQuery(database, "select * from examples")
output = dbFetch(res)
dbClearResult(res)

write_json(output, '/data/example_r.json', pretty = FALSE)
