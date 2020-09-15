FROM continuumio/miniconda:latest
LABEL author="artur.manukyan@umassmed.edu" description="Docker image containing all requirements for the dolphinnext/Seurat pipeline"

RUN apt-get update
RUN apt-get install -y apt-utils  build-essential gcc-multilib gfortran fort77
RUN apt-get install -y liblzma-dev libblas-dev libreadline-dev libbz2-dev libpcre3 libpcre3-dev libcurl4-openssl-dev libopenblas-base libssl-dev
RUN apt-get install -y default-jdk texlive-fonts-extra xorg-dev
RUN apt-get install -y libssh2-1-dev
RUN conda install -c conda-forge r-base
ENV PATH /opt/conda/bin:$PATH

COPY scrnahbc.R /
RUN Rscript scrnahbc.R
