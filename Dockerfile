FROM brianyee/r-jupyter
LABEL author="artur.manukyan@umassmed.edu" description="Docker image containing all requirements for the dolphinnext/Seurat pipeline"

COPY scrnahbc.R /
RUN Rscript scrnahbc.R
