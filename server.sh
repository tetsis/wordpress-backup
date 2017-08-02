#!/bin/sh

WEEK=`LANG=en date "+%A"`
FILENAME="wordpress-data-${WEEK}.tar.gz"

mkdir /root/wordpress-backup
cd /root/wordpress-backup
rm ${FILENAME}

cp -a /var/www/html/blog .

mysqldump -u root -p(passowd) wordpress > wordpress.dump

tar zcvf wordpress-data-${WEEK}.tar.gz blog wordpress.dump

rm -rf blog
rm -f wordpress.dump
