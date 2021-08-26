FROM quay.io/comp-bio-aging/rbiostudio:master
MAINTAINER antonkulaga@gmail.com

ADD install.R /tmp/
RUN R -f /tmp/install.R
ADD src /home/rstudio/
RUN chmod +x /home/rstudio/run.R