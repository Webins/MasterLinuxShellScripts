#!/bin/bash
if [ $# -eq 0 ] ; then
echo "Provide a user";
exit 1;
fi
if ( grep "$1" /etc/passwd > /dev/null ); then
 echo "The user "$1" exists"
else
echo "The user doesnt exist"
fi

