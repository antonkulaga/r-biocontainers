to_install_bioconductor <- c("mgcv", "limma", "affy", "lumi", "methylumi", "minfi", "stringr", "GEOquery", "GEOmetadb",
  "ExiMiR", "AgiMicroRna", "doParallel","foreach", "RJSONIO", "org.Bt.eg.db",
  "IlluminaHumanMethylation27k.db", "FDb.InfiniumMethylation.hg19", "hgfocus.db"
                            )
BiocManager::install(to_install_bioconductor)