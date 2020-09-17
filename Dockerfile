FROM ubuntu:18.04
LABEL author="artur.manukyan@umassmed.edu" 

# set up repositories for R 4.0.0 installation
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
RUN apt-get update

# set source and time zone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

# Install R 
RUN apt-get -y install r-base

# Install scRNA R package dependencies
RUN apt-get install libcurl4-openssl-dev libssl-dev libxml2-dev

# Install R packages
COPY scrnahbc.R / 
RUN Rscript scrnahbc.R 
