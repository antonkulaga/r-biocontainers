if("BiocInstaller" %in% rownames(installed.packages())) remove.packages("BiocInstaller")
install.packages("BiocManager")

to_install_bioconductor <- c(
    "Matrix", "KernSmooth", "mgcv", "Biostrings", "BiocGenerics", "S4Vectors",
    "devtools", "tximport", "tximeta", #for development, counts import
    "biomaRt", "AnnotationDbi", "ensembldb", "AHEnsDbs", #for annotations
    "missForest", "doParallel", "VennDiagram", "RankProd" #other
)
BiocManager::install(to_install_bioconductor)