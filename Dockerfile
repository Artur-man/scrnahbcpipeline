FROM ubuntu:16.04
LABEL author="artur.manukyan@umassmed.edu" 

# configure image and install R
RUN apt-get -y update 
RUN apt-get -y install software-properties-common
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran40/'
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN apt-get -y install apt-transport-https
RUN apt-get -y update
RUN apt-get -y install r-base r-base-dev
RUN apt-get -y install libcurl4-openssl-dev libssl-dev libxml2-dev
RUN apt-get -y install pandoc
RUN apt-get -y install texlive-base texlive-latex-base texlive-fonts-recommended

# install R packages
COPY scrnahbc.R / 
RUN Rscript scrnahbc.R 
