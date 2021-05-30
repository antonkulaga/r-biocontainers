#!/usr/bin/env bash
docker run -e PASSWORD=nopassword -v `pwd`/src:/home/rstudio -p 8787:8787 quay.io/comp-bio-aging/deseq2:latest
