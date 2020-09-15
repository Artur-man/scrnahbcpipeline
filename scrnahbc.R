install.packages("BiocManager", repos='http://cran.us.r-project.org')
library(BiocManager)
install(c('Seurat',
          "SingleCellExperiment",
          "tidyverse",
          "Matrix",
          "scales",
          "RCurl")
)
