#!/bin/bash
WEBDIR=/var/www/docs
CONFDIR=/etc/apache2/apache2.conf
TEMPLATE=/home/webins/Documentos/EducationExamples/MasteringLinuxShellScripts/scripts/apache2.template

[ -d $CONFDIR ] || mkdir -p $CONFDIR
sed s/dummy-host.example.com/$1/ $TEMPLATE > $CONFDIR/$1.conf
mkdir -p $WEBDIR/$1
echo "New site created for $1" > $WEBDIR/$1/index.html

