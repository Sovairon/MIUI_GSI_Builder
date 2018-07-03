FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    python \
    python-setuptools \
    python-pip \
    brotli \
    libz-dev \
    simg2img
    
ADD . / GSI_Builder/
 
RUN GSI_Builder/<SCRIPTFILE.sh>

