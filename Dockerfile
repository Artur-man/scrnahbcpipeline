FROM ubuntu:16.04
LABEL author="artur.manukyan@umassmed.edu" 

RUN apt-get update 
RUN apt-get -y install software-properties-common
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran40/'
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN apt-get -y install apt-transport-https
RUN apt-get update
RUN apt-get install r-base r-base-dev
RUN apt-get install libcurl4-openssl-dev libssl-dev libxml2-dev

COPY scrnahbc.R / 
RUN Rscript scrnahbc.R 
