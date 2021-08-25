if("BiocInstaller" %in% rownames(installed.packages())) remove.packages("BiocInstaller")
install.packages("BiocManager")

to_install <- c(
  "devtools", #Dev tools installer
  "tidyverse", # The tidyverse is an opinionated collection of R packages designed for data science.
  "shiny", #web
  "here",
  "rstudioapi",
  "caret",
  "plotly", #charts
  "optigrab", "optparse", "docopt" #for CLI
)
install.packages(to_install, dependencies = TRUE)

to_install_bioconductor <- c("Matrix", "KernSmooth", "mgcv", "devtools", "biomaRt", "limma",
                                            "affy", "lumi", "methylumi", "minfi", "stringr", "GEOquery", "GEOmetadb",
                                            "ExiMiR", "AgiMicroRna", "doParallel","foreach", "RJSONIO", "org.Bt.eg.db",
                                            "IlluminaHumanMethylation27k.db", "FDb.InfiniumMethylation.hg19", "hgfocus.db", "VennDiagram"
                            )

BiocManager::install(to_install_bioconductor)