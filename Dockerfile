FROM cttc101/lite-base:latest

MAINTAINER "Science IS Team" ws@sit.auckland.ac.nz

ENV BUILD_DATE "2019-10-25"

# Install (via R) all of the necessary packages (R will automatially install dependencies):

RUN R -e "install.packages('rJava', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \ 
    && rm -rf /tmp/* /var/tmp/*
