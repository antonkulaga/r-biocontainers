FROM quay.io/comp-bio-aging/rbiostudio:master

MAINTAINER antonkulaga@gmail.com

ADD install.R /tmp/

RUN R -f /tmp/install.R && \
    echo "library(BiocInstaller)" > $HOME/.Rprofile

# invalidates cache every 24 hours
ADD http://master.bioconductor.org/todays-date /tmp/