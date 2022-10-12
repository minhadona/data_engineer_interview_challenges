FROM rocker/tidyverse:4.1

WORKDIR /app

RUN R -e "install.packages('RMySQL', dependencies=TRUE, repos='http://cran.rstudio.com/')" 

COPY example.R ./
