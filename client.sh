#!/bin/sh

HOSTNAME=$1
WEEK=`LANG=en date "+%A"`
FILENAME="wordpress-data-${WEEK}.tar.gz"

mkdir /root/wordpress-backup
cd /root/wordpress-backup
rm ${FILENAME}

scp -o StrictHostKeyChecking=no root@${HOSTNAME}:/root/wordpress-backup/${FILENAME} .
