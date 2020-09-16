FROM nfcore/base:1.7
LABEL author="artur.manukyan@umassmed.edu" 

RUN conda env create -f /environment.yml && conda clean -a

RUN conda install -c conda-forge r-base
ENV PATH /opt/conda/envs/scrnahbc-1.0/bin:$PATH

COPY scrnahbc.R /
RUN Rscript scrnahbc.R
