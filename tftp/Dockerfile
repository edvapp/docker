# Dockerizing tftp: Dockerfile for building tftp images
# Based on ubuntu:14.04, installs tftp

FROM       ubuntu:14.04
MAINTAINER Reinhard Fink reinhard.fink@tsn.at

# Installation:
# Update apt-get sources AND install tftp
RUN apt-get update && apt-get install -y tftpd-hpa

# AND install git
RUN apt-get install -y git

# create Volume for holding data
VOLUME ["/var/lib/tftpboot"]

# Create the tftpboot data directory
RUN cd /var/lib/ && git clone https://github.com/edvapp/tftpboot.git

# Expose port #69 from the container to the host
EXPOSE 69

# Set /var/lib/tftpboot/start.sh as the dockerized entry-point application
ENTRYPOINT ["/var/lib/tftpboot/start.sh"]
