#!/bin/bash
WEBDIR=/var/www/docs/$1
CONFDIR=/etc/apache2/apache2.conf
TEMPLATE=/home/webins/Documentos/EducationExamples/MasteringLinuxShellScripts/scripts/apache2.template
CONFFILE=$CONFDIR/$1.conf
[ -d $CONFDIR ] || mkdir -p $CONFDIR
sed s/dummy-host.example.com/$1/ $TEMPLATE > $CONFDIR/$1.conf
mkdir -p $WEBDIR/$1
echo "New site created for $1" > $WEBDIR/$1/index.html
read -p "Do you want to restrict access to this site? y/n "
[ $REPLY = 'n' ] && exit 0

read -p "Which network do you want to restrict access to: " NETWORK
sed -i "/<\/VirtualHost>/i <Directory $WEBDIT >\
\n 	Order allow, deny\
\n 	Allow from 127.0.0.1\
\n	Allow from $NETWORK\
\n</Directory>" $CONFDIR

#sed -i "/SearchText/i NewText <filename>
