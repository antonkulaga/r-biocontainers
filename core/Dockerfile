FROM rocker/rstudio:latest

MAINTAINER antonkulaga@gmail.com

USER root
# nuke cache dirs before installing pkgs; tip from Dirk E fixes broken img
RUN  rm -f /var/lib/dpkg/available && rm -rf  /var/cache/apt/*

ENV TZ=Europe/Bucharest
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt upgrade -y
RUN apt install -y --fix-missing software-properties-common python3-software-properties automake nano zip libz-dev tar wget gcc git curl gosu gdb gawk python3-pip libxml2-dev libz-dev libbz2-dev zlib1g-dev libbz2-dev liblzma-dev libgsl-dev libcurl4-openssl-dev gzip tar

RUN pip3 install awscli

RUN mkdir /data && chown -R rstudio /data
RUN chown -R rstudio /home/rstudio/  && ln -s /data /home/rstudio/data

# R stuff
USER rstudio
ADD install.R /tmp/
RUN R -f /tmp/install.R

ENV PATH "$PATH:/home/rstudio/"
WORKDIR /home/rstudio