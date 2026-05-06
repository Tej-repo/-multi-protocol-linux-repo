#!/bin/bash

yum install httpd vsftpd nfs-utils createrepo -y

mkdir -p /repo/base
mount /dev/cdrom /mnt
cp -r /mnt/* /repo/base/

createrepo /repo/base/

ln -s /repo/base /var/www/html/repo
ln -s /repo/base /var/ftp/pub/repo

systemctl enable --now httpd
systemctl enable --now vsftpd
systemctl enable --now nfs-server

echo "/repo/base *(rw,sync,no_root_squash)" >> /etc/exports
exportfs -rav
