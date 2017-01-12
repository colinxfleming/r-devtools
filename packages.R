r <- getOption("repos")
r["CRAN"] <- "http://cran.us.r-project.org"
options(repos = r)
rm(r)
source("./config.R")

install.packages('devtools')
install.packages("reshape2")
install.packages("data.table")
install.packages("jsonlite")
install.packages('testthat')
