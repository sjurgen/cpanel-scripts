#! /bin/sh
yum -y install wget
#install epel first
yum  -y install epel-release
#remove network-manager
yum -y remove NetworkManager
#install needfull soft
yum -y  install nano net-tools zip perl git gcc htop make yum-utils kernel-devel kernel-headers mc jwhois unzip httpry libwww-perl perl-Time-HiRes screen dkms libffi libffi-devel  bzip2-devel memcached ; chkconfig memcached on
#install tops
yum -y install iotop iftop htop atop

#fix timezone
mv /etc/localtime /etc/localtime-back ; ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime
#prepare for remote-backup
yum -y install nfs-utils nfs-utils-lib ; service rpcbind start ; service nfs start ; chkconfig nfs on ; chkconfig rpcbind on
#add locale
localedef -c -i ru_RU -f CP1251 ru_RU.CP1251

#NODEJS
cd /usr/local/src ; wget http://nodejs.org/dist/v9.7.1/node-v9.7.1.tar.gz ; tar -zvxf node-v9.7.1.tar.gz ; cd node-v9.7.1 ; ./configure --prefix=/usr/local ; make ; make install ; npm install bower -g ; npm install gulp -g ; npm install -g grunt-cli
#Python
mkdir /usr/src/tmp ; cd /usr/src/tmp ; wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz ; tar -xvpzf Python-3.6.4.tgz ; cd Python-3.6.4 ; ./configure --enable-optimizations ; make ; make altinstall ; wget https://bootstrap.pypa.io/get-pip.py ; python3.6 get-pip.py ; pip3.6 install Django mysqlclient Pillow django-debug-toolbar django-smart-selects python-dateutil PyYAML

#install WHM
cd ; mkdir whm ; cd whm ;  wget -N http://httpupdate.cPanel.net/latest ; sh latest
#install cagefs
cd ; mkdir cloudlinux ; cd cloudlinux ; wget https://repo.cloudlinux.com/cloudlinux/sources/cln/cldeploy ; sh cldeploy -k $CL_KEY
#add letsencrypt
cd /etc/ ; wget http://js.shn-host.ru/licence.json ; mv licence.json letsencrypt-cpanel.licence ; wget https://cpanel.fleetssl.com/static/letsencrypt.repo -O /etc/yum.repos.d/letsencrypt.repo ; yum -y install letsencrypt-cpanel
#install CL packages
yum -y install cagefs governor-mysql lvemanager lve-stats lve ;
yum -y groupinstall alt-php	;
yum -y install alt-python27-devel alt-python-virtualenv ea-apache24-mod-alt-passenger ; yum -y groupinstall alt-python
#CSF

