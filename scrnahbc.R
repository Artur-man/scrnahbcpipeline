install.packages("BiocManager", repos='http://cran.us.r-project.org')
library(BiocManager)
install(c('Seurat',
          "SingleCellExperiment",
          "tidyverse",
          "dplyr",
          "Matrix",
          "scales",
          "RCurl")
)
