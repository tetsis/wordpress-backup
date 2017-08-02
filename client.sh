#!/bin/sh

WEEK=`LANG=en date "+%A"`
FILENAME="wordpress-data-${WEEK}.tar.gz"

mkdir /root/wordpress-backup
cd /root/wordpress-backup
rm ${FILENAME}

sshpass -p (password) scp -o StrictHostKeyChecking=no root@www.tetsis.com:/root/wordpress-backup/${FILENAME} .
