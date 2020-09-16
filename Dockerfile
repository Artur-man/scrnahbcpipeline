FROM nfcore/base:1.7
LABEL author="artur.manukyan@umassmed.edu" 

RUN conda env create -f /environment.yml && conda clean -a

RUN conda install -c conda-forge r-base
ENV PATH /opt/conda/envs/dolphinnext-kb-1.0/bin:/usr/local/bin/dolphin-tools/:$PATH

COPY scrnahbc.R /
RUN Rscript scrnahbc.R
