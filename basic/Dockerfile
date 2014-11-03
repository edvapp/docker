# Dockerizing basic image:
# Based on ubuntu:14.04, 
# installs:
# mc
# git
# wget

FROM       ubuntu:14.04
MAINTAINER Reinhard Fink reinhard.fink@tsn.at

# Installation:
# Update apt-get sources and install
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y mc git wget

