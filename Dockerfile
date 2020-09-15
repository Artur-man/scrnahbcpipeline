FROM continuumio/miniconda:latest
LABEL author="artur.manukyan@umassmed.edu" description="Docker image containing all requirements for the dolphinnext/Seurat pipeline"

RUN apt-get update
RUN apt-get install -y apt-utils  build-essential gcc-multilib gfortran fort77
RUN conda install -c conda-forge r-base
ENV PATH /opt/conda/bin:$PATH

COPY scrnahbc.R /
RUN Rscript scrnahbc.R
