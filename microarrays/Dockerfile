FROM quay.io/comp-bio-aging/rbiostudio:latest

MAINTAINER antonkulaga@gmail.com

ADD install.R /tmp/

RUN R -f /tmp/install.R

# invalidates cache every 24 hours
ADD http://master.bioconductor.org/todays-date /tmp/