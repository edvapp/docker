#!/bin/bash

DATAPATH="/var/lib/"
DATADIR="tftpboot"

GITREPO="http://github.com/edvapp/tftpboot.git"

# clone or pull from repro
if [ -e ${DATAPATH}${DATADIR}/.git ];
then
	echo "pull from " ${GITREPO}
	cd ${DATAPATH}${DATADIR}
	sudo git pull
else
	echo "clone " ${GITREPO}
	cd ${DATAPATH}
	sudo git clone ${GITREPO}
fi
 
cd ${DATAPATH}${DATADIR}
./start.sh
