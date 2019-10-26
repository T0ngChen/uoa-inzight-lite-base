FROM cttc101/lite-base:latest

MAINTAINER "Science IS Team" ws@sit.auckland.ac.nz

ENV BUILD_DATE "2019-10-25"

# Install (via R) all of the necessary packages (R will automatially install dependencies):

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 381BA480 \
    && echo "deb http://deb.debian.org/debian stretch main" | sudo tee -a /etc/apt/sources.list \
    && apt-get update -y -q \
    && apt-get install -y -q \
                       default-jdk \
                       autoconf\
                       automake\
                       autotools-dev \
                       libsigsegv2 \
                       m4 \
                       r-cran-rjava \
                       libcurl4-openssl-dev \
                       libv8-3.14-dev \
                       libgdal-dev \
                       libproj-dev \
                       libprotobuf-dev \
                       protobuf-compiler \
                       libudunits2-dev \
                       libgeos-dev \
                       libpq-dev \
                       libjq-dev \
                       mesa-common-dev \
                       libglu1-mesa-dev \
                       libcgal-dev \
                       libglu1-mesa-dev \
                       libx11-dev \
                       libfreetype6-dev \
                       libgit2-dev \
                       libssh2-1-dev \
                       gfortran \
                       
    && R -e "install.packages('RJSONIO', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages(c('gridExtra', 'tidyr', 'dplyr', 'forcats'), repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('car', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('hextri', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('colorspace', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('RColorBrewer', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('viridis', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('XML', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
 #   && R -e "install.packages('gridSVG', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('RgoogleMaps', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('countrycode', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('foreign', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('sas7bdat', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('shinyjs', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('readxl', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('GGally', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('gpairs', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('xlsx', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('shinyWidgets', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('s20x', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('sf', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('devtools', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('markdown', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "install.packages('plotly', repos = 'https://cran.r-project.org', type = 'source', dependencies = TRUE)" \
    && R -e "devtools::install_github('tidyverse/ggplot2')" \
    && R -e "devtools::install_github('cran/gridSVG')" \
    && R -e "devtools::install_github('iNZightVIT/iNZightPlots')" \
    && R -e "devtools::install_github('iNZightVIT/iNZightTS')"\
    && R -e "devtools::install_github('iNZightVIT/iNZightTools')" \
    && R -e "devtools::install_github('iNZightVIT/iNZightMaps')" \
    && R -e "devtools::install_github('iNZightVIT/iNZightRegression')" \
    && R -e "devtools::install_github('iNZightVIT/iNZightMR')" \
    && rm -rf /tmp/* /var/tmp/*
