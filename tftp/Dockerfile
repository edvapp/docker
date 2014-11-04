# Dockerizing tftp: Dockerfile for building tftp images
# Based on ubuntu:14.04, installs tftp

FROM       edvapp/basic:1.0
MAINTAINER Reinhard Fink reinhard.fink@tsn.at

# Installation:
# Update apt-get sources AND install tftp
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y tftpd-hpa

# fill /var/lib/tftpboot with contend
ADD start.sh /bin/start.sh

# Expose port #69 from the container to the host
EXPOSE 69/udp

# start with /bin/start.sh
CMD ["/bin/start.sh"]
