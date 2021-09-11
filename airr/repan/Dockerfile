FROM quay.io/comp-bio-aging/rbiostudio:latest

MAINTAINER antonkulaga@gmail.com

ADD src/install.R /tmp/
RUN R -f /tmp/install.R
ADD src /home/rstudio/