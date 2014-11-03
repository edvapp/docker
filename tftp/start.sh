#!/bin/bash

DATAROOT="/data"
DATAPATH="/var/lib/"
DATADIR="tftpboot"

GITREPO="http://github.com/edvapp/tftpboot.git"

# clone or pull from repro
if [ -e ${DATAROOT}${DATAPATH}${DATADIR}/.git ];
then
	echo "pull from " ${GITREPO}
	cd ${DATAROOT}${DATAPATH}${DATADIR}
	sudo git pull
else
	echo "clone " ${GITREPO}
	cd ${DATAROOT}${DATAPATH}
	sudo git clone ${GITREPO}
fi
 
cd ${DATAROOT}${DATAPATH}${DATADIR}
./start.sh
